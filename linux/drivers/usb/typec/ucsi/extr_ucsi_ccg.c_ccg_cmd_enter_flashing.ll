; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_enter_flashing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_enter_flashing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32, i32 }
%struct.ccg_cmd = type { i32, i32, i32, i32 }

@CCGX_RAB_ENTER_FLASHING = common dso_local global i32 0, align 4
@FLASH_ENTER_SIG = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"enter flashing failed ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*)* @ccg_cmd_enter_flashing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_cmd_enter_flashing(%struct.ucsi_ccg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucsi_ccg*, align 8
  %4 = alloca %struct.ccg_cmd, align 4
  %5 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %3, align 8
  %6 = load i32, i32* @CCGX_RAB_ENTER_FLASHING, align 4
  %7 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %4, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @FLASH_ENTER_SIG, align 4
  %9 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %4, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %4, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %4, i32 0, i32 1
  store i32 50, i32* %11, align 4
  %12 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %13 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %16 = call i32 @ccg_send_command(%struct.ucsi_ccg* %15, %struct.ccg_cmd* %4)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %18 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CMD_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %25 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ccg_send_command(%struct.ucsi_ccg*, %struct.ccg_cmd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
