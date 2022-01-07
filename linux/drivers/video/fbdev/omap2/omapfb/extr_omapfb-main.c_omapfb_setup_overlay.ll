; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_setup_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_setup_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_fix_screeninfo, %struct.fb_var_screeninfo }
%struct.fb_fix_screeninfo = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32 }
%struct.omap_overlay = type { i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)* }
%struct.omap_overlay_info = type { i32, i32, i32, i32, i64, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.omapfb_info = type { i32, i32*, i64, i32, %struct.TYPE_2__*, i32, %struct.omap_overlay** }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [54 x i8] c"setup_overlay %d, posx %d, posy %d, outw %d, outh %d\0A\00", align 1
@FB_ROTATE_CW = common dso_local global i32 0, align 4
@FB_ROTATE_CCW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"fb_mode_to_dss_mode failed\00", align 1
@OMAP_DSS_ROT_VRFB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"ovl->setup_overlay_info failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"setup_overlay failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapfb_setup_overlay(%struct.fb_info* %0, %struct.omap_overlay* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.omap_overlay*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.omapfb_info*, align 8
  %16 = alloca %struct.fb_var_screeninfo*, align 8
  %17 = alloca %struct.fb_fix_screeninfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.omap_overlay_info, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %8, align 8
  store %struct.omap_overlay* %1, %struct.omap_overlay** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %28 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %27)
  store %struct.omapfb_info* %28, %struct.omapfb_info** %15, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  store %struct.fb_var_screeninfo* %30, %struct.fb_var_screeninfo** %16, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  store %struct.fb_fix_screeninfo* %32, %struct.fb_fix_screeninfo** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %25, align 4
  %36 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %37 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @atomic_read(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  store i32 0, i32* %26, align 4
  br label %45

45:                                               ; preds = %73, %6
  %46 = load i32, i32* %26, align 4
  %47 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %48 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %53 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %54 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %53, i32 0, i32 6
  %55 = load %struct.omap_overlay**, %struct.omap_overlay*** %54, align 8
  %56 = load i32, i32* %26, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %55, i64 %57
  %59 = load %struct.omap_overlay*, %struct.omap_overlay** %58, align 8
  %60 = icmp ne %struct.omap_overlay* %52, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %73

62:                                               ; preds = %51
  %63 = load i32, i32* %25, align 4
  %64 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %65 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %26, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %63, %70
  %72 = srem i32 %71, 4
  store i32 %72, i32* %25, align 4
  br label %76

73:                                               ; preds = %61
  %74 = load i32, i32* %26, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %26, align 4
  br label %45

76:                                               ; preds = %62, %45
  %77 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %78 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %79, i8* %80, i8* %81, i8* %82, i8* %83)
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* @FB_ROTATE_CW, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* @FB_ROTATE_CCW, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88, %76
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %21, align 4
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %22, align 4
  br label %106

99:                                               ; preds = %88
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %21, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %22, align 4
  br label %106

106:                                              ; preds = %99, %92
  %107 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %108 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %107, i32 0, i32 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %116 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %17, align 8
  %117 = load i32, i32* %25, align 4
  %118 = call i32 @omapfb_calc_addr(%struct.omapfb_info* %114, %struct.fb_var_screeninfo* %115, %struct.fb_fix_screeninfo* %116, i32 %117, i32* %19)
  br label %119

119:                                              ; preds = %113, %106
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %121 = call i32 @fb_mode_to_dss_mode(%struct.fb_var_screeninfo* %120, i32* %18)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %208

126:                                              ; preds = %119
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %146 [
    i32 129, label %130
    i32 128, label %130
  ]

130:                                              ; preds = %126, %126
  %131 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %132 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @OMAP_DSS_ROT_VRFB, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %17, align 8
  %138 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 2
  %144 = sdiv i32 %139, %143
  store i32 %144, i32* %23, align 4
  br label %155

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %126, %145
  %147 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %17, align 8
  %148 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 3
  %154 = sdiv i32 %149, %153
  store i32 %154, i32* %23, align 4
  br label %155

155:                                              ; preds = %146, %136
  %156 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %157 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %156, i32 0, i32 1
  %158 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %157, align 8
  %159 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %160 = call i32 %158(%struct.omap_overlay* %159, %struct.omap_overlay_info* %20)
  %161 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %162 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @OMAP_DSS_ROT_VRFB, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  store i32 0, i32* %24, align 4
  br label %171

167:                                              ; preds = %155
  %168 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %169 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %24, align 4
  br label %171

171:                                              ; preds = %167, %166
  %172 = load i32, i32* %19, align 4
  %173 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 11
  store i32 %172, i32* %173, align 8
  %174 = load i32, i32* %23, align 4
  %175 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 0
  store i32 %174, i32* %175, align 8
  %176 = load i32, i32* %21, align 4
  %177 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 1
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %22, align 4
  %179 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 2
  store i32 %178, i32* %179, align 8
  %180 = load i32, i32* %18, align 4
  %181 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 3
  store i32 %180, i32* %181, align 4
  %182 = load %struct.omapfb_info*, %struct.omapfb_info** %15, align 8
  %183 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 4
  store i64 %184, i64* %185, align 8
  %186 = load i32, i32* %25, align 4
  %187 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 5
  store i32 %186, i32* %187, align 8
  %188 = load i32, i32* %24, align 4
  %189 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 6
  store i32 %188, i32* %189, align 4
  %190 = load i8*, i8** %10, align 8
  %191 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 10
  store i8* %190, i8** %191, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 9
  store i8* %192, i8** %193, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 8
  store i8* %194, i8** %195, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %20, i32 0, i32 7
  store i8* %196, i8** %197, align 8
  %198 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %199 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %198, i32 0, i32 0
  %200 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_info*)** %199, align 8
  %201 = load %struct.omap_overlay*, %struct.omap_overlay** %9, align 8
  %202 = call i32 %200(%struct.omap_overlay* %201, %struct.omap_overlay_info* %20)
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %14, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %171
  %206 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %208

207:                                              ; preds = %171
  store i32 0, i32* %7, align 4
  br label %211

208:                                              ; preds = %205, %124
  %209 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %210 = load i32, i32* %14, align 4
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %208, %207
  %212 = load i32, i32* %7, align 4
  ret i32 %212
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @omapfb_calc_addr(%struct.omapfb_info*, %struct.fb_var_screeninfo*, %struct.fb_fix_screeninfo*, i32, i32*) #1

declare dso_local i32 @fb_mode_to_dss_mode(%struct.fb_var_screeninfo*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
