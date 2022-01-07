; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_carminefb.c_carmine_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_carminefb.c_carmine_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @carmine_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carmine_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp uge i32 %14, 16
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %45

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = lshr i32 %18, 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = lshr i32 %20, 8
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = lshr i32 %22, 8
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = lshr i32 %24, 8
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = shl i32 %26, 24
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 %28, 0
  %30 = or i32 %27, %29
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 8
  %33 = or i32 %30, %32
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 16
  %36 = or i32 %33, %35
  %37 = call i32 @cpu_to_be32(i32 %36)
  %38 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %37, i32* %44, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %17, %16
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
