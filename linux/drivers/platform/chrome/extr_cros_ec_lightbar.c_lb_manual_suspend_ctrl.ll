; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_lb_manual_suspend_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_lb_manual_suspend_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_dev = type { i32 }
%struct.ec_params_lightbar = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cros_ec_command = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@LIGHTBAR_CMD_MANUAL_SUSPEND_CTRL = common dso_local global i32 0, align 4
@EC_RES_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_dev*, i32)* @lb_manual_suspend_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_manual_suspend_ctrl(%struct.cros_ec_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ec_params_lightbar*, align 8
  %7 = alloca %struct.cros_ec_command*, align 8
  %8 = alloca i32, align 4
  store %struct.cros_ec_dev* %0, %struct.cros_ec_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %10 = call %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev* %9)
  store %struct.cros_ec_command* %10, %struct.cros_ec_command** %7, align 8
  %11 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %12 = icmp ne %struct.cros_ec_command* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %18 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ec_params_lightbar*
  store %struct.ec_params_lightbar* %20, %struct.ec_params_lightbar** %6, align 8
  %21 = load i32, i32* @LIGHTBAR_CMD_MANUAL_SUSPEND_CTRL, align 4
  %22 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %6, align 8
  %23 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %6, align 8
  %26 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = call i32 (...) @lb_throttle()
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %51

32:                                               ; preds = %16
  %33 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %34 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %37 = call i32 @cros_ec_cmd_xfer(i32 %35, %struct.cros_ec_command* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %51

41:                                               ; preds = %32
  %42 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %43 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EC_RES_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %51

50:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %47, %40, %31
  %52 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %53 = call i32 @kfree(%struct.cros_ec_command* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev*) #1

declare dso_local i32 @lb_throttle(...) #1

declare dso_local i32 @cros_ec_cmd_xfer(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
