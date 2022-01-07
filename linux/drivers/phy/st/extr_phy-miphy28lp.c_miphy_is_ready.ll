; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy_is_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy_is_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miphy28lp_phy = type { i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@HFC_PLL = common dso_local global i32 0, align 4
@HFC_RDY = common dso_local global i32 0, align 4
@PHY_TYPE_SATA = common dso_local global i64 0, align 8
@PHY_RDY = common dso_local global i32 0, align 4
@MIPHY_STATUS_1 = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.miphy28lp_phy*)* @miphy_is_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy_is_ready(%struct.miphy28lp_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.miphy28lp_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.miphy28lp_phy* %0, %struct.miphy28lp_phy** %3, align 8
  %7 = load i32, i32* @jiffies, align 4
  %8 = load i32, i32* @HZ, align 4
  %9 = mul nsw i32 5, %8
  %10 = add nsw i32 %7, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @HFC_PLL, align 4
  %13 = load i32, i32* @HFC_RDY, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %16 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PHY_TYPE_SATA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @PHY_RDY, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %1
  br label %25

25:                                               ; preds = %41, %24
  %26 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %27 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MIPHY_STATUS_1, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readb_relaxed(i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 (...) @cpu_relax()
  br label %40

39:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %50

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @jiffies, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @time_after_eq(i32 %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %25, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %39
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @readb_relaxed(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @time_after_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
