; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_calc_rotation_offset_vrfb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_calc_rotation_offset_vrfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32 }
%struct.fb_fix_screeninfo = type { i32 }

@FB_ROTATE_UD = common dso_local global i32 0, align 4
@FB_ROTATE_CW = common dso_local global i32 0, align 4
@FB_ROTATE_UR = common dso_local global i32 0, align 4
@FB_ROTATE_CCW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_fix_screeninfo*, i32)* @calc_rotation_offset_vrfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_rotation_offset_vrfb(%struct.fb_var_screeninfo* %0, %struct.fb_fix_screeninfo* %1, i32 %2) #0 {
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_fix_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_fix_screeninfo* %1, %struct.fb_fix_screeninfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @FB_ROTATE_UD, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %14, %17
  %19 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %20 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %18, %21
  store i32 %22, i32* %7, align 4
  br label %42

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @FB_ROTATE_CW, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %30, %33
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 3
  %39 = mul i32 %34, %38
  store i32 %39, i32* %7, align 4
  br label %41

40:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41, %11
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FB_ROTATE_UR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %51 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul i32 %49, %52
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 3
  %61 = mul nsw i32 %56, %60
  %62 = add i32 %53, %61
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %137

65:                                               ; preds = %42
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @FB_ROTATE_UD, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %74 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul i32 %72, %75
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 3
  %84 = mul nsw i32 %79, %83
  %85 = add i32 %76, %84
  %86 = load i32, i32* %7, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %136

88:                                               ; preds = %65
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @FB_ROTATE_CW, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %97 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = mul i32 %95, %98
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 3
  %107 = mul nsw i32 %102, %106
  %108 = add i32 %99, %107
  %109 = load i32, i32* %7, align 4
  %110 = sub i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %135

111:                                              ; preds = %88
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @FB_ROTATE_CCW, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %111
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %120 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul i32 %118, %121
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 3
  %130 = mul nsw i32 %125, %129
  %131 = add i32 %122, %130
  %132 = load i32, i32* %7, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %115, %111
  br label %135

135:                                              ; preds = %134, %92
  br label %136

136:                                              ; preds = %135, %69
  br label %137

137:                                              ; preds = %136, %46
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
