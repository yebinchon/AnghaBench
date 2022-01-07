; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_setup_psm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_setup_psm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dphy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.cdns_dphy*, i64)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_dphy*)* @cdns_dphy_setup_psm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dphy_setup_psm(%struct.cdns_dphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns_dphy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.cdns_dphy* %0, %struct.cdns_dphy** %3, align 8
  %6 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %7 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @clk_get_rate(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = icmp ugt i64 %13, 100000000
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @DIV_ROUND_CLOSEST(i64 %19, i32 1000000)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %22 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.cdns_dphy*, i64)*, i32 (%struct.cdns_dphy*, i64)** %24, align 8
  %26 = icmp ne i32 (%struct.cdns_dphy*, i64)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %29 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.cdns_dphy*, i64)*, i32 (%struct.cdns_dphy*, i64)** %31, align 8
  %33 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 %32(%struct.cdns_dphy* %33, i64 %34)
  br label %36

36:                                               ; preds = %27, %18
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
