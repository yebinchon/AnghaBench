; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_audio_config_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_audio_config_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }
%struct.hdmi_audio_format = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Enter hdmi_wp_audio_config_format\0A\00", align 1
@HDMI_WP_AUDIO_CFG = common dso_local global i32 0, align 4
@OMAPDSS_VER_OMAP4430_ES1 = common dso_local global i64 0, align 8
@OMAPDSS_VER_OMAP4430_ES2 = common dso_local global i64 0, align 8
@OMAPDSS_VER_OMAP4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_audio_config_format(%struct.hdmi_wp_data* %0, %struct.hdmi_audio_format* %1) #0 {
  %3 = alloca %struct.hdmi_wp_data*, align 8
  %4 = alloca %struct.hdmi_audio_format*, align 8
  %5 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %3, align 8
  store %struct.hdmi_audio_format* %1, %struct.hdmi_audio_format** %4, align 8
  %6 = call i32 @DSSDBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %8 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HDMI_WP_AUDIO_CFG, align 4
  %11 = call i32 @hdmi_read_reg(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = call i64 (...) @omapdss_get_version()
  %13 = load i64, i64* @OMAPDSS_VER_OMAP4430_ES1, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = call i64 (...) @omapdss_get_version()
  %17 = load i64, i64* @OMAPDSS_VER_OMAP4430_ES2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = call i64 (...) @omapdss_get_version()
  %21 = load i64, i64* @OMAPDSS_VER_OMAP4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19, %15, %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.hdmi_audio_format*, %struct.hdmi_audio_format** %4, align 8
  %26 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FLD_MOD(i32 %24, i32 %27, i32 26, i32 24)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.hdmi_audio_format*, %struct.hdmi_audio_format** %4, align 8
  %31 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @FLD_MOD(i32 %29, i32 %32, i32 23, i32 16)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %23, %19
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.hdmi_audio_format*, %struct.hdmi_audio_format** %4, align 8
  %37 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @FLD_MOD(i32 %35, i32 %38, i32 5, i32 5)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.hdmi_audio_format*, %struct.hdmi_audio_format** %4, align 8
  %42 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @FLD_MOD(i32 %40, i32 %43, i32 4, i32 4)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.hdmi_audio_format*, %struct.hdmi_audio_format** %4, align 8
  %47 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @FLD_MOD(i32 %45, i32 %48, i32 3, i32 3)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.hdmi_audio_format*, %struct.hdmi_audio_format** %4, align 8
  %52 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @FLD_MOD(i32 %50, i32 %53, i32 2, i32 2)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.hdmi_audio_format*, %struct.hdmi_audio_format** %4, align 8
  %57 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @FLD_MOD(i32 %55, i32 %58, i32 1, i32 1)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.hdmi_audio_format*, %struct.hdmi_audio_format** %4, align 8
  %62 = getelementptr inbounds %struct.hdmi_audio_format, %struct.hdmi_audio_format* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @FLD_MOD(i32 %60, i32 %63, i32 0, i32 0)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %66 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HDMI_WP_AUDIO_CFG, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @hdmi_write_reg(i32 %67, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i64 @omapdss_get_version(...) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
