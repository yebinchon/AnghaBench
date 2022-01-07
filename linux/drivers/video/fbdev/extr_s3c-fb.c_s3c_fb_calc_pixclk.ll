; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_calc_pixclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_calc_pixclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_fb = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"pixclk=%u, clk=%lu, div=%d (%lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c_fb*, i32)* @s3c_fb_calc_pixclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_fb_calc_pixclk(%struct.s3c_fb* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c_fb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.s3c_fb* %0, %struct.s3c_fb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %9 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %15 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @clk_get_rate(i32 %16)
  store i64 %17, i64* %5, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %20 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @clk_get_rate(i32 %21)
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %6, align 8
  %28 = mul i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @do_div(i64 %29, i64 1000000000)
  %31 = load i64, i64* %6, align 8
  %32 = trunc i64 %31 to i32
  %33 = udiv i32 %32, 1000
  store i32 %33, i32* %7, align 4
  %34 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %35 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %23
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = udiv i64 %43, %45
  br label %49

47:                                               ; preds = %23
  %48 = load i64, i64* %5, align 8
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi i64 [ %46, %42 ], [ %48, %47 ]
  %51 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38, i32 %39, i64 %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
