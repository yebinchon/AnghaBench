; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_setup_vrfb_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_setup_vrfb_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.fb_fix_screeninfo, %struct.fb_var_screeninfo }
%struct.fb_fix_screeninfo = type { i32, i32, i64 }
%struct.fb_var_screeninfo = type { i32, i64, i32, i32 }
%struct.omapfb_info = type { i64, %struct.omapfb2_mem_region* }
%struct.omapfb2_mem_region = type { %struct.vrfb, i32, i32 }
%struct.vrfb = type { i32, i32, i64, i32, i64*, i32** }

@OMAP_DSS_ROT_VRFB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"setup_vrfb_rotation\0A\00", align 1
@OMAP_DSS_COLOR_YUV2 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_UYVY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"setup_vrfb_rotation: reset fb\0A\00", align 1
@OMAP_VRFB_LINE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @setup_vrfb_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_vrfb_rotation(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.omapfb_info*, align 8
  %5 = alloca %struct.omapfb2_mem_region*, align 8
  %6 = alloca %struct.vrfb*, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca %struct.fb_fix_screeninfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %14)
  store %struct.omapfb_info* %15, %struct.omapfb_info** %4, align 8
  %16 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %17 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %16, i32 0, i32 1
  %18 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %17, align 8
  store %struct.omapfb2_mem_region* %18, %struct.omapfb2_mem_region** %5, align 8
  %19 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %20 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %19, i32 0, i32 0
  store %struct.vrfb* %20, %struct.vrfb** %6, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  store %struct.fb_var_screeninfo* %22, %struct.fb_var_screeninfo** %7, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 1
  store %struct.fb_fix_screeninfo* %24, %struct.fb_fix_screeninfo** %8, align 8
  %25 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %26 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %31 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OMAP_DSS_ROT_VRFB, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %1
  store i32 0, i32* %2, align 4
  br label %203

36:                                               ; preds = %29
  %37 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %39 = call i32 @fb_mode_to_dss_mode(%struct.fb_var_screeninfo* %38, i32* %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %2, align 4
  br label %203

44:                                               ; preds = %36
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = ashr i32 %47, 3
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @OMAP_DSS_COLOR_YUV2, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @OMAP_DSS_COLOR_UYVY, align 4
  %55 = icmp eq i32 %53, %54
  br label %56

56:                                               ; preds = %52, %44
  %57 = phi i1 [ true, %44 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %61 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %13, align 4
  br label %91

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %68 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %13, align 4
  br label %90

72:                                               ; preds = %65
  %73 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %74 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %82 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %72
  store i32 1, i32* %13, align 4
  br label %89

89:                                               ; preds = %88, %80
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90, %64
  %92 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %93 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %92, i32 0, i32 5
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %119

98:                                               ; preds = %91
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  %104 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %105 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %107 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %109 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %108, i32 0, i32 5
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @iounmap(i32* %112)
  %114 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %115 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %114, i32 0, i32 5
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  store i32* null, i32** %117, align 8
  %118 = call i32 @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %101, %98, %91
  %120 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %121 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %120, i32 0, i32 5
  %122 = load i32**, i32*** %121, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %203

127:                                              ; preds = %119
  %128 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %129 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %128, i32 0, i32 0
  %130 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %131 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @omap_vrfb_setup(%struct.vrfb* %129, i32 %132, i64 %135, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @omap_vrfb_map_angle(%struct.vrfb* %142, i32 %145, i32 0)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %127
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %2, align 4
  br label %203

151:                                              ; preds = %127
  %152 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %153 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %152, i32 0, i32 1
  %154 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %153, align 8
  %155 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %155, i32 0, i32 5
  %157 = load i32**, i32*** %156, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 0
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %161 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %160, i32 0, i32 0
  store i32* %159, i32** %161, align 8
  %162 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %163 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %162, i32 0, i32 1
  %164 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %163, align 8
  %165 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %165, i32 0, i32 4
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %171 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  %172 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %173 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %184 [
    i32 129, label %175
    i32 128, label %175
  ]

175:                                              ; preds = %151, %151
  %176 = load i32, i32* @OMAP_VRFB_LINE_LEN, align 4
  %177 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %178 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 %176, %179
  %181 = ashr i32 %180, 2
  %182 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %183 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  br label %193

184:                                              ; preds = %151
  %185 = load i32, i32* @OMAP_VRFB_LINE_LEN, align 4
  %186 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %187 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %185, %188
  %190 = ashr i32 %189, 3
  %191 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %192 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %184, %175
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %198 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %196, %199
  %201 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %202 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %193, %149, %126, %42, %35
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @fb_mode_to_dss_mode(%struct.fb_var_screeninfo*, i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @omap_vrfb_setup(%struct.vrfb*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @omap_vrfb_map_angle(%struct.vrfb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
