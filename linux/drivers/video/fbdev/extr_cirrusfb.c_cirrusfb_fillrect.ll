; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.cirrusfb_info* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.cirrusfb_info = type { i64*, i32 }
%struct.fb_fillrect = type { i64, i32, i32, i32, i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @cirrusfb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cirrusfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.fb_fillrect, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cirrusfb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 4
  %13 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %12, align 8
  store %struct.cirrusfb_info* %13, %struct.cirrusfb_info** %8, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %26 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %29 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %35 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i64 [ %32, %24 ], [ %36, %33 ]
  store i64 %38, i64* %10, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %146

45:                                               ; preds = %37
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %54 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %55 = call i32 @cfb_fillrect(%struct.fb_info* %53, %struct.fb_fillrect* %54)
  br label %146

56:                                               ; preds = %45
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  %61 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %7, align 4
  %65 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %66 = call i32 @memcpy(%struct.fb_fillrect* %5, %struct.fb_fillrect* %65, i32 24)
  %67 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74, %70, %56
  br label %146

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %87, %89
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %94, %96
  %98 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 1
  store i32 %97, i32* %98, align 8
  br label %99

99:                                               ; preds = %93, %85
  %100 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %101, %103
  %105 = load i32, i32* %7, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %108, %110
  %112 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 2
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %99
  %114 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %115 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %122 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sdiv i32 %125, 8
  %127 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %128 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %131 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sdiv i32 %134, 8
  %136 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %137 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %142 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @cirrusfb_RectFill(i32 %116, i32 %120, i32 %126, i32 %129, i32 %135, i32 %138, i64 %139, i64 %140, i32 %144, i32 64)
  br label %146

146:                                              ; preds = %113, %84, %52, %44
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @memcpy(%struct.fb_fillrect*, %struct.fb_fillrect*, i32) #1

declare dso_local i32 @cirrusfb_RectFill(i32, i32, i32, i32, i32, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
