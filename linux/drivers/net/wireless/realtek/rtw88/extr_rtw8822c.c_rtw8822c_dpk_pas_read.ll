; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_pas_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_pas_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_NCTL0 = common dso_local global i32 0, align 4
@REG_RXSRAM_CTL = common dso_local global i32 0, align 4
@REG_STAT_RPT = common dso_local global i32 0, align 4
@MASKHWORD = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32)* @rtw8822c_dpk_pas_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dpk_pas_read(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = load i32, i32* @REG_NCTL0, align 4
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 1
  %11 = or i32 8, %10
  %12 = call i32 @rtw_write32(%struct.rtw_dev* %7, i32 %8, i32 %11)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = call i32 @BIT(i32 14)
  %15 = call i32 @rtw_write32_mask(%struct.rtw_dev* %13, i32 6984, i32 %14, i32 0)
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load i32, i32* @REG_RXSRAM_CTL, align 4
  %18 = call i32 @rtw_write32(%struct.rtw_dev* %16, i32 %17, i32 393217)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %20 = call i32 @rtw_write32(%struct.rtw_dev* %19, i32 6988, i32 0)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = call i32 @rtw_write32(%struct.rtw_dev* %21, i32 6988, i32 524288)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %24 = load i32, i32* @REG_STAT_RPT, align 4
  %25 = load i32, i32* @MASKHWORD, align 4
  %26 = call i32 @rtw_read32_mask(%struct.rtw_dev* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %28 = load i32, i32* @REG_STAT_RPT, align 4
  %29 = load i32, i32* @MASKLWORD, align 4
  %30 = call i32 @rtw_read32_mask(%struct.rtw_dev* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @BIT(i32 15)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 65536, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %2
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @BIT(i32 15)
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 65536, %44
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %48 = call i32 @rtw_write32(%struct.rtw_dev* %47, i32 6988, i32 0)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %51, %54
  ret i32 %55
}

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
