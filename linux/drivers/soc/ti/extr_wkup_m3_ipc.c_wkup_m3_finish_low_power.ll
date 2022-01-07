; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_finish_low_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_finish_low_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wkup_m3_ipc = type { i32, %struct.device* }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IPC_CMD_RESET = common dso_local global i32 0, align 4
@DS_IPC_DEFAULT = common dso_local global i32 0, align 4
@M3_STATE_MSG_FOR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unable to ping CM3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wkup_m3_ipc*)* @wkup_m3_finish_low_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wkup_m3_finish_low_power(%struct.wkup_m3_ipc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wkup_m3_ipc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.wkup_m3_ipc* %0, %struct.wkup_m3_ipc** %3, align 8
  %6 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %3, align 8
  %7 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %6, i32 0, i32 1
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %3, align 8
  %10 = call i32 @wkup_m3_is_available(%struct.wkup_m3_ipc* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %3, align 8
  %17 = load i32, i32* @IPC_CMD_RESET, align 4
  %18 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %16, i32 %17, i32 1)
  %19 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %3, align 8
  %20 = load i32, i32* @DS_IPC_DEFAULT, align 4
  %21 = call i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc* %19, i32 %20, i32 2)
  %22 = load i32, i32* @M3_STATE_MSG_FOR_RESET, align 4
  %23 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %3, align 8
  %24 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %3, align 8
  %26 = call i32 @wkup_m3_ping(%struct.wkup_m3_ipc* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %29, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @wkup_m3_is_available(%struct.wkup_m3_ipc*) #1

declare dso_local i32 @wkup_m3_ctrl_ipc_write(%struct.wkup_m3_ipc*, i32, i32) #1

declare dso_local i32 @wkup_m3_ping(%struct.wkup_m3_ipc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
