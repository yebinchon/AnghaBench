; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2_init_cable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2_init_cable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cable_type = common dso_local global i32 0, align 4
@PCTRA = common dso_local global i32 0, align 4
@PDTRA = common dso_local global i32 0, align 4
@CT_COMPOSITE = common dso_local global i32 0, align 4
@VOUTC = common dso_local global i32 0, align 4
@CT_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pvr2_init_cable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_init_cable() #0 {
  %1 = load i32, i32* @cable_type, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load i32, i32* @PCTRA, align 4
  %5 = call i32 @fb_readl(i32 %4)
  %6 = and i32 %5, -983041
  %7 = or i32 %6, 655360
  %8 = load i32, i32* @PCTRA, align 4
  %9 = call i32 @fb_writel(i32 %7, i32 %8)
  %10 = load i32, i32* @PDTRA, align 4
  %11 = call i32 @fb_readw(i32 %10)
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 3
  store i32 %13, i32* @cable_type, align 4
  br label %14

14:                                               ; preds = %3, %0
  %15 = load i32, i32* @cable_type, align 4
  %16 = load i32, i32* @CT_COMPOSITE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @VOUTC, align 4
  %20 = call i32 @fb_writel(i32 768, i32 %19)
  br label %32

21:                                               ; preds = %14
  %22 = load i32, i32* @cable_type, align 4
  %23 = load i32, i32* @CT_RGB, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @VOUTC, align 4
  %27 = call i32 @fb_writel(i32 512, i32 %26)
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @VOUTC, align 4
  %30 = call i32 @fb_writel(i32 0, i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* @cable_type, align 4
  ret i32 %33
}

declare dso_local i32 @fb_writel(i32, i32) #1

declare dso_local i32 @fb_readl(i32) #1

declare dso_local i32 @fb_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
