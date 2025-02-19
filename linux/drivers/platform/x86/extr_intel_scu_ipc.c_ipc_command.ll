; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_ipc_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_ipc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_scu_ipc_dev = type { i32, i32, i64 }

@IPC_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_scu_ipc_dev*, i32)* @ipc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_command(%struct.intel_scu_ipc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_scu_ipc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %0, %struct.intel_scu_ipc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %11 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %10, i32 0, i32 1
  %12 = call i32 @reinit_completion(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IPC_IOC, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %17 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @writel(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %9, %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %3, align 8
  %23 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @writel(i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
