; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_video_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"channel %d xres %u yres %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pck %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"hsw %d hfp %d hbp %d vsw %d vfp %d vbp %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"vsync_level %d hsync_level %d data_pclk_edge %d de_level %d sync_pclk_edge %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"hsync %luHz, vsync %luHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_mgr_set_timings(i32 %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_video_timings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.omap_video_timings, align 8
  store i32 %0, i32* %3, align 4
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %4, align 8
  %10 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %11 = bitcast %struct.omap_video_timings* %9 to i8*
  %12 = bitcast %struct.omap_video_timings* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 72, i1 false)
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %16, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @dispc_mgr_timings_ok(i32 %20, %struct.omap_video_timings* %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 (...) @BUG()
  br label %140

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @dss_mgr_is_lcd(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %124

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 14
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 13
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 12
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @_dispc_mgr_set_lcd_timings(i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52)
  %54 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %55, %57
  %59 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add i32 %58, %60
  %62 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add i32 %61, %63
  store i32 %64, i32* %5, align 4
  %65 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = add i32 %66, %68
  %70 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %69, %71
  %73 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %72, %74
  store i32 %75, i32* %6, align 4
  %76 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %77 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = udiv i32 %78, %79
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %7, align 8
  %82 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %83 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = udiv i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = udiv i32 %86, %87
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %8, align 8
  %90 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %91 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = zext i32 %92 to i64
  %94 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  %95 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %97, i32 %99, i32 %101, i32 %103, i32 %105, i32 %107)
  %109 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 14
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 13
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 12
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 10
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i64 %111, i32 %113, i32 %115, i32 %117, i32 %119)
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %121, i64 %122)
  br label %133

124:                                              ; preds = %25
  %125 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = udiv i32 %130, 2
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %29
  %134 = load i32, i32* %3, align 4
  %135 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dispc_mgr_set_size(i32 %134, i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %133, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DSSDBG(i8*, i64, ...) #2

declare dso_local i32 @dispc_mgr_timings_ok(i32, %struct.omap_video_timings*) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i64 @dss_mgr_is_lcd(i32) #2

declare dso_local i32 @_dispc_mgr_set_lcd_timings(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @dispc_mgr_set_size(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
