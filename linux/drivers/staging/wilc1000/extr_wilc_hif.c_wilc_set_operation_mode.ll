; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_set_operation_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_set_operation_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i32*, i32, i32 }
%struct.wilc_drv_handler = type { i32, i32 }

@WID_SET_OPERATION_MODE = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to set driver handler\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_set_operation_mode(%struct.wilc_vif* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wid, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wilc_drv_handler, align 4
  store %struct.wilc_vif* %0, %struct.wilc_vif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @WID_SET_OPERATION_MODE, align 4
  %13 = getelementptr inbounds %struct.wid, %struct.wid* %9, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @WID_STR, align 4
  %15 = getelementptr inbounds %struct.wid, %struct.wid* %9, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.wid, %struct.wid* %9, i32 0, i32 0
  store i32 8, i32* %16, align 8
  %17 = bitcast %struct.wilc_drv_handler* %11 to i32*
  %18 = getelementptr inbounds %struct.wid, %struct.wid* %9, i32 0, i32 1
  store i32* %17, i32** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds %struct.wilc_drv_handler, %struct.wilc_drv_handler* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 1
  %25 = or i32 %22, %24
  %26 = getelementptr inbounds %struct.wilc_drv_handler, %struct.wilc_drv_handler* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %28 = load i32, i32* @WILC_SET_CFG, align 4
  %29 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %27, i32 %28, %struct.wid* %9, i32 1)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %34 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netdev_err(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %4
  %38 = load i32, i32* %10, align 4
  ret i32 %38
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
