; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_compute_hozval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_compute_hozval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_lcdfb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATMEL_LCDC_LCDCON2 = common dso_local global i32 0, align 4
@ATMEL_LCDC_DISTYPE = common dso_local global i64 0, align 8
@ATMEL_LCDC_DISTYPE_TFT = common dso_local global i64 0, align 8
@ATMEL_LCDC_DISTYPE_STNCOLOR = common dso_local global i64 0, align 8
@ATMEL_LCDC_IFWIDTH = common dso_local global i64 0, align 8
@ATMEL_LCDC_IFWIDTH_4 = common dso_local global i64 0, align 8
@ATMEL_LCDC_IFWIDTH_8 = common dso_local global i64 0, align 8
@ATMEL_LCDC_SCANMOD = common dso_local global i64 0, align 8
@ATMEL_LCDC_SCANMOD_DUAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atmel_lcdfb_info*, i64)* @compute_hozval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_hozval(%struct.atmel_lcdfb_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.atmel_lcdfb_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.atmel_lcdfb_info* %0, %struct.atmel_lcdfb_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %4, align 8
  %9 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %3, align 8
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %4, align 8
  %18 = load i32, i32* @ATMEL_LCDC_LCDCON2, align 4
  %19 = call i64 @lcdc_readl(%struct.atmel_lcdfb_info* %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ATMEL_LCDC_DISTYPE, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @ATMEL_LCDC_DISTYPE_TFT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %16
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @ATMEL_LCDC_DISTYPE, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* @ATMEL_LCDC_DISTYPE_STNCOLOR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = mul i64 %33, 3
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @ATMEL_LCDC_IFWIDTH, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @ATMEL_LCDC_IFWIDTH_4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @ATMEL_LCDC_IFWIDTH, align 8
  %44 = and i64 %42, %43
  %45 = load i64, i64* @ATMEL_LCDC_IFWIDTH_8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @ATMEL_LCDC_SCANMOD, align 8
  %50 = and i64 %48, %49
  %51 = load i64, i64* @ATMEL_LCDC_SCANMOD_DUAL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %35
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @DIV_ROUND_UP(i64 %54, i32 4)
  store i64 %55, i64* %7, align 8
  br label %59

56:                                               ; preds = %47, %41
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @DIV_ROUND_UP(i64 %57, i32 8)
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %16
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %60, %14
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @lcdc_readl(%struct.atmel_lcdfb_info*, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
