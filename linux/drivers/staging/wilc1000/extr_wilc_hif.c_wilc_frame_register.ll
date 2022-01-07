; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_frame_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_frame_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i32*, i32, i32 }
%struct.wilc_reg_frame = type { i32, i32, i32 }

@WID_REGISTER_FRAME = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i32 0, align 4
@WILC_FW_ACTION_FRM_IDX = common dso_local global i32 0, align 4
@WILC_FW_PROBE_REQ_IDX = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to frame register\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wilc_frame_register(%struct.wilc_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wid, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wilc_reg_frame, align 4
  store %struct.wilc_vif* %0, %struct.wilc_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @WID_REGISTER_FRAME, align 4
  %11 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @WID_STR, align 4
  %13 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 0
  store i32 12, i32* %14, align 8
  %15 = bitcast %struct.wilc_reg_frame* %9 to i32*
  %16 = getelementptr inbounds %struct.wid, %struct.wid* %7, i32 0, i32 1
  store i32* %15, i32** %16, align 8
  %17 = call i32 @memset(%struct.wilc_reg_frame* %9, i32 0, i32 12)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.wilc_reg_frame, %struct.wilc_reg_frame* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 128, label %24
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @WILC_FW_ACTION_FRM_IDX, align 4
  %23 = getelementptr inbounds %struct.wilc_reg_frame, %struct.wilc_reg_frame* %9, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @WILC_FW_PROBE_REQ_IDX, align 4
  %26 = getelementptr inbounds %struct.wilc_reg_frame, %struct.wilc_reg_frame* %9, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %24, %21
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = getelementptr inbounds %struct.wilc_reg_frame, %struct.wilc_reg_frame* %9, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %33 = load i32, i32* @WILC_SET_CFG, align 4
  %34 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %32, i32 %33, %struct.wid* %7, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %39 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netdev_err(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %28
  ret void
}

declare dso_local i32 @memset(%struct.wilc_reg_frame*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
