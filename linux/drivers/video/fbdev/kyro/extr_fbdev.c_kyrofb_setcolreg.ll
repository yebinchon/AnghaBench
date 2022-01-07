; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/kyro/extr_fbdev.c_kyrofb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/kyro/extr_fbdev.c_kyrofb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.kyrofb_info* }
%struct.TYPE_2__ = type { i32 }
%struct.kyrofb_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @kyrofb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kyrofb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.kyrofb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  %17 = load %struct.kyrofb_info*, %struct.kyrofb_info** %16, align 8
  store %struct.kyrofb_info* %17, %struct.kyrofb_info** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 255
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %73

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %72

24:                                               ; preds = %21
  %25 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %71 [
    i32 16, label %29
    i32 32, label %46
  ]

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 63488
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 64512
  %34 = ashr i32 %33, 5
  %35 = or i32 %31, %34
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 63488
  %38 = ashr i32 %37, 11
  %39 = or i32 %35, %38
  %40 = load %struct.kyrofb_info*, %struct.kyrofb_info** %14, align 8
  %41 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %71

46:                                               ; preds = %24
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 8
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %49, 8
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = ashr i32 %51, 8
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = ashr i32 %53, 8
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 %55, 24
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 %57, 16
  %59 = or i32 %56, %58
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %59, %61
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.kyrofb_info*, %struct.kyrofb_info** %14, align 8
  %66 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %24, %46, %29
  br label %72

72:                                               ; preds = %71, %21
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %20
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
