; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_config_hangover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_config_hangover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conf_hangover_settings }
%struct.conf_hangover_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_acx_config_hangover = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"acx config hangover\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_CONFIG_HANGOVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"acx config hangover failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_acx_config_hangover(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl12xx_acx_config_hangover*, align 8
  %4 = alloca %struct.conf_hangover_settings*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.conf_hangover_settings* %8, %struct.conf_hangover_settings** %4, align 8
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wl12xx_acx_config_hangover* @kzalloc(i32 44, i32 %11)
  store %struct.wl12xx_acx_config_hangover* %12, %struct.wl12xx_acx_config_hangover** %3, align 8
  %13 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %14 = icmp ne %struct.wl12xx_acx_config_hangover* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %85

18:                                               ; preds = %1
  %19 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %20 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %24 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %26 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %29 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %31 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %34 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %36 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %39 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %41 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %44 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %46 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %49 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %51 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %54 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %56 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %59 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %61 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %64 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %66 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %69 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.conf_hangover_settings*, %struct.conf_hangover_settings** %4, align 8
  %71 = getelementptr inbounds %struct.conf_hangover_settings, %struct.conf_hangover_settings* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %74 = getelementptr inbounds %struct.wl12xx_acx_config_hangover, %struct.wl12xx_acx_config_hangover* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %76 = load i32, i32* @ACX_CONFIG_HANGOVER, align 4
  %77 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %78 = call i32 @wl1271_cmd_configure(%struct.wl1271* %75, i32 %76, %struct.wl12xx_acx_config_hangover* %77, i32 44)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %18
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @wl1271_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %85

84:                                               ; preds = %18
  br label %85

85:                                               ; preds = %84, %81, %15
  %86 = load %struct.wl12xx_acx_config_hangover*, %struct.wl12xx_acx_config_hangover** %3, align 8
  %87 = call i32 @kfree(%struct.wl12xx_acx_config_hangover* %86)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl12xx_acx_config_hangover* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl12xx_acx_config_hangover*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl12xx_acx_config_hangover*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
