; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_get_vrfb_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_get_vrfb_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vrfb }
%struct.vrfb = type { i32, i32, i32 }

@OMAP_VRFB_LINE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_info*, i32)* @omapfb_get_vrfb_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_get_vrfb_offset(%struct.omapfb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vrfb*, align 8
  %7 = alloca i32, align 4
  store %struct.omapfb_info* %0, %struct.omapfb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %9 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.vrfb* %11, %struct.vrfb** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %34 [
    i32 128, label %13
    i32 130, label %14
    i32 129, label %18
    i32 131, label %28
  ]

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %16 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %20 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OMAP_VRFB_LINE_LEN, align 4
  %23 = mul i32 %21, %22
  %24 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %25 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  store i32 %27, i32* %7, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %30 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OMAP_VRFB_LINE_LEN, align 4
  %33 = mul i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %2
  %35 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %43

36:                                               ; preds = %28, %18, %14, %13
  %37 = load %struct.vrfb*, %struct.vrfb** %6, align 8
  %38 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
