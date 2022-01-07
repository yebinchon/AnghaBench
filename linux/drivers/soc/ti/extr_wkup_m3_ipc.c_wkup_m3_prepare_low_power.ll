; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_prepare_low_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_prepare_low_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wkup_m3_ipc = type { i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IPC_CMD_DS0 = common dso_local global i32 0, align 4
@IPC_CMD_STANDBY = common dso_local global i32 0, align 4
@IPC_CMD_IDLE = common dso_local global i32 0, align 4
@DS_IPC_DEFAULT = common dso_local global i32 0, align 4
@M3_STATE_MSG_FOR_LP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unable to ping CM3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wkup_m3_ipc*, i32)* @wkup_m3_prepare_low_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wkup_m3_prepare_low_power(%struct.wkup_m3_ipc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wkup_m3_ipc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wkup_m3_ipc* %0, %struct.wkup_m3_ipc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %10 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %9, i32 0, i32 3
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %13 = call i32 @wkup_m3_is_available(%struct.wkup_m3_ipc* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %26 [
    i32 130, label %20
    i32 128, label %22
    i32 129, label %24
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @IPC_CMD_DS0, align 4
  store i32 %21, i32* %7, align 4
  br label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @IPC_CMD_STANDBY, align 4
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @IPC_CMD_IDLE, align 4
  store i32 %25, i32* %7, align 4
  br label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %75

27:                                               ; preds = %24, %22, %20
  %28 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %29 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %30 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %28, i32 %31, i32 0)
  %33 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %33, i32 %34, i32 1)
  %36 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %37 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %38 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %36, i32 %39, i32 4)
  %41 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %42 = load i32, i32* @DS_IPC_DEFAULT, align 4
  %43 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %41, i32 %42, i32 2)
  %44 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %45 = load i32, i32* @DS_IPC_DEFAULT, align 4
  %46 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %44, i32 %45, i32 3)
  %47 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %48 = load i32, i32* @DS_IPC_DEFAULT, align 4
  %49 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %47, i32 %48, i32 5)
  %50 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %51 = load i32, i32* @DS_IPC_DEFAULT, align 4
  %52 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %50, i32 %51, i32 6)
  %53 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %54 = load i32, i32* @DS_IPC_DEFAULT, align 4
  %55 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %53, i32 %54, i32 7)
  %56 = load i32, i32* @M3_STATE_MSG_FOR_LP, align 4
  %57 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %58 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 129
  br i1 %60, label %61, label %64

61:                                               ; preds = %27
  %62 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %63 = call i32 @wkup_m3_ping_noirq(%struct.wkup_m3_ipc* %62)
  store i32 %63, i32* %8, align 4
  br label %67

64:                                               ; preds = %27
  %65 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %4, align 8
  %66 = call i32 @wkup_m3_ping(%struct.wkup_m3_ipc* %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %70, %26, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @wkup_m3_is_available(%struct.wkup_m3_ipc*) #1

declare dso_local i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc*, i32, i32) #1

declare dso_local i32 @wkup_m3_ping_noirq(%struct.wkup_m3_ipc*) #1

declare dso_local i32 @wkup_m3_ping(%struct.wkup_m3_ipc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
