; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.tegra_pcie_soc*, %struct.device* }
%struct.tegra_pcie_soc = type { i64 }
%struct.device = type { i32 }

@TEGRA_POWERGATE_PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to enable regulators: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to power ungate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to remove clamp: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to enable AFI clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to enable CML clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to enable PLLE clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_power_on(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_pcie_soc*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %7 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %7, i32 0, i32 9
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %10, i32 0, i32 8
  %12 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %11, align 8
  store %struct.tegra_pcie_soc* %12, %struct.tegra_pcie_soc** %5, align 8
  %13 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @reset_control_assert(i32 %15)
  %17 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @reset_control_assert(i32 %19)
  %21 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @reset_control_assert(i32 %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @TEGRA_POWERGATE_PCIE, align 4
  %31 = call i32 @tegra_powergate_power_off(i32 %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @regulator_bulk_enable(i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %32
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @TEGRA_POWERGATE_PCIE, align 4
  %53 = call i32 @tegra_powergate_power_on(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %139

60:                                               ; preds = %51
  %61 = load i32, i32* @TEGRA_POWERGATE_PCIE, align 4
  %62 = call i32 @tegra_powergate_remove_clamping(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %130

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %72 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_prepare_enable(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %130

81:                                               ; preds = %70
  %82 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %83 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @clk_prepare_enable(i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %125

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %81
  %99 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %100 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @clk_prepare_enable(i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %114

109:                                              ; preds = %98
  %110 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %111 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @reset_control_deassert(i32 %112)
  store i32 0, i32* %2, align 4
  br label %148

114:                                              ; preds = %105
  %115 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %116 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %121 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @clk_disable_unprepare(i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %93
  %126 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %127 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @clk_disable_unprepare(i32 %128)
  br label %130

130:                                              ; preds = %125, %77, %65
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = getelementptr inbounds %struct.device, %struct.device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @TEGRA_POWERGATE_PCIE, align 4
  %137 = call i32 @tegra_powergate_power_off(i32 %136)
  br label %138

138:                                              ; preds = %135, %130
  br label %139

139:                                              ; preds = %138, %56
  %140 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %141 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %144 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @regulator_bulk_disable(i32 %142, i32 %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %139, %109
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tegra_powergate_power_on(i32) #1

declare dso_local i32 @tegra_powergate_remove_clamping(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
