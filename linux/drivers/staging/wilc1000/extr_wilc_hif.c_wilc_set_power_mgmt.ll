; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_set_power_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_set_power_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i32*, i32 }

@WILC_FW_MIN_FAST_PS = common dso_local global i32 0, align 4
@WILC_FW_NO_POWERSAVE = common dso_local global i32 0, align 4
@WID_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to send power management\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_set_power_mgmt(%struct.wilc_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wid, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wilc_vif* %0, %struct.wilc_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @WILC_FW_MIN_FAST_PS, align 4
  store i32 %13, i32* %9, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @WILC_FW_NO_POWERSAVE, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* @WID_POWER_MANAGEMENT, align 4
  %18 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 1
  store i32* %9, i32** %19, align 8
  %20 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %22 = load i32, i32* @WILC_SET_CFG, align 4
  %23 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %21, i32 %22, %struct.wid* %7, i32 1)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %28 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @netdev_err(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %16
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
