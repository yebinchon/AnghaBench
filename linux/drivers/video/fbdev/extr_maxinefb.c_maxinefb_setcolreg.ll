; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_maxinefb.c_maxinefb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_maxinefb.c_maxinefb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@IMS332_REG_COLOR_PALETTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @maxinefb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maxinefb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ugt i32 %15, 255
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %39

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = lshr i32 %19, 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = lshr i32 %21, 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = lshr i32 %23, 8
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = shl i32 %25, 16
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %27, 8
  %29 = add i32 %26, %28
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %29, %30
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* @IMS332_REG_COLOR_PALETTE, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @maxinefb_ims332_write_register(i64 %36, i64 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %18, %17
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @maxinefb_ims332_write_register(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
