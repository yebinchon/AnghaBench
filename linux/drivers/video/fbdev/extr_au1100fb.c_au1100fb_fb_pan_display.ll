; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_fb_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_fb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64 }
%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.au1100fb_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"fb_pan_display %p %p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fb_pan_display 2 %p %p\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Panning screen of %d lines\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"fb_pan_display 3 %p %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au1100fb_fb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.au1100fb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = call %struct.au1100fb_device* @to_au1100fb_device(%struct.fb_info* %9)
  store %struct.au1100fb_device* %10, %struct.au1100fb_device** %6, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = call i32 (i8*, ...) @print_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.fb_var_screeninfo* %11, %struct.fb_info* %12)
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %15 = icmp ne %struct.fb_var_screeninfo* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.au1100fb_device*, %struct.au1100fb_device** %6, align 8
  %18 = icmp ne %struct.au1100fb_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %103

22:                                               ; preds = %16
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %25, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %103

35:                                               ; preds = %22
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = call i32 (i8*, ...) @print_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.fb_var_screeninfo* %36, %struct.fb_info* %37)
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %41, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %99

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, ...) @print_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.au1100fb_device*, %struct.au1100fb_device** %6, align 8
  %53 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @LCD_DMA_SA_N(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.au1100fb_device*, %struct.au1100fb_device** %6, align 8
  %69 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.au1100fb_device*, %struct.au1100fb_device** %6, align 8
  %73 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @panel_is_dual(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %49
  %78 = load %struct.au1100fb_device*, %struct.au1100fb_device** %6, align 8
  %79 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  %83 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i8* @LCD_DMA_SA_N(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.au1100fb_device*, %struct.au1100fb_device** %6, align 8
  %95 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %77, %49
  br label %99

99:                                               ; preds = %98, %35
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %101 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %102 = call i32 (i8*, ...) @print_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.fb_var_screeninfo* %100, %struct.fb_info* %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %32, %19
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.au1100fb_device* @to_au1100fb_device(%struct.fb_info*) #1

declare dso_local i32 @print_dbg(i8*, ...) #1

declare dso_local i8* @LCD_DMA_SA_N(i32) #1

declare dso_local i64 @panel_is_dual(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
