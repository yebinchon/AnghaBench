; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_config_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_config_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Source config of virtual channel %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"vc(%d) busy when trying to config for VP\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FEAT_DSI_DCS_CMD_CONFIG_VC = common dso_local global i32 0, align 4
@DSI_VC_SOURCE_VP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, i32)* @dsi_vc_config_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_config_source(%struct.platform_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsi_data*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %10)
  store %struct.dsi_data* %11, %struct.dsi_data** %8, align 8
  %12 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %13 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DSSDBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dsi_sync_vc(%struct.platform_device* %26, i32 %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dsi_vc_enable(%struct.platform_device* %29, i32 %30, i32 0)
  %32 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @DSI_VC_CTRL(i32 %33)
  %35 = call i64 @wait_for_bit_change(%struct.platform_device* %32, i32 %34, i32 15, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DSSERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %73

42:                                               ; preds = %23
  %43 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @DSI_VC_CTRL(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @REG_FLD_MOD(%struct.platform_device* %43, i32 %45, i32 %46, i32 1, i32 1)
  %48 = load i32, i32* @FEAT_DSI_DCS_CMD_CONFIG_VC, align 4
  %49 = call i64 @dss_has_feature(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @DSI_VC_SOURCE_VP, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @DSI_VC_CTRL(i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @REG_FLD_MOD(%struct.platform_device* %56, i32 %58, i32 %59, i32 30, i32 30)
  br label %61

61:                                               ; preds = %51, %42
  %62 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dsi_vc_enable(%struct.platform_device* %62, i32 %63, i32 1)
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.dsi_data*, %struct.dsi_data** %8, align 8
  %67 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %61, %37, %22
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @dsi_sync_vc(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_vc_enable(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @wait_for_bit_change(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
