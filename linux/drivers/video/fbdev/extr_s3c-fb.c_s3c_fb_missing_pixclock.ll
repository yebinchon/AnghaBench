; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_missing_pixclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_missing_pixclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_videomode*)* @s3c_fb_missing_pixclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_fb_missing_pixclock(%struct.fb_videomode* %0) #0 {
  %2 = alloca %struct.fb_videomode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.fb_videomode* %0, %struct.fb_videomode** %2, align 8
  store i64 1000000000000, i64* %3, align 8
  %5 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %6 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %9 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %7, %10
  %12 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %13 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %11, %14
  %16 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %17 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %21 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %24 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %28 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %32 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %38 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %42, %41
  %44 = phi i64 [ %39, %41 ], [ 60, %42 ]
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  %49 = load i64, i64* %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @do_div(i64 %49, i32 %50)
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  %54 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %53, i32 0, i32 8
  store i64 %52, i64* %54, align 8
  ret void
}

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
