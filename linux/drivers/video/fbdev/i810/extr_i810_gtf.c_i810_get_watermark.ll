; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_gtf.c_i810_get_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_gtf.c_i810_get_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_info = type { i64, i64 }
%struct.fb_var_screeninfo = type { i32, i32 }
%struct.i810fb_par = type { i32 }

@i810_wm_8_100 = common dso_local global %struct.wm_info* null, align 8
@i810_wm_16_100 = common dso_local global %struct.wm_info* null, align 8
@i810_wm_24_100 = common dso_local global %struct.wm_info* null, align 8
@i810_wm_8_133 = common dso_local global %struct.wm_info* null, align 8
@i810_wm_16_133 = common dso_local global %struct.wm_info* null, align 8
@i810_wm_24_133 = common dso_local global %struct.wm_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i810_get_watermark(%struct.fb_var_screeninfo* %0, %struct.i810fb_par* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.i810fb_par*, align 8
  %5 = alloca %struct.wm_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.i810fb_par* %1, %struct.i810fb_par** %4, align 8
  store %struct.wm_info* null, %struct.wm_info** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %13 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 100
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %32 [
    i32 8, label %20
    i32 16, label %24
    i32 24, label %28
    i32 32, label %28
  ]

20:                                               ; preds = %16
  %21 = load %struct.wm_info*, %struct.wm_info** @i810_wm_8_100, align 8
  store %struct.wm_info* %21, %struct.wm_info** %5, align 8
  %22 = load %struct.wm_info*, %struct.wm_info** @i810_wm_8_100, align 8
  %23 = call i64 @ARRAY_SIZE(%struct.wm_info* %22)
  store i64 %23, i64* %7, align 8
  br label %32

24:                                               ; preds = %16
  %25 = load %struct.wm_info*, %struct.wm_info** @i810_wm_16_100, align 8
  store %struct.wm_info* %25, %struct.wm_info** %5, align 8
  %26 = load %struct.wm_info*, %struct.wm_info** @i810_wm_16_100, align 8
  %27 = call i64 @ARRAY_SIZE(%struct.wm_info* %26)
  store i64 %27, i64* %7, align 8
  br label %32

28:                                               ; preds = %16, %16
  %29 = load %struct.wm_info*, %struct.wm_info** @i810_wm_24_100, align 8
  store %struct.wm_info* %29, %struct.wm_info** %5, align 8
  %30 = load %struct.wm_info*, %struct.wm_info** @i810_wm_24_100, align 8
  %31 = call i64 @ARRAY_SIZE(%struct.wm_info* %30)
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %28, %16, %24, %20
  br label %50

33:                                               ; preds = %2
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %49 [
    i32 8, label %37
    i32 16, label %41
    i32 24, label %45
    i32 32, label %45
  ]

37:                                               ; preds = %33
  %38 = load %struct.wm_info*, %struct.wm_info** @i810_wm_8_133, align 8
  store %struct.wm_info* %38, %struct.wm_info** %5, align 8
  %39 = load %struct.wm_info*, %struct.wm_info** @i810_wm_8_133, align 8
  %40 = call i64 @ARRAY_SIZE(%struct.wm_info* %39)
  store i64 %40, i64* %7, align 8
  br label %49

41:                                               ; preds = %33
  %42 = load %struct.wm_info*, %struct.wm_info** @i810_wm_16_133, align 8
  store %struct.wm_info* %42, %struct.wm_info** %5, align 8
  %43 = load %struct.wm_info*, %struct.wm_info** @i810_wm_16_133, align 8
  %44 = call i64 @ARRAY_SIZE(%struct.wm_info* %43)
  store i64 %44, i64* %7, align 8
  br label %49

45:                                               ; preds = %33, %33
  %46 = load %struct.wm_info*, %struct.wm_info** @i810_wm_24_133, align 8
  store %struct.wm_info* %46, %struct.wm_info** %5, align 8
  %47 = load %struct.wm_info*, %struct.wm_info** @i810_wm_24_133, align 8
  %48 = call i64 @ARRAY_SIZE(%struct.wm_info* %47)
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %45, %33, %41, %37
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 1000000, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %8, align 8
  store i64 -1, i64* %10, align 8
  store i64 0, i64* %6, align 8
  br label %56

56:                                               ; preds = %96, %50
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.wm_info*, %struct.wm_info** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.wm_info, %struct.wm_info* %62, i64 %63
  %65 = getelementptr inbounds %struct.wm_info, %struct.wm_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ule i64 %61, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.wm_info*, %struct.wm_info** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.wm_info, %struct.wm_info* %69, i64 %70
  %72 = getelementptr inbounds %struct.wm_info, %struct.wm_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %11, align 8
  br label %84

76:                                               ; preds = %60
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.wm_info*, %struct.wm_info** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.wm_info, %struct.wm_info* %78, i64 %79
  %81 = getelementptr inbounds %struct.wm_info, %struct.wm_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %77, %82
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %76, %68
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.wm_info*, %struct.wm_info** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.wm_info, %struct.wm_info* %89, i64 %90
  %92 = getelementptr inbounds %struct.wm_info, %struct.wm_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %11, align 8
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %88, %84
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %6, align 8
  br label %56

99:                                               ; preds = %56
  %100 = load i64, i64* %9, align 8
  ret i64 %100
}

declare dso_local i64 @ARRAY_SIZE(%struct.wm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
