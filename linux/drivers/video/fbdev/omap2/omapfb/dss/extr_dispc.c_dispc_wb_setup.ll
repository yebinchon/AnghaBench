; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_wb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_wb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_writeback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_video_timings = type { i32, i32, i64, i64, i64 }

@OMAP_DSS_WB = common dso_local global i32 0, align 4
@OMAP_DSS_OVL_CAP_SCALE = common dso_local global i32 0, align 4
@OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"dispc_wb_setup, pa %x, pa_uv %x, %d,%d -> %dx%d, cmode %x, rot %d, mir %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispc_wb_setup(%struct.omap_dss_writeback_info* %0, i32 %1, %struct.omap_video_timings* %2) #0 {
  %4 = alloca %struct.omap_dss_writeback_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_video_timings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.omap_dss_writeback_info* %0, %struct.omap_dss_writeback_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.omap_video_timings* %2, %struct.omap_video_timings** %6, align 8
  %20 = load i32, i32* @OMAP_DSS_WB, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %22 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %16, align 4
  %24 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %25 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* @OMAP_DSS_OVL_CAP_SCALE, align 4
  %28 = load i32, i32* @OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %18, align 4
  %30 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %31 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %34 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %39 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %42 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %45 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %48 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %51 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DSSDBG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %36, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %57 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %60 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %63 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %68 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %71 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %74 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %77 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %80 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %83 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %86 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @dispc_ovl_setup_common(i32 %54, i32 %55, i32 %58, i32 %61, i32 %64, i32 0, i32 0, i32 %65, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 0, i32 %84, i32 0, i32 %87, i32 0, %struct.omap_video_timings* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %4, align 8
  %92 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %95 [
    i32 132, label %94
    i32 131, label %94
    i32 135, label %94
    i32 130, label %94
    i32 133, label %94
    i32 134, label %94
    i32 128, label %94
    i32 129, label %94
  ]

94:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  store i32 1, i32* %15, align 4
  br label %96

95:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %97)
  %99 = call i32 @dispc_read_reg(i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @FLD_MOD(i32 %100, i32 %101, i32 10, i32 10)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @FLD_MOD(i32 %103, i32 %104, i32 19, i32 19)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %96
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @FLD_MOD(i32 %109, i32 1, i32 26, i32 24)
  store i32 %110, i32* %8, align 4
  br label %114

111:                                              ; preds = %96
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @FLD_MOD(i32 %112, i32 0, i32 26, i32 24)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @dispc_write_reg(i32 %116, i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @DISPC_OVL_ATTRIBUTES2(i32 %122)
  %124 = call i32 @REG_FLD_MOD(i32 %123, i32 0, i32 7, i32 0)
  br label %142

125:                                              ; preds = %114
  %126 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %127 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %130 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %134 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = call i32 @min(i64 %136, i32 255)
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @DISPC_OVL_ATTRIBUTES2(i32 %138)
  %140 = load i32, i32* %19, align 4
  %141 = call i32 @REG_FLD_MOD(i32 %139, i32 %140, i32 7, i32 0)
  br label %142

142:                                              ; preds = %125, %121
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_setup_common(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.omap_video_timings*, i32) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES2(i32) #1

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
