; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_port_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_port_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32, i32, i32 }
%struct.ccg_cmd = type { i32, i32, i32, i32 }

@CCGX_RAB_PDPORT_ENABLE = common dso_local global i32 0, align 4
@PDPORT_1 = common dso_local global i32 0, align 4
@PDPORT_2 = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"port control failed ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*, i32)* @ccg_cmd_port_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_cmd_port_control(%struct.ucsi_ccg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucsi_ccg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccg_cmd, align 4
  %7 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @CCGX_RAB_PDPORT_ENABLE, align 4
  %9 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %6, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %14 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @PDPORT_1, align 4
  br label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @PDPORT_1, align 4
  %21 = load i32, i32* @PDPORT_2, align 4
  %22 = or i32 %20, %21
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi i32 [ %18, %17 ], [ %22, %19 ]
  %25 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  br label %28

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %6, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %6, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %6, i32 0, i32 2
  store i32 10, i32* %30, align 4
  %31 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %32 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %31, i32 0, i32 2
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %35 = call i32 @ccg_send_command(%struct.ucsi_ccg* %34, %struct.ccg_cmd* %6)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %37 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %36, i32 0, i32 2
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @CMD_SUCCESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %44 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i32, i32* %3, align 4
  ret i32 %51
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
