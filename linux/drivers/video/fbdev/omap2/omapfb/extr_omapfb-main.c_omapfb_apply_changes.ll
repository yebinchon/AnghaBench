; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_apply_changes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_apply_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32, i64, i64 }
%struct.omapfb_info = type { i32, i32*, %struct.TYPE_4__*, i32, %struct.omap_overlay** }
%struct.TYPE_4__ = type { i64, i32 }
%struct.omap_overlay = type { i32, %struct.TYPE_5__*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)* }
%struct.omap_overlay_info = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"apply_changes, fb %d, ovl %d\0A\00", align 1
@OMAP_DSS_OVL_CAP_SCALE = common dso_local global i32 0, align 4
@FB_ROTATE_CW = common dso_local global i32 0, align 4
@FB_ROTATE_CCW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"apply_changes failed\0A\00", align 1
@omapfb_test_pattern = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapfb_apply_changes(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omapfb_info*, align 8
  %8 = alloca %struct.fb_var_screeninfo*, align 8
  %9 = alloca %struct.omap_overlay*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.omap_overlay_info, align 8
  %17 = alloca %struct.omap_overlay_info, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %18)
  store %struct.omapfb_info* %19, %struct.omapfb_info** %7, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  store %struct.fb_var_screeninfo* %21, %struct.fb_var_screeninfo** %8, align 8
  %22 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %23 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %178, %2
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %34 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %181

37:                                               ; preds = %31
  %38 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %39 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %38, i32 0, i32 4
  %40 = load %struct.omap_overlay**, %struct.omap_overlay*** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %40, i64 %42
  %44 = load %struct.omap_overlay*, %struct.omap_overlay** %43, align 8
  store %struct.omap_overlay* %44, %struct.omap_overlay** %9, align 8
  %45 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %46 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %49 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %53 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %37
  %59 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %60 = call i32 @omapfb_overlay_enable(%struct.omap_overlay* %59, i32 0)
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %58
  %64 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %65 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = icmp ne %struct.TYPE_5__* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %70 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %72, align 8
  %74 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %75 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 %73(%struct.TYPE_5__* %76)
  br label %78

78:                                               ; preds = %68, %63, %58
  br label %178

79:                                               ; preds = %37
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %84 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @OMAP_DSS_OVL_CAP_SCALE, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %124

89:                                               ; preds = %82, %79
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %94 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %92, %99
  %101 = srem i32 %100, 4
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @FB_ROTATE_CW, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %89
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @FB_ROTATE_CCW, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105, %89
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %12, align 8
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %13, align 8
  br label %123

116:                                              ; preds = %105
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %12, align 8
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %13, align 8
  br label %123

123:                                              ; preds = %116, %109
  br label %134

124:                                              ; preds = %82
  %125 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %126 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %125, i32 0, i32 2
  %127 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %126, align 8
  %128 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %129 = call i32 %127(%struct.omap_overlay* %128, %struct.omap_overlay_info* %16)
  %130 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %16, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %12, align 8
  %132 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %16, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %13, align 8
  br label %134

134:                                              ; preds = %124, %123
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %148

138:                                              ; preds = %134
  %139 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %140 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %139, i32 0, i32 2
  %141 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %140, align 8
  %142 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %143 = call i32 %141(%struct.omap_overlay* %142, %struct.omap_overlay_info* %17)
  %144 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %17, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %10, align 8
  %146 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %17, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %11, align 8
  br label %148

148:                                              ; preds = %138, %137
  %149 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %150 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i32 @omapfb_setup_overlay(%struct.fb_info* %149, %struct.omap_overlay* %150, i64 %151, i64 %152, i64 %153, i64 %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %182

159:                                              ; preds = %148
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %177, label %162

162:                                              ; preds = %159
  %163 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %164 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %163, i32 0, i32 1
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = icmp ne %struct.TYPE_5__* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %169 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %171, align 8
  %173 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %174 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %173, i32 0, i32 1
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = call i32 %172(%struct.TYPE_5__* %175)
  br label %177

177:                                              ; preds = %167, %162, %159
  br label %178

178:                                              ; preds = %177, %78
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %31

181:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %185

182:                                              ; preds = %158
  %183 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %182, %181
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @omapfb_overlay_enable(%struct.omap_overlay*, i32) #1

declare dso_local i32 @omapfb_setup_overlay(%struct.fb_info*, %struct.omap_overlay*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
