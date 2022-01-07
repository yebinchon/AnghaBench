; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gxt4500.c_gxt4500_var_to_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gxt4500.c_gxt4500_var_to_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i64, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gxt4500_par = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@DFA_PIX_32BIT = common dso_local global i8* null, align 8
@DFA_PIX_24BIT = common dso_local global i8* null, align 8
@DFA_PIX_16BIT_1555 = common dso_local global i8* null, align 8
@DFA_PIX_16BIT_565 = common dso_local global i8* null, align 8
@DFA_PIX_8BIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.gxt4500_par*)* @gxt4500_var_to_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxt4500_var_to_par(%struct.fb_var_screeninfo* %0, %struct.gxt4500_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.gxt4500_par*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.gxt4500_par* %1, %struct.gxt4500_par** %5, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %2
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %17
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 4096
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %17, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %104

37:                                               ; preds = %29
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FB_VMODE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %104

48:                                               ; preds = %37
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %53 = call i64 @calc_pll(i32 %51, %struct.gxt4500_par* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %104

58:                                               ; preds = %48
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %100 [
    i32 32, label %62
    i32 24, label %77
    i32 16, label %81
    i32 8, label %96
  ]

62:                                               ; preds = %58
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i8*, i8** @DFA_PIX_32BIT, align 8
  %70 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %71 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %76

72:                                               ; preds = %62
  %73 = load i8*, i8** @DFA_PIX_24BIT, align 8
  %74 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %75 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %72, %68
  br label %103

77:                                               ; preds = %58
  %78 = load i8*, i8** @DFA_PIX_24BIT, align 8
  %79 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %80 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %103

81:                                               ; preds = %58
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 5
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i8*, i8** @DFA_PIX_16BIT_1555, align 8
  %89 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %90 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %95

91:                                               ; preds = %81
  %92 = load i8*, i8** @DFA_PIX_16BIT_565, align 8
  %93 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %94 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  br label %103

96:                                               ; preds = %58
  %97 = load i8*, i8** @DFA_PIX_8BIT, align 8
  %98 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %99 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %103

100:                                              ; preds = %58
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %96, %95, %77, %76
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %100, %55, %45, %34
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @calc_pll(i32, %struct.gxt4500_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
