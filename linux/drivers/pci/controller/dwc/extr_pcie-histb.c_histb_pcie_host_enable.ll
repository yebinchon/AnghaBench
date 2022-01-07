; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_host_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-histb.c_histb_pcie_host_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.histb_pcie = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot prepare/enable bus clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot prepare/enable sys clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot prepare/enable pipe clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot prepare/enable aux clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*)* @histb_pcie_host_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histb_pcie_host_enable(%struct.pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.histb_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %3, align 8
  %8 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %9 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %8)
  store %struct.dw_pcie* %9, %struct.dw_pcie** %4, align 8
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %11 = call %struct.histb_pcie* @to_histb_pcie(%struct.dw_pcie* %10)
  store %struct.histb_pcie* %11, %struct.histb_pcie** %5, align 8
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %13 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %16 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %21 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @regulator_enable(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %135

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %34 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @gpio_is_valid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %40 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gpio_set_value_cansleep(i32 %41, i32 1)
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %45 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @clk_prepare_enable(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %123

53:                                               ; preds = %43
  %54 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %55 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clk_prepare_enable(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %118

63:                                               ; preds = %53
  %64 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %65 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @clk_prepare_enable(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %113

73:                                               ; preds = %63
  %74 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %75 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @clk_prepare_enable(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %108

83:                                               ; preds = %73
  %84 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %85 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @reset_control_assert(i32 %86)
  %88 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %89 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @reset_control_deassert(i32 %90)
  %92 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %93 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @reset_control_assert(i32 %94)
  %96 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %97 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @reset_control_deassert(i32 %98)
  %100 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %101 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @reset_control_assert(i32 %102)
  %104 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %105 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @reset_control_deassert(i32 %106)
  store i32 0, i32* %2, align 4
  br label %135

108:                                              ; preds = %80
  %109 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %110 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @clk_disable_unprepare(i32 %111)
  br label %113

113:                                              ; preds = %108, %70
  %114 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %115 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @clk_disable_unprepare(i32 %116)
  br label %118

118:                                              ; preds = %113, %60
  %119 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %120 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @clk_disable_unprepare(i32 %121)
  br label %123

123:                                              ; preds = %118, %50
  %124 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %125 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.histb_pcie*, %struct.histb_pcie** %5, align 8
  %130 = getelementptr inbounds %struct.histb_pcie, %struct.histb_pcie* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @regulator_disable(i64 %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %83, %26
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.histb_pcie* @to_histb_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
