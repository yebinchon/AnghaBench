; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-comphy.c_mvebu_a3700_comphy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-comphy.c_mvebu_a3700_comphy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mvebu_a3700_comphy_lane = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid COMPHY mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"set lane %d to USB3 host mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"set lane %d to SATA mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"set lane %d to SGMII mode\0A\00", align 1
@COMPHY_FW_SPEED_1_25G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"set lane %d to HS SGMII mode\0A\00", align 1
@COMPHY_FW_SPEED_3_125G = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"unsupported PHY submode (%d)\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"set lane %d to PCIe mode\0A\00", align 1
@COMPHY_FW_SPEED_5G = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"unsupported PHY mode (%d)\0A\00", align 1
@COMPHY_SIP_POWER_ON = common dso_local global i32 0, align 4
@COMPHY_FW_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"unsupported SMC call, try updating your firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mvebu_a3700_comphy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_a3700_comphy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.mvebu_a3700_comphy_lane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %3, align 8
  %9 = call %struct.mvebu_a3700_comphy_lane* @phy_get_drvdata(%struct.phy* %8)
  store %struct.mvebu_a3700_comphy_lane* %9, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %10 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %11 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %14 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %17 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %20 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mvebu_a3700_comphy_get_fw_mode(i32 %12, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %27 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %143

31:                                               ; preds = %1
  %32 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %33 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %116 [
    i32 128, label %35
    i32 129, label %45
    i32 131, label %55
    i32 130, label %98
  ]

35:                                               ; preds = %31
  %36 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %37 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %40 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @COMPHY_FW_MODE(i32 %43)
  store i32 %44, i32* %5, align 4
  br label %126

45:                                               ; preds = %31
  %46 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %47 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %50 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @COMPHY_FW_MODE(i32 %53)
  store i32 %54, i32* %5, align 4
  br label %126

55:                                               ; preds = %31
  %56 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %57 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %87 [
    i32 132, label %59
    i32 133, label %73
  ]

59:                                               ; preds = %55
  %60 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %61 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %64 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %69 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @COMPHY_FW_SPEED_1_25G, align 4
  %72 = call i32 @COMPHY_FW_NET(i32 %67, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %97

73:                                               ; preds = %55
  %74 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %75 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %78 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %83 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @COMPHY_FW_SPEED_3_125G, align 4
  %86 = call i32 @COMPHY_FW_NET(i32 %81, i32 %84, i32 %85)
  store i32 %86, i32* %5, align 4
  br label %97

87:                                               ; preds = %55
  %88 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %89 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %92 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, ...) @dev_err(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @ENOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %143

97:                                               ; preds = %73, %59
  br label %126

98:                                               ; preds = %31
  %99 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %100 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %103 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_dbg(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %108 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @COMPHY_FW_SPEED_5G, align 4
  %111 = load %struct.phy*, %struct.phy** %3, align 8
  %112 = getelementptr inbounds %struct.phy, %struct.phy* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @COMPHY_FW_PCIE(i32 %106, i32 %109, i32 %110, i32 %114)
  store i32 %115, i32* %5, align 4
  br label %126

116:                                              ; preds = %31
  %117 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %118 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %121 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @ENOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %143

126:                                              ; preds = %98, %97, %45, %35
  %127 = load i32, i32* @COMPHY_SIP_POWER_ON, align 4
  %128 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %129 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @mvebu_a3700_comphy_smc(i32 %127, i32 %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @COMPHY_FW_NOT_SUPPORTED, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %4, align 8
  %138 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @dev_err(i32 %139, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  br label %141

141:                                              ; preds = %136, %126
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %116, %87, %25
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.mvebu_a3700_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mvebu_a3700_comphy_get_fw_mode(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @COMPHY_FW_MODE(i32) #1

declare dso_local i32 @COMPHY_FW_NET(i32, i32, i32) #1

declare dso_local i32 @COMPHY_FW_PCIE(i32, i32, i32, i32) #1

declare dso_local i32 @mvebu_a3700_comphy_smc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
