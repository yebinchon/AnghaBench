; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy_osc_is_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy_osc_is_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miphy28lp_phy = type { i32*, i32, %struct.miphy28lp_dev* }
%struct.miphy28lp_dev = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SYSCFG_STATUS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MIPHY_OSC_RDY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.miphy28lp_phy*)* @miphy_osc_is_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy_osc_is_ready(%struct.miphy28lp_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.miphy28lp_phy*, align 8
  %4 = alloca %struct.miphy28lp_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.miphy28lp_phy* %0, %struct.miphy28lp_phy** %3, align 8
  %7 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %8 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %7, i32 0, i32 2
  %9 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %8, align 8
  store %struct.miphy28lp_dev* %9, %struct.miphy28lp_dev** %4, align 8
  %10 = load i32, i32* @jiffies, align 4
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 5, %11
  %13 = add nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %16 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

20:                                               ; preds = %1
  %21 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %22 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @SYSCFG_STATUS, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %61

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %52, %31
  %33 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %34 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %37 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @SYSCFG_STATUS, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_read(i32 %35, i32 %41, i32* %6)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MIPHY_OSC_RDY, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @MIPHY_OSC_RDY, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = call i32 (...) @cpu_relax()
  br label %51

50:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %61

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @jiffies, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @time_after_eq(i32 %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %32, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %50, %28, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @time_after_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
