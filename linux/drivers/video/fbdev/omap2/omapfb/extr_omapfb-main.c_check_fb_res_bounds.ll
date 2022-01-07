; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_check_fb_res_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_check_fb_res_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32 }

@OMAPFB_PLANE_XRES_MIN = common dso_local global i32 0, align 4
@OMAPFB_PLANE_YRES_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*)* @check_fb_res_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fb_res_bounds(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  %8 = load i32, i32* @OMAPFB_PLANE_XRES_MIN, align 4
  store i32 %8, i32* %4, align 4
  store i32 2048, i32* %5, align 4
  %9 = load i32, i32* @OMAPFB_PLANE_YRES_MIN, align 4
  store i32 %9, i32* %6, align 4
  store i32 2048, i32* %7, align 4
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %115

46:                                               ; preds = %37
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %86
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %110 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %100
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %43
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
