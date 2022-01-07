; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_dc_corr_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_dc_corr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_RXSRAM_CTL = common dso_local global i32 0, align 4
@REG_STAT_RPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32)* @rtw8822c_dpk_dc_corr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dpk_dc_corr_check(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %11 = load i32, i32* @REG_RXSRAM_CTL, align 4
  %12 = call i32 @rtw_write32(%struct.rtw_dev* %10, i32 %11, i32 590064)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %14 = load i32, i32* @REG_STAT_RPT, align 4
  %15 = call i32 @GENMASK(i32 27, i32 16)
  %16 = call i64 @rtw_read32_mask(%struct.rtw_dev* %13, i32 %14, i32 %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %19 = load i32, i32* @REG_STAT_RPT, align 4
  %20 = call i32 @GENMASK(i32 11, i32 0)
  %21 = call i64 @rtw_read32_mask(%struct.rtw_dev* %18, i32 %19, i32 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @BIT(i32 11)
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 4096, %28
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BIT(i32 11)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 4096, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %40 = load i32, i32* @REG_RXSRAM_CTL, align 4
  %41 = call i32 @rtw_write32(%struct.rtw_dev* %39, i32 %40, i32 240)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %43 = load i32, i32* @REG_STAT_RPT, align 4
  %44 = call i32 @GENMASK(i32 7, i32 0)
  %45 = call i64 @rtw_read32_mask(%struct.rtw_dev* %42, i32 %43, i32 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %48 = load i32, i32* @REG_STAT_RPT, align 4
  %49 = call i32 @GENMASK(i32 15, i32 8)
  %50 = call i64 @rtw_read32_mask(%struct.rtw_dev* %47, i32 %48, i32 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 200
  br i1 %53, label %63, label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 200
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 40
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 65
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %57, %54, %38
  store i32 1, i32* %3, align 4
  br label %65

64:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
