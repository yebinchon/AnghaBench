; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_var_to_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_var_to_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbcon_display = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbcon_display*, %struct.fb_var_screeninfo*, %struct.fb_info*)* @var_to_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @var_to_display(%struct.fbcon_display* %0, %struct.fb_var_screeninfo* %1, %struct.fb_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fbcon_display*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca %struct.fb_info*, align 8
  store %struct.fbcon_display* %0, %struct.fbcon_display** %5, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %6, align 8
  store %struct.fb_info* %2, %struct.fb_info** %7, align 8
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 12
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %12 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %11, i32 0, i32 13
  store i32 %10, i32* %12, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %17 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %22 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 8
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %27 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %32 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %37 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %42 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %47 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %52 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %57 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %62 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %67 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %72 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  %76 = call i32* @fb_match_mode(%struct.fb_var_screeninfo* %73, i32* %75)
  %77 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %78 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.fbcon_display*, %struct.fbcon_display** %5, align 8
  %80 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %3
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32* @fb_match_mode(%struct.fb_var_screeninfo*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
