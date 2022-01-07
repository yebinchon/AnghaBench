; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_ipc_wait_for_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_ipc_wait_for_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_scu_ipc_dev = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"IPC timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_scu_ipc_dev*)* @ipc_wait_for_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_wait_for_interrupt(%struct.intel_scu_ipc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_scu_ipc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %0, %struct.intel_scu_ipc_dev** %3, align 8
  %5 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %5, i32 0, i32 1
  %7 = load i32, i32* @HZ, align 4
  %8 = mul nsw i32 3, %7
  %9 = call i32 @wait_for_completion_timeout(i32* %6, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ETIMEDOUT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %20 = call i32 @ipc_read_status(%struct.intel_scu_ipc_dev* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @BIT(i32 1)
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ipc_read_status(%struct.intel_scu_ipc_dev*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
