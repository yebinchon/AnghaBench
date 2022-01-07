; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getmonspecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getmonspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }
%struct.uvesafb_ktask = type { i32 }
%struct.fb_info = type { i32, %struct.fb_var_screeninfo, %struct.uvesafb_par* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, %struct.fb_videomode*, i32, i32, i64, i64 }
%struct.uvesafb_par = type { i32, i32, %struct.vbe_mode_ib* }
%struct.vbe_mode_ib = type { i32, i32 }

@maxclk = common dso_local global i32 0, align 4
@maxvf = common dso_local global i64 0, align 8
@maxhf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"monitor limits: vf = %d Hz, hf = %d kHz, clk = %d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"no monitor limits have been set, default refresh rate will be used\0A\00", align 1
@FB_VSYNCTIMINGS = common dso_local global i32 0, align 4
@FB_IGNOREMON = common dso_local global i32 0, align 4
@VESA_MODEDB_SIZE = common dso_local global i32 0, align 4
@vesa_modes = common dso_local global %struct.fb_videomode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvesafb_ktask*, %struct.fb_info*)* @uvesafb_vbe_getmonspecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvesafb_vbe_getmonspecs(%struct.uvesafb_ktask* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.uvesafb_ktask*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.uvesafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_var_screeninfo, align 8
  %8 = alloca %struct.vbe_mode_ib*, align 8
  %9 = alloca %struct.fb_videomode, align 4
  store %struct.uvesafb_ktask* %0, %struct.uvesafb_ktask** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.uvesafb_par*, %struct.uvesafb_par** %11, align 8
  store %struct.uvesafb_par* %12, %struct.uvesafb_par** %5, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = call i32 @memset(%struct.fb_var_screeninfo* %14, i32 0, i32 56)
  %16 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = call i64 @uvesafb_vbe_getedid(%struct.uvesafb_ktask* %16, %struct.fb_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %25 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @maxclk, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @maxclk, align 4
  %31 = mul nsw i32 %30, 1000000
  %32 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i64, i64* @maxvf, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i64, i64* @maxvf, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 9
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @maxhf, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @maxhf, align 4
  %48 = mul nsw i32 %47, 1000
  %49 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  br label %52

52:                                               ; preds = %46, %43
  %53 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = load i32, i32* @maxclk, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load i64, i64* @maxvf, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load i32, i32* @maxhf, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 10
  store i64 0, i64* %70, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 3
  store i32 60, i32* %73, align 4
  %74 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 4
  store i32 29000, i32* %76, align 8
  %77 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %81 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %67, %64, %61, %58, %52
  %83 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 9
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %96, 1000
  %98 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 1000000
  %103 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %92, i32 %97, i32 %102)
  br label %106

104:                                              ; preds = %82
  %105 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %88
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %138, %106
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %110 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %107
  %114 = load %struct.uvesafb_par*, %struct.uvesafb_par** %5, align 8
  %115 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %114, i32 0, i32 2
  %116 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %116, i64 %118
  store %struct.vbe_mode_ib* %119, %struct.vbe_mode_ib** %8, align 8
  %120 = call i32 @memset(%struct.fb_var_screeninfo* %7, i32 0, i32 56)
  %121 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %8, align 8
  %122 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 8
  store i32 %123, i32* %124, align 4
  %125 = load %struct.vbe_mode_ib*, %struct.vbe_mode_ib** %8, align 8
  %126 = getelementptr inbounds %struct.vbe_mode_ib, %struct.vbe_mode_ib* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 7
  store i32 %127, i32* %128, align 8
  %129 = load i32, i32* @FB_VSYNCTIMINGS, align 4
  %130 = load i32, i32* @FB_IGNOREMON, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %133 = call i32 @fb_get_mode(i32 %131, i32 60, %struct.fb_var_screeninfo* %7, %struct.fb_info* %132)
  %134 = call i32 @fb_var_to_videomode(%struct.fb_videomode* %9, %struct.fb_var_screeninfo* %7)
  %135 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %136 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %135, i32 0, i32 0
  %137 = call i32 @fb_add_videomode(%struct.fb_videomode* %9, i32* %136)
  br label %138

138:                                              ; preds = %113
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %107

141:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %163, %141
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @VESA_MODEDB_SIZE, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %142
  %147 = load %struct.fb_videomode*, %struct.fb_videomode** @vesa_modes, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %147, i64 %149
  %151 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %152 = call i64 @uvesafb_is_valid_mode(%struct.fb_videomode* %150, %struct.fb_info* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %146
  %155 = load %struct.fb_videomode*, %struct.fb_videomode** @vesa_modes, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %155, i64 %157
  %159 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %160 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %159, i32 0, i32 0
  %161 = call i32 @fb_add_videomode(%struct.fb_videomode* %158, i32* %160)
  br label %162

162:                                              ; preds = %154, %146
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %142

166:                                              ; preds = %142
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %197, %166
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %170 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %168, %172
  br i1 %173, label %174, label %200

174:                                              ; preds = %167
  %175 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %176 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %176, i32 0, i32 6
  %178 = load %struct.fb_videomode*, %struct.fb_videomode** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %178, i64 %180
  %182 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %183 = call i64 @uvesafb_is_valid_mode(%struct.fb_videomode* %181, %struct.fb_info* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %174
  %186 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %187, i32 0, i32 6
  %189 = load %struct.fb_videomode*, %struct.fb_videomode** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %189, i64 %191
  %193 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %194 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %193, i32 0, i32 0
  %195 = call i32 @fb_add_videomode(%struct.fb_videomode* %192, i32* %194)
  br label %196

196:                                              ; preds = %185, %174
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %167

200:                                              ; preds = %167
  ret void
}

declare dso_local i32 @memset(%struct.fb_var_screeninfo*, i32, i32) #1

declare dso_local i64 @uvesafb_vbe_getedid(%struct.uvesafb_ktask*, %struct.fb_info*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @fb_get_mode(i32, i32, %struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local i32 @fb_var_to_videomode(%struct.fb_videomode*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @fb_add_videomode(%struct.fb_videomode*, i32*) #1

declare dso_local i64 @uvesafb_is_valid_mode(%struct.fb_videomode*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
