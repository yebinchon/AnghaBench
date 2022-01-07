; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_modedb.c_fb_videomode_to_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_modedb.c_fb_videomode_to_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.fb_videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FB_VMODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fb_videomode_to_var(%struct.fb_var_screeninfo* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  %5 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %6 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 14
  store i32 %7, i32* %9, align 4
  %10 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %11 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 13
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %16 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 12
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %21 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 10
  store i64 0, i64* %26, align 8
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 9
  store i64 0, i64* %28, align 8
  %29 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %30 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %35 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %40 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %45 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %50 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %55 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %60 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %65 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %70 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FB_VMODE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
