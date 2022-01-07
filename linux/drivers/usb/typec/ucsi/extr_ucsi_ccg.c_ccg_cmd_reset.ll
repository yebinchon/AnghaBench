; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32, i32 }
%struct.ccg_cmd = type { i32, i32, i32, i32 }

@CCGX_RAB_RESET_REQ = common dso_local global i32 0, align 4
@RESET_SIG = common dso_local global i32 0, align 4
@CMD_RESET_DEV = common dso_local global i32 0, align 4
@RESET_PENDING = common dso_local global i32 0, align 4
@RESET_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*)* @ccg_cmd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_cmd_reset(%struct.ucsi_ccg* %0) #0 {
  %2 = alloca %struct.ucsi_ccg*, align 8
  %3 = alloca %struct.ccg_cmd, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %2, align 8
  %6 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %3, i32 0, i32 3
  store i32* %6, i32** %4, align 8
  %7 = load i32, i32* @CCGX_RAB_RESET_REQ, align 4
  %8 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @RESET_SIG, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @CMD_RESET_DEV, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %3, i32 0, i32 0
  store i32 2, i32* %15, align 4
  %16 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %3, i32 0, i32 1
  store i32 5000, i32* %16, align 4
  %17 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %18 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @RESET_PENDING, align 4
  %21 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %22 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %21, i32 0, i32 1
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %25 = call i32 @ccg_send_command(%struct.ucsi_ccg* %24, %struct.ccg_cmd* %3)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RESET_COMPLETE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* @RESET_PENDING, align 4
  %33 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %34 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %33, i32 0, i32 1
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %2, align 8
  %37 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
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
