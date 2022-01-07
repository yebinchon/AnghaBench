; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmagb-b-fb.c_pmagbbfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmagb-b-fb.c_pmagbbfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.pmagbbfb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.pmagbbfb_par = type { i32 }

@BT459_ADDR_LO = common dso_local global i32 0, align 4
@BT459_ADDR_HI = common dso_local global i32 0, align 4
@BT459_CMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @pmagbbfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmagbbfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.pmagbbfb_par*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  %17 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %16, align 8
  store %struct.pmagbbfb_par* %17, %struct.pmagbbfb_par** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp uge i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %55

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = lshr i32 %26, 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = lshr i32 %28, 8
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = lshr i32 %30, 8
  store i32 %31, i32* %11, align 4
  %32 = call i32 (...) @mb()
  %33 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %14, align 8
  %34 = load i32, i32* @BT459_ADDR_LO, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dac_write(%struct.pmagbbfb_par* %33, i32 %34, i32 %35)
  %37 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %14, align 8
  %38 = load i32, i32* @BT459_ADDR_HI, align 4
  %39 = call i32 @dac_write(%struct.pmagbbfb_par* %37, i32 %38, i32 0)
  %40 = call i32 (...) @wmb()
  %41 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %14, align 8
  %42 = load i32, i32* @BT459_CMAP, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dac_write(%struct.pmagbbfb_par* %41, i32 %42, i32 %43)
  %45 = call i32 (...) @wmb()
  %46 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %14, align 8
  %47 = load i32, i32* @BT459_CMAP, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dac_write(%struct.pmagbbfb_par* %46, i32 %47, i32 %48)
  %50 = call i32 (...) @wmb()
  %51 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %14, align 8
  %52 = load i32, i32* @BT459_CMAP, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @dac_write(%struct.pmagbbfb_par* %51, i32 %52, i32 %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %25, %24
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @dac_write(%struct.pmagbbfb_par*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
