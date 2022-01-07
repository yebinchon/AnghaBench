; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_setaie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_setaie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rtc_dev = type { i64 }

@SUNXI_ALRM_EN = common dso_local global i64 0, align 8
@SUNXI_ALRM_EN_CNT_EN = common dso_local global i32 0, align 4
@SUNXI_ALRM_IRQ_EN = common dso_local global i64 0, align 8
@SUNXI_ALRM_IRQ_EN_CNT_IRQ_EN = common dso_local global i32 0, align 4
@SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND = common dso_local global i32 0, align 4
@SUNXI_ALRM_IRQ_STA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sunxi_rtc_dev*)* @sunxi_rtc_setaie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_rtc_setaie(i32 %0, %struct.sunxi_rtc_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sunxi_rtc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sunxi_rtc_dev* %1, %struct.sunxi_rtc_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SUNXI_ALRM_EN, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @SUNXI_ALRM_EN_CNT_EN, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %4, align 8
  %20 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SUNXI_ALRM_IRQ_EN, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @SUNXI_ALRM_IRQ_EN_CNT_IRQ_EN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND, align 4
  %30 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %4, align 8
  %31 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SUNXI_ALRM_IRQ_STA, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  br label %36

36:                                               ; preds = %28, %9
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %4, align 8
  %39 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SUNXI_ALRM_EN, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %4, align 8
  %46 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SUNXI_ALRM_IRQ_EN, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
