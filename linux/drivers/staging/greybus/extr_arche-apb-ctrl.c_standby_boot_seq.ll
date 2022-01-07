; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_standby_boot_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_standby_boot_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.arche_apb_ctrl_drvdata = type { i64, i64, i64 }

@ARCHE_PLATFORM_STATE_STANDBY = common dso_local global i64 0, align 8
@ARCHE_PLATFORM_STATE_OFF = common dso_local global i64 0, align 8
@ARCHE_PLATFORM_STATE_FW_FLASHING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @standby_boot_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @standby_boot_seq(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.arche_apb_ctrl_drvdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.arche_apb_ctrl_drvdata* %9, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %10 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %11 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %17 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ARCHE_PLATFORM_STATE_STANDBY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %23 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ARCHE_PLATFORM_STATE_OFF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %15
  store i32 0, i32* %2, align 4
  br label %49

28:                                               ; preds = %21
  %29 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %30 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ARCHE_PLATFORM_STATE_FW_FLASHING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %36 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %42 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @devm_gpiod_put(%struct.device* %40, i64 %43)
  br label %45

45:                                               ; preds = %39, %34, %28
  %46 = load i64, i64* @ARCHE_PLATFORM_STATE_STANDBY, align 8
  %47 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %48 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %27, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @devm_gpiod_put(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
