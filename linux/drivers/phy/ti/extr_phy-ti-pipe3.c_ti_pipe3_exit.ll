; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ti_pipe3 = type { i64, i32, i32, i32, i32 }

@PIPE3_MODE_SATA = common dso_local global i64 0, align 8
@PIPE3_MODE_PCIE = common dso_local global i64 0, align 8
@PLL_CONFIGURATION2 = common dso_local global i32 0, align 4
@PLL_IDLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PLL_IDLE_TIME = common dso_local global i32 0, align 4
@PLL_STATUS = common dso_local global i32 0, align 4
@PLL_TICOPWDN = common dso_local global i32 0, align 4
@PLL_LDOPWDN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to power down: PLL_STATUS 0x%x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SATA_PLL_SOFT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ti_pipe3_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_exit(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.ti_pipe3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.ti_pipe3* @phy_get_drvdata(%struct.phy* %7)
  store %struct.ti_pipe3* %8, %struct.ti_pipe3** %4, align 8
  %9 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %10 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PIPE3_MODE_SATA, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %16 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %115

20:                                               ; preds = %14, %1
  %21 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %22 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PIPE3_MODE_PCIE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %20
  %27 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %28 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PLL_CONFIGURATION2, align 4
  %31 = call i32 @ti_pipe3_readl(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @PLL_IDLE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %36 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PLL_CONFIGURATION2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ti_pipe3_writel(i32 %37, i32 %38, i32 %39)
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i32, i32* @PLL_IDLE_TIME, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = add i64 %41, %43
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %63, %26
  %46 = call i32 (...) @cpu_relax()
  %47 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %48 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PLL_STATUS, align 4
  %51 = call i32 @ti_pipe3_readl(i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PLL_TICOPWDN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PLL_LDOPWDN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %69

62:                                               ; preds = %56, %45
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* @jiffies, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @time_after(i64 %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %45, label %69

69:                                               ; preds = %63, %61
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @PLL_TICOPWDN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @PLL_LDOPWDN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %81 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %115

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %20
  %89 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %90 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PIPE3_MODE_SATA, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %96 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %99 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SATA_PLL_SOFT_RESET, align 4
  %102 = load i32, i32* @SATA_PLL_SOFT_RESET, align 4
  %103 = call i32 @regmap_update_bits(i32 %97, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %105 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %108 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SATA_PLL_SOFT_RESET, align 4
  %111 = call i32 @regmap_update_bits(i32 %106, i32 %109, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %94, %88
  %113 = load %struct.ti_pipe3*, %struct.ti_pipe3** %4, align 8
  %114 = call i32 @ti_pipe3_disable_clocks(%struct.ti_pipe3* %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %112, %79, %19
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.ti_pipe3* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @ti_pipe3_readl(i32, i32) #1

declare dso_local i32 @ti_pipe3_writel(i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ti_pipe3_disable_clocks(%struct.ti_pipe3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
