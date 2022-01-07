; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_setpalettereg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_setpalettereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.imxfb_info* }
%struct.imxfb_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @imxfb_setpalettereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxfb_setpalettereg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.imxfb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = load %struct.imxfb_info*, %struct.imxfb_info** %17, align 8
  store %struct.imxfb_info* %18, %struct.imxfb_info** %13, align 8
  store i32 1, i32* %15, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.imxfb_info*, %struct.imxfb_info** %13, align 8
  %21 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 4
  %27 = add nsw i32 %26, 32767
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  %30 = ashr i32 %29, 16
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %32, 4
  %34 = add nsw i32 %33, 32767
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %34, %35
  %37 = ashr i32 %36, 16
  %38 = shl i32 %37, 4
  %39 = or i32 %31, %38
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 4
  %42 = add nsw i32 %41, 32767
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %42, %43
  %45 = ashr i32 %44, 16
  %46 = or i32 %39, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.imxfb_info*, %struct.imxfb_info** %13, align 8
  %49 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 2048
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = call i32 @writel(i32 %47, i64 %55)
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %24, %6
  %58 = load i32, i32* %15, align 4
  ret i32 %58
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
