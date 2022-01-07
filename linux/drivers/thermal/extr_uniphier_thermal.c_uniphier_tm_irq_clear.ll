; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_irq_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_uniphier_thermal.c_uniphier_tm_irq_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_tm_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ALERT_CH_NUM = common dso_local global i32 0, align 4
@PMALERTINTCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_tm_dev*)* @uniphier_tm_irq_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_tm_irq_clear(%struct.uniphier_tm_dev* %0) #0 {
  %2 = alloca %struct.uniphier_tm_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uniphier_tm_dev* %0, %struct.uniphier_tm_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @ALERT_CH_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @PMALERTINTCTL_CLR(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @PMALERTINTCTL_SET(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @PMALERTINTCTL_CLR(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %2, align 8
  %27 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.uniphier_tm_dev*, %struct.uniphier_tm_dev** %2, align 8
  %30 = getelementptr inbounds %struct.uniphier_tm_dev, %struct.uniphier_tm_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PMALERTINTCTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @regmap_write_bits(i32 %28, i64 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @PMALERTINTCTL_CLR(i32) #1

declare dso_local i32 @PMALERTINTCTL_SET(i32) #1

declare dso_local i32 @regmap_write_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
