; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_4__, %struct.xenfb_info* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xenfb_info = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@video = common dso_local global i32* null, align 8
@KPARAM_WIDTH = common dso_local global i64 0, align 8
@KPARAM_HEIGHT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XENFB_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @xenfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.xenfb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.xenfb_info*, %struct.xenfb_info** %9, align 8
  store %struct.xenfb_info* %10, %struct.xenfb_info** %6, align 8
  %11 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %12 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %2
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @video, align 8
  %20 = load i64, i64* @KPARAM_WIDTH, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @video, align 8
  %29 = load i64, i64* @KPARAM_HEIGHT, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %38 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %125

44:                                               ; preds = %33, %24, %15
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %125

47:                                               ; preds = %2
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** @video, align 8
  %52 = load i64, i64* @KPARAM_WIDTH, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %50, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %47
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @video, align 8
  %61 = load i64, i64* @KPARAM_HEIGHT, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %59, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %47
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %125

68:                                               ; preds = %56
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %77 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %75, %80
  %82 = sdiv i32 %81, 8
  store i32 %82, i32* %7, align 4
  %83 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %87 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %85, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %68
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @XENFB_DEPTH, align 4
  %101 = sdiv i32 %100, 8
  %102 = sdiv i32 %99, %101
  %103 = icmp sle i32 %95, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %92
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %105, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %3, align 4
  br label %125

122:                                              ; preds = %104, %92, %68
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %122, %111, %65, %44, %43
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
