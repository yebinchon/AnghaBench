; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_write_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_write_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dp_phy = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_dp_phy*, i32, i8, i8, i32)* @cdns_dp_phy_write_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dp_phy_write_field(%struct.cdns_dp_phy* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.cdns_dp_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdns_dp_phy* %0, %struct.cdns_dp_phy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %12 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %6, align 8
  %13 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %19, %21
  %23 = load i32, i32* %11, align 4
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %27, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %23, %31
  %33 = or i32 %22, %32
  %34 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %6, align 8
  %35 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @writel(i32 %33, i64 %39)
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
