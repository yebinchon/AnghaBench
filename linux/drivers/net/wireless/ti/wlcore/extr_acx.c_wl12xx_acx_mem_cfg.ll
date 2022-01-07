; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_mem_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_mem_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.conf_memory_settings }
%struct.TYPE_3__ = type { i32 }
%struct.conf_memory_settings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_acx_config_memory = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wl1271 mem cfg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_MEM_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wl1271 mem config failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_acx_mem_cfg(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl12xx_acx_config_memory*, align 8
  %4 = alloca %struct.conf_memory_settings*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %6 = load i32, i32* @DEBUG_ACX, align 4
  %7 = call i32 @wl1271_debug(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.wl12xx_acx_config_memory* @kzalloc(i32 40, i32 %8)
  store %struct.wl12xx_acx_config_memory* %9, %struct.wl12xx_acx_config_memory** %3, align 8
  %10 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %11 = icmp ne %struct.wl12xx_acx_config_memory* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store %struct.conf_memory_settings* %18, %struct.conf_memory_settings** %4, align 8
  %19 = load %struct.conf_memory_settings*, %struct.conf_memory_settings** %4, align 8
  %20 = getelementptr inbounds %struct.conf_memory_settings, %struct.conf_memory_settings* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %23 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load %struct.conf_memory_settings*, %struct.conf_memory_settings** %4, align 8
  %25 = getelementptr inbounds %struct.conf_memory_settings, %struct.conf_memory_settings* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %28 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.conf_memory_settings*, %struct.conf_memory_settings** %4, align 8
  %30 = getelementptr inbounds %struct.conf_memory_settings, %struct.conf_memory_settings* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %33 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load %struct.conf_memory_settings*, %struct.conf_memory_settings** %4, align 8
  %35 = getelementptr inbounds %struct.conf_memory_settings, %struct.conf_memory_settings* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %38 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %44 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.conf_memory_settings*, %struct.conf_memory_settings** %4, align 8
  %46 = getelementptr inbounds %struct.conf_memory_settings, %struct.conf_memory_settings* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %49 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.conf_memory_settings*, %struct.conf_memory_settings** %4, align 8
  %51 = getelementptr inbounds %struct.conf_memory_settings, %struct.conf_memory_settings* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %54 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.conf_memory_settings*, %struct.conf_memory_settings** %4, align 8
  %56 = getelementptr inbounds %struct.conf_memory_settings, %struct.conf_memory_settings* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %59 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.conf_memory_settings*, %struct.conf_memory_settings** %4, align 8
  %61 = getelementptr inbounds %struct.conf_memory_settings, %struct.conf_memory_settings* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %64 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %71 = getelementptr inbounds %struct.wl12xx_acx_config_memory, %struct.wl12xx_acx_config_memory* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %73 = load i32, i32* @ACX_MEM_CFG, align 4
  %74 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %75 = call i32 @wl1271_cmd_configure(%struct.wl1271* %72, i32 %73, %struct.wl12xx_acx_config_memory* %74, i32 40)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %15
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %82

81:                                               ; preds = %15
  br label %82

82:                                               ; preds = %81, %78, %12
  %83 = load %struct.wl12xx_acx_config_memory*, %struct.wl12xx_acx_config_memory** %3, align 8
  %84 = call i32 @kfree(%struct.wl12xx_acx_config_memory* %83)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl12xx_acx_config_memory* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl12xx_acx_config_memory*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl12xx_acx_config_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
