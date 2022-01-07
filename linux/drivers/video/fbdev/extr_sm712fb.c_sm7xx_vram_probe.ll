; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_sm7xx_vram_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_sm7xx_vram_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smtcfb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smtcfb_info*)* @sm7xx_vram_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm7xx_vram_probe(%struct.smtcfb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smtcfb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.smtcfb_info* %0, %struct.smtcfb_info** %3, align 8
  %5 = load %struct.smtcfb_info*, %struct.smtcfb_info** %3, align 8
  %6 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %32 [
    i32 1808, label %8
    i32 1810, label %8
    i32 1824, label %9
  ]

8:                                                ; preds = %1, %1
  store i32 4194304, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = call i32 @outb_p(i32 118, i32 964)
  %11 = call i32 @inb_p(i32 965)
  %12 = ashr i32 %11, 6
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 8388608, i32* %2, align 4
  br label %33

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 16777216, i32* %2, align 4
  br label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 4194304, i32* %2, align 4
  br label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 4194304, i32* %2, align 4
  br label %33

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %27, %23, %19, %15, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
