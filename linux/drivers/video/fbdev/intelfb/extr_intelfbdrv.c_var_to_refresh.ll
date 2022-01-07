; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_var_to_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_var_to_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*)* @var_to_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @var_to_refresh(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca %struct.fb_var_screeninfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %2, align 8
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %7, %10
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 1000000000, %37
  %39 = mul nsw i32 %38, 1000
  %40 = add nsw i32 %39, 500
  %41 = load i32, i32* %3, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = sdiv i32 %42, %43
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
