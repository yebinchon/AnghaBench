; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_initial_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_initial_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Initial config of virtual channel %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"VC(%d) busy when trying to configure it!\0A\00", align 1
@FEAT_DSI_VC_OCP_WIDTH = common dso_local global i32 0, align 4
@DSI_VC_SOURCE_L4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @dsi_vc_initial_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_vc_initial_config(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsi_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %7)
  store %struct.dsi_data* %8, %struct.dsi_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @DSSDBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @DSI_VC_CTRL(i32 %12)
  %14 = call i32 @dsi_read_reg(%struct.platform_device* %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @FLD_GET(i32 %15, i32 15, i32 15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @DSSERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @FLD_MOD(i32 %22, i32 0, i32 1, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @FLD_MOD(i32 %24, i32 0, i32 2, i32 2)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @FLD_MOD(i32 %26, i32 0, i32 3, i32 3)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @FLD_MOD(i32 %28, i32 0, i32 4, i32 4)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @FLD_MOD(i32 %30, i32 1, i32 7, i32 7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @FLD_MOD(i32 %32, i32 1, i32 8, i32 8)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @FLD_MOD(i32 %34, i32 0, i32 9, i32 9)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @FEAT_DSI_VC_OCP_WIDTH, align 4
  %37 = call i64 @dss_has_feature(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @FLD_MOD(i32 %40, i32 3, i32 11, i32 10)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %21
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @FLD_MOD(i32 %43, i32 4, i32 29, i32 27)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @FLD_MOD(i32 %45, i32 4, i32 23, i32 21)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @DSI_VC_CTRL(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dsi_write_reg(%struct.platform_device* %47, i32 %49, i32 %50)
  %52 = load i32, i32* @DSI_VC_SOURCE_L4, align 4
  %53 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %54 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i64 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
