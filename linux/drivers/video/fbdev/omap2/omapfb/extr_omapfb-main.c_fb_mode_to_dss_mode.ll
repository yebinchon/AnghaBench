; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_fb_mode_to_dss_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_fb_mode_to_dss_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_colormode = type { i64, i32 }
%struct.fb_var_screeninfo = type { i64, i32 }

@omapfb_colormodes = common dso_local global %struct.omapfb_colormode* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_CLUT1 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_CLUT2 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_CLUT4 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_CLUT8 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_RGB12U = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_RGB16 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_RGB24P = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_RGB24U = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, i32*)* @fb_mode_to_dss_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_mode_to_dss_mode(%struct.fb_var_screeninfo* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.omapfb_colormode*, align 8
  %9 = alloca %struct.omapfb_colormode*, align 8
  %10 = alloca %struct.omapfb_colormode*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** @omapfb_colormodes, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.omapfb_colormode* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** @omapfb_colormodes, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %22, i64 %24
  store %struct.omapfb_colormode* %25, %struct.omapfb_colormode** %8, align 8
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %8, align 8
  %30 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %35 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %8, align 8
  %36 = call i32 @assign_colormode_to_var(%struct.fb_var_screeninfo* %34, %struct.omapfb_colormode* %35)
  %37 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %8, align 8
  %38 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %129

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %129

48:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %72, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** @omapfb_colormodes, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.omapfb_colormode* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** @omapfb_colormodes, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %55, i64 %57
  store %struct.omapfb_colormode* %58, %struct.omapfb_colormode** %9, align 8
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %60 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %9, align 8
  %61 = call i64 @cmp_var_to_colormode(%struct.fb_var_screeninfo* %59, %struct.omapfb_colormode* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %9, align 8
  %66 = call i32 @assign_colormode_to_var(%struct.fb_var_screeninfo* %64, %struct.omapfb_colormode* %65)
  %67 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %9, align 8
  %68 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %129

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %49

75:                                               ; preds = %49
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %95 [
    i32 1, label %79
    i32 2, label %81
    i32 4, label %83
    i32 8, label %85
    i32 12, label %87
    i32 16, label %89
    i32 24, label %91
    i32 32, label %93
  ]

79:                                               ; preds = %75
  %80 = load i32, i32* @OMAP_DSS_COLOR_CLUT1, align 4
  store i32 %80, i32* %6, align 4
  br label %98

81:                                               ; preds = %75
  %82 = load i32, i32* @OMAP_DSS_COLOR_CLUT2, align 4
  store i32 %82, i32* %6, align 4
  br label %98

83:                                               ; preds = %75
  %84 = load i32, i32* @OMAP_DSS_COLOR_CLUT4, align 4
  store i32 %84, i32* %6, align 4
  br label %98

85:                                               ; preds = %75
  %86 = load i32, i32* @OMAP_DSS_COLOR_CLUT8, align 4
  store i32 %86, i32* %6, align 4
  br label %98

87:                                               ; preds = %75
  %88 = load i32, i32* @OMAP_DSS_COLOR_RGB12U, align 4
  store i32 %88, i32* %6, align 4
  br label %98

89:                                               ; preds = %75
  %90 = load i32, i32* @OMAP_DSS_COLOR_RGB16, align 4
  store i32 %90, i32* %6, align 4
  br label %98

91:                                               ; preds = %75
  %92 = load i32, i32* @OMAP_DSS_COLOR_RGB24P, align 4
  store i32 %92, i32* %6, align 4
  br label %98

93:                                               ; preds = %75
  %94 = load i32, i32* @OMAP_DSS_COLOR_RGB24U, align 4
  store i32 %94, i32* %6, align 4
  br label %98

95:                                               ; preds = %75
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %129

98:                                               ; preds = %93, %91, %89, %87, %85, %83, %81, %79
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %123, %98
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** @omapfb_colormodes, align 8
  %102 = call i32 @ARRAY_SIZE(%struct.omapfb_colormode* %101)
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %99
  %105 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** @omapfb_colormodes, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %105, i64 %107
  store %struct.omapfb_colormode* %108, %struct.omapfb_colormode** %10, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %10, align 8
  %111 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %104
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %10, align 8
  %117 = call i32 @assign_colormode_to_var(%struct.fb_var_screeninfo* %115, %struct.omapfb_colormode* %116)
  %118 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %10, align 8
  %119 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %5, align 8
  store i32 %120, i32* %121, align 4
  store i32 0, i32* %3, align 4
  br label %129

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %99

126:                                              ; preds = %99
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %126, %114, %95, %63, %45, %33
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @ARRAY_SIZE(%struct.omapfb_colormode*) #1

declare dso_local i32 @assign_colormode_to_var(%struct.fb_var_screeninfo*, %struct.omapfb_colormode*) #1

declare dso_local i64 @cmp_var_to_colormode(%struct.fb_var_screeninfo*, %struct.omapfb_colormode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
