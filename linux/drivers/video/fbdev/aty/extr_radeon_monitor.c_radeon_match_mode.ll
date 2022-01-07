; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_monitor.c_radeon_match_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_monitor.c_radeon_match_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i64, i64 }
%struct.radeonfb_info = type { i32, i64, i32, %struct.fb_videomode* }
%struct.fb_var_screeninfo = type { i32, i64, i64 }

@vesa_modes = common dso_local global %struct.fb_videomode* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@MT_LCD = common dso_local global i64 0, align 8
@MT_DFP = common dso_local global i64 0, align 8
@FB_ACTIVATE_MASK = common dso_local global i32 0, align 4
@FB_ACTIVATE_TEST = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_match_mode(%struct.radeonfb_info* %0, %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeonfb_info*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca %struct.fb_videomode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fb_videomode*, align 8
  %15 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %5, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %6, align 8
  store %struct.fb_var_screeninfo* %2, %struct.fb_var_screeninfo** %7, align 8
  %16 = load %struct.fb_videomode*, %struct.fb_videomode** @vesa_modes, align 8
  store %struct.fb_videomode* %16, %struct.fb_videomode** %8, align 8
  store i32 34, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @INT_MAX, align 4
  store i32 %17, i32* %13, align 4
  store %struct.fb_videomode* null, %struct.fb_videomode** %14, align 8
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %20 = call i32 @memcpy(%struct.fb_var_screeninfo* %18, %struct.fb_var_screeninfo* %19, i32 24)
  %21 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %22 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %21, i32 0, i32 3
  %23 = load %struct.fb_videomode*, %struct.fb_videomode** %22, align 8
  %24 = icmp ne %struct.fb_videomode* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %27 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %26, i32 0, i32 3
  %28 = load %struct.fb_videomode*, %struct.fb_videomode** %27, align 8
  store %struct.fb_videomode* %28, %struct.fb_videomode** %8, align 8
  %29 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %30 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %34 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MT_LCD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %40 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MT_DFP, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i1 [ true, %32 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FB_ACTIVATE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @FB_ACTIVATE_TEST, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %44
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FB_ACTIVATE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %54, %44
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %67 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %66, i32 0, i32 3
  %68 = load %struct.fb_videomode*, %struct.fb_videomode** %67, align 8
  %69 = icmp ne %struct.fb_videomode* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %72 = load %struct.radeonfb_info*, %struct.radeonfb_info** %5, align 8
  %73 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @fb_validate_mode(%struct.fb_var_screeninfo* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %158

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %65, %62
  store i32 0, i32* %4, align 4
  br label %158

82:                                               ; preds = %54
  br label %83

83:                                               ; preds = %143, %82
  %84 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %85 = icmp ne %struct.fb_videomode* %84, null
  br i1 %85, label %86, label %144

86:                                               ; preds = %83
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %132, %86
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %135

91:                                               ; preds = %87
  %92 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %92, i64 %94
  %96 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %132

103:                                              ; preds = %91
  %104 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %104, i64 %106
  %108 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %132

115:                                              ; preds = %103
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %117 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %117, i64 %119
  %121 = call i32 @radeon_compare_modes(%struct.fb_var_screeninfo* %116, %struct.fb_videomode* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %126, i64 %128
  store %struct.fb_videomode* %129, %struct.fb_videomode** %14, align 8
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %125, %115
  br label %132

132:                                              ; preds = %131, %114, %102
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %87

135:                                              ; preds = %87
  store %struct.fb_videomode* null, %struct.fb_videomode** %8, align 8
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load %struct.fb_videomode*, %struct.fb_videomode** @vesa_modes, align 8
  store %struct.fb_videomode* %142, %struct.fb_videomode** %8, align 8
  store i32 34, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %143

143:                                              ; preds = %141, %138, %135
  br label %83

144:                                              ; preds = %83
  %145 = load %struct.fb_videomode*, %struct.fb_videomode** %14, align 8
  %146 = icmp ne %struct.fb_videomode* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %149 = load %struct.fb_videomode*, %struct.fb_videomode** %14, align 8
  %150 = call i32 @radeon_videomode_to_var(%struct.fb_var_screeninfo* %148, %struct.fb_videomode* %149)
  store i32 0, i32* %4, align 4
  br label %158

151:                                              ; preds = %144
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %158

157:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %154, %147, %81, %77
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @memcpy(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i64 @fb_validate_mode(%struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @radeon_compare_modes(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

declare dso_local i32 @radeon_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
