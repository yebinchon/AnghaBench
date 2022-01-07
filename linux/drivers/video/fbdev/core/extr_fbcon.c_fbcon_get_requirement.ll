; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_get_requirement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_get_requirement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fbcon_display = type { i32, i64 }
%struct.fb_info = type { i64 }
%struct.fb_blit_caps = type { i32, i32, i32, i64 }

@first_fb_vc = common dso_local global i32 0, align 4
@last_fb_vc = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@fg_console = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbcon_get_requirement(%struct.fb_info* %0, %struct.fb_blit_caps* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_blit_caps*, align 8
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca %struct.fbcon_display*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_blit_caps* %1, %struct.fb_blit_caps** %4, align 8
  %9 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %4, align 8
  %10 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %96

13:                                               ; preds = %2
  %14 = load i32, i32* @first_fb_vc, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %92, %13
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @last_fb_vc, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %95

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.vc_data*, %struct.vc_data** %24, align 8
  store %struct.vc_data* %25, %struct.vc_data** %5, align 8
  %26 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %27 = icmp ne %struct.vc_data* %26, null
  br i1 %27, label %28, label %91

28:                                               ; preds = %19
  %29 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KD_TEXT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %91

34:                                               ; preds = %28
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** @con2fb_map, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %91

44:                                               ; preds = %34
  %45 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %45, i64 %47
  store %struct.fbcon_display* %48, %struct.fbcon_display** %6, align 8
  %49 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = shl i32 1, %53
  %55 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %4, align 8
  %56 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = shl i32 1, %63
  %65 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %4, align 8
  %66 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %70 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %44
  %74 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %75 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @FNTCHARCNT(i32 %76)
  br label %79

78:                                               ; preds = %44
  br label %79

79:                                               ; preds = %78, %73
  %80 = phi i32 [ %77, %73 ], [ 256, %78 ]
  store i32 %80, i32* %8, align 4
  %81 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %4, align 8
  %82 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %4, align 8
  %89 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %34, %28, %19
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %15

95:                                               ; preds = %15
  br label %154

96:                                               ; preds = %2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %98 = load i64, i64* @fg_console, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.vc_data*, %struct.vc_data** %100, align 8
  store %struct.vc_data* %101, %struct.vc_data** %5, align 8
  %102 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %103 = icmp ne %struct.vc_data* %102, null
  br i1 %103, label %104, label %153

104:                                              ; preds = %96
  %105 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %106 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @KD_TEXT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %153

110:                                              ; preds = %104
  %111 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** @con2fb_map, align 8
  %115 = load i64, i64* @fg_console, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %113, %117
  br i1 %118, label %119, label %153

119:                                              ; preds = %110
  %120 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %121 = load i64, i64* @fg_console, align 8
  %122 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %120, i64 %121
  store %struct.fbcon_display* %122, %struct.fbcon_display** %6, align 8
  %123 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %124 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = shl i32 1, %127
  %129 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %4, align 8
  %130 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %132 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 1
  %136 = shl i32 1, %135
  %137 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %4, align 8
  %138 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %140 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %119
  %144 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %145 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @FNTCHARCNT(i32 %146)
  br label %149

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %148, %143
  %150 = phi i32 [ %147, %143 ], [ 256, %148 ]
  %151 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %4, align 8
  %152 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %149, %110, %104, %96
  br label %154

154:                                              ; preds = %153, %95
  ret void
}

declare dso_local i32 @FNTCHARCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
