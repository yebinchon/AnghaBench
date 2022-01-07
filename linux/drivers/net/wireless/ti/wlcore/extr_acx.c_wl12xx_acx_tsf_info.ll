; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_tsf_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_tsf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl12xx_acx_fw_tsf_information = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_TSF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"acx tsf info interrogate failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_acx_tsf_info(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wl12xx_acx_fw_tsf_information*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.wl12xx_acx_fw_tsf_information* @kzalloc(i32 12, i32 %9)
  store %struct.wl12xx_acx_fw_tsf_information* %10, %struct.wl12xx_acx_fw_tsf_information** %7, align 8
  %11 = load %struct.wl12xx_acx_fw_tsf_information*, %struct.wl12xx_acx_fw_tsf_information** %7, align 8
  %12 = icmp ne %struct.wl12xx_acx_fw_tsf_information* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %18 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wl12xx_acx_fw_tsf_information*, %struct.wl12xx_acx_fw_tsf_information** %7, align 8
  %21 = getelementptr inbounds %struct.wl12xx_acx_fw_tsf_information, %struct.wl12xx_acx_fw_tsf_information* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %23 = load i32, i32* @ACX_TSF_INFO, align 4
  %24 = load %struct.wl12xx_acx_fw_tsf_information*, %struct.wl12xx_acx_fw_tsf_information** %7, align 8
  %25 = call i32 @wl1271_cmd_interrogate(%struct.wl1271* %22, i32 %23, %struct.wl12xx_acx_fw_tsf_information* %24, i32 4, i32 12)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = call i32 @wl1271_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %42

30:                                               ; preds = %16
  %31 = load %struct.wl12xx_acx_fw_tsf_information*, %struct.wl12xx_acx_fw_tsf_information** %7, align 8
  %32 = getelementptr inbounds %struct.wl12xx_acx_fw_tsf_information, %struct.wl12xx_acx_fw_tsf_information* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load %struct.wl12xx_acx_fw_tsf_information*, %struct.wl12xx_acx_fw_tsf_information** %7, align 8
  %36 = getelementptr inbounds %struct.wl12xx_acx_fw_tsf_information, %struct.wl12xx_acx_fw_tsf_information* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = shl i32 %38, 32
  %40 = or i32 %34, %39
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %30, %28, %13
  %43 = load %struct.wl12xx_acx_fw_tsf_information*, %struct.wl12xx_acx_fw_tsf_information** %7, align 8
  %44 = call i32 @kfree(%struct.wl12xx_acx_fw_tsf_information* %43)
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local %struct.wl12xx_acx_fw_tsf_information* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_interrogate(%struct.wl1271*, i32, %struct.wl12xx_acx_fw_tsf_information*, i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.wl12xx_acx_fw_tsf_information*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
