; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_jump_boot_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_jump_boot_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32, i32 }
%struct.ccg_cmd = type { i32, i32, i32, i32 }

@CCGX_RAB_JUMP_TO_BOOT = common dso_local global i32 0, align 4
@TO_BOOT = common dso_local global i32 0, align 4
@TO_ALT_FW = common dso_local global i32 0, align 4
@RESET_PENDING = common dso_local global i32 0, align 4
@RESET_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*, i32)* @ccg_cmd_jump_boot_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_cmd_jump_boot_mode(%struct.ucsi_ccg* %0, i32 %1) #0 {
  %3 = alloca %struct.ucsi_ccg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccg_cmd, align 4
  %6 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @CCGX_RAB_JUMP_TO_BOOT, align 4
  %8 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %5, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @TO_BOOT, align 4
  %13 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @TO_ALT_FW, align 4
  %16 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %5, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %5, i32 0, i32 1
  store i32 100, i32* %19, align 4
  %20 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %21 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @RESET_PENDING, align 4
  %24 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %25 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %28 = call i32 @ccg_send_command(%struct.ucsi_ccg* %27, %struct.ccg_cmd* %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RESET_COMPLETE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %34

33:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* @RESET_PENDING, align 4
  %36 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %37 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %36, i32 0, i32 1
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %3, align 8
  %40 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ccg_send_command(%struct.ucsi_ccg*, %struct.ccg_cmd*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
