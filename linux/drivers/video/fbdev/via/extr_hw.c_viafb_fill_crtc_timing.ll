; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_fill_crtc_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_fill_crtc_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.fb_var_screeninfo = type { i32, i32, i64, i64 }
%struct.via_display_timing = type { i32 }

@IGA1 = common dso_local global i32 0, align 4
@IGA2 = common dso_local global i32 0, align 4
@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@UNICHROME_K400 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_fill_crtc_timing(%struct.fb_var_screeninfo* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.via_display_timing, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  br label %19

15:                                               ; preds = %4
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i64 [ %14, %13 ], [ %18, %15 ]
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  br label %29

25:                                               ; preds = %19
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i64 [ %24, %23 ], [ %28, %25 ]
  %31 = call i32 @var_to_timing(%struct.fb_var_screeninfo* %10, i64 %20, i64 %30)
  %32 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %9, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @IGA1, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @via_set_primary_timing(%struct.via_display_timing* %9)
  br label %45

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IGA2, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @via_set_secondary_timing(%struct.via_display_timing* %9)
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %36
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @viafb_load_fetch_count_reg(i64 %48, i32 %52, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UNICHROME_CLE266, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %45
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UNICHROME_K400, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @viafb_load_FIFO_reg(i32 %71, i64 %74, i64 %77)
  br label %79

79:                                               ; preds = %70, %62, %45
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PICOS2KHZ(i32 %82)
  %84 = mul nsw i32 %83, 1000
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @viafb_set_vclock(i32 %84, i32 %85)
  ret void
}

declare dso_local i32 @var_to_timing(%struct.fb_var_screeninfo*, i64, i64) #1

declare dso_local i32 @via_set_primary_timing(%struct.via_display_timing*) #1

declare dso_local i32 @via_set_secondary_timing(%struct.via_display_timing*) #1

declare dso_local i32 @viafb_load_fetch_count_reg(i64, i32, i32) #1

declare dso_local i32 @viafb_load_FIFO_reg(i32, i64, i64) #1

declare dso_local i32 @viafb_set_vclock(i32, i32) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
