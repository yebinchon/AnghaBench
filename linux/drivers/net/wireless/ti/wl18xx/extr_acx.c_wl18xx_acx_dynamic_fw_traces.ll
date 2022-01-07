; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_dynamic_fw_traces.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_dynamic_fw_traces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.acx_dynamic_fw_traces_cfg = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"acx dynamic fw traces config %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_DYNAMIC_TRACES_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"acx config dynamic fw traces failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_acx_dynamic_fw_traces(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.acx_dynamic_fw_traces_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @wl1271_debug(i32 %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.acx_dynamic_fw_traces_cfg* @kzalloc(i32 4, i32 %10)
  store %struct.acx_dynamic_fw_traces_cfg* %11, %struct.acx_dynamic_fw_traces_cfg** %3, align 8
  %12 = load %struct.acx_dynamic_fw_traces_cfg*, %struct.acx_dynamic_fw_traces_cfg** %3, align 8
  %13 = icmp ne %struct.acx_dynamic_fw_traces_cfg* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_le32(i32 %20)
  %22 = load %struct.acx_dynamic_fw_traces_cfg*, %struct.acx_dynamic_fw_traces_cfg** %3, align 8
  %23 = getelementptr inbounds %struct.acx_dynamic_fw_traces_cfg, %struct.acx_dynamic_fw_traces_cfg* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %25 = load i32, i32* @ACX_DYNAMIC_TRACES_CFG, align 4
  %26 = load %struct.acx_dynamic_fw_traces_cfg*, %struct.acx_dynamic_fw_traces_cfg** %3, align 8
  %27 = call i32 @wl1271_cmd_configure(%struct.wl1271* %24, i32 %25, %struct.acx_dynamic_fw_traces_cfg* %26, i32 4)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @wl1271_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %34

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %30, %14
  %35 = load %struct.acx_dynamic_fw_traces_cfg*, %struct.acx_dynamic_fw_traces_cfg** %3, align 8
  %36 = call i32 @kfree(%struct.acx_dynamic_fw_traces_cfg* %35)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.acx_dynamic_fw_traces_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_dynamic_fw_traces_cfg*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_dynamic_fw_traces_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
