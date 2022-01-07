; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dp_phy = type { i32, i64, i32 }

@PHY_PMA_XCVR_PLLCLK_EN_ACK = common dso_local global i64 0, align 8
@POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"timeout waiting for link PLL clock enable ack\0A\00", align 1
@PHY_PMA_XCVR_POWER_STATE_REQ = common dso_local global i64 0, align 8
@PHY_PMA_XCVR_POWER_STATE_ACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"timeout waiting for link power state ack\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_dp_phy*)* @cdns_dp_phy_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dp_phy_run(%struct.cdns_dp_phy* %0) #0 {
  %2 = alloca %struct.cdns_dp_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdns_dp_phy* %0, %struct.cdns_dp_phy** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %9 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PHY_PMA_XCVR_PLLCLK_EN_ACK, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1
  %16 = load i32, i32* @POLL_TIMEOUT_US, align 4
  %17 = call i32 @readl_poll_timeout(i64 %12, i32 %13, i32 %15, i32 0, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ETIMEDOUT, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %24 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %1
  %28 = call i32 @ndelay(i32 100)
  %29 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %30 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %35 [
    i32 1, label %32
    i32 2, label %33
    i32 4, label %34
  ]

32:                                               ; preds = %27
  store i32 4, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 63, i32* %6, align 4
  br label %35

33:                                               ; preds = %27
  store i32 1028, i32* %4, align 4
  store i32 257, i32* %5, align 4
  store i32 16191, i32* %6, align 4
  br label %35

34:                                               ; preds = %27
  store i32 67372036, i32* %4, align 4
  store i32 16843009, i32* %5, align 4
  store i32 1061109567, i32* %6, align 4
  br label %35

35:                                               ; preds = %27, %34, %33, %32
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %38 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_REQ, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %44 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_ACK, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @POLL_TIMEOUT_US, align 4
  %56 = call i32 @readl_poll_timeout(i64 %47, i32 %48, i32 %54, i32 0, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %35
  %62 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %63 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %35
  %67 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %68 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_REQ, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 0, i64 %71)
  %73 = call i32 @ndelay(i32 100)
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %76 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_REQ, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %82 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_ACK, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* @POLL_TIMEOUT_US, align 4
  %94 = call i32 @readl_poll_timeout(i64 %85, i32 %86, i32 %92, i32 0, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @ETIMEDOUT, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %66
  %100 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %101 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %66
  %105 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %106 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PHY_PMA_XCVR_POWER_STATE_REQ, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 0, i64 %109)
  %111 = call i32 @ndelay(i32 100)
  ret void
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
