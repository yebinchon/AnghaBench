; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_busy_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_busy_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_scu_ipc_dev = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"IPC timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_scu_ipc_dev*)* @busy_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @busy_loop(%struct.intel_scu_ipc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_scu_ipc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %0, %struct.intel_scu_ipc_dev** %3, align 8
  %6 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %7 = call i32 @ipc_read_status(%struct.intel_scu_ipc_dev* %6)
  store i32 %7, i32* %4, align 4
  store i32 100000, i32* %5, align 4
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BIT(i32 0)
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i1 [ false, %8 ], [ %16, %13 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = call i32 @udelay(i32 1)
  %21 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %22 = call i32 @ipc_read_status(%struct.intel_scu_ipc_dev* %21)
  store i32 %22, i32* %4, align 4
  br label %8

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @BIT(i32 0)
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %30 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %23
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @BIT(i32 1)
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @ipc_read_status(%struct.intel_scu_ipc_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
