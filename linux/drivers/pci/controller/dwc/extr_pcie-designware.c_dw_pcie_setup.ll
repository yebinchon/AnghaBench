; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware.c_dw_pcie_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32, i32, %struct.device*, i64, i64 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@DEFAULT_DBI_ATU_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"iATU unroll: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"num-lanes\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"property num-lanes isn't found\0A\00", align 1
@PCIE_PORT_LINK_CONTROL = common dso_local global i32 0, align 4
@PORT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@PORT_LINK_MODE_1_LANES = common dso_local global i32 0, align 4
@PORT_LINK_MODE_2_LANES = common dso_local global i32 0, align 4
@PORT_LINK_MODE_4_LANES = common dso_local global i32 0, align 4
@PORT_LINK_MODE_8_LANES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"num-lanes %u: invalid value\0A\00", align 1
@PCIE_LINK_WIDTH_SPEED_CONTROL = common dso_local global i32 0, align 4
@PORT_LOGIC_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@PORT_LOGIC_LINK_WIDTH_1_LANES = common dso_local global i32 0, align 4
@PORT_LOGIC_LINK_WIDTH_2_LANES = common dso_local global i32 0, align 4
@PORT_LOGIC_LINK_WIDTH_4_LANES = common dso_local global i32 0, align 4
@PORT_LOGIC_LINK_WIDTH_8_LANES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"snps,enable-cdm-check\00", align 1
@PCIE_PL_CHK_REG_CONTROL_STATUS = common dso_local global i32 0, align 4
@PCIE_PL_CHK_REG_CHK_REG_CONTINUOUS = common dso_local global i32 0, align 4
@PCIE_PL_CHK_REG_CHK_REG_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_pcie_setup(%struct.dw_pcie* %0) #0 {
  %2 = alloca %struct.dw_pcie*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.dw_pcie* %0, %struct.dw_pcie** %2, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %9 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %15 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 18442
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %20 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %18
  %24 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %25 = call i64 @dw_pcie_iatu_unroll_enabled(%struct.dw_pcie* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23, %1
  %28 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %29 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %31 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %36 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DEFAULT_DBI_ATU_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %41 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %27
  br label %43

43:                                               ; preds = %42, %23, %18
  %44 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %45 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %44, i32 0, i32 2
  %46 = load %struct.device*, %struct.device** %45, align 8
  %47 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %48 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.device_node*, %struct.device_node** %7, align 8
  %55 = call i32 @of_property_read_u32(%struct.device_node* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %60 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %59, i32 0, i32 2
  %61 = load %struct.device*, %struct.device** %60, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %144

63:                                               ; preds = %43
  %64 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %65 = load i32, i32* @PCIE_PORT_LINK_CONTROL, align 4
  %66 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @PORT_LINK_MODE_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %88 [
    i32 1, label %72
    i32 2, label %76
    i32 4, label %80
    i32 8, label %84
  ]

72:                                               ; preds = %63
  %73 = load i32, i32* @PORT_LINK_MODE_1_LANES, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  br label %94

76:                                               ; preds = %63
  %77 = load i32, i32* @PORT_LINK_MODE_2_LANES, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %94

80:                                               ; preds = %63
  %81 = load i32, i32* @PORT_LINK_MODE_4_LANES, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  br label %94

84:                                               ; preds = %63
  %85 = load i32, i32* @PORT_LINK_MODE_8_LANES, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %94

88:                                               ; preds = %63
  %89 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %90 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %89, i32 0, i32 2
  %91 = load %struct.device*, %struct.device** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %144

94:                                               ; preds = %84, %80, %76, %72
  %95 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %96 = load i32, i32* @PCIE_PORT_LINK_CONTROL, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %95, i32 %96, i32 %97)
  %99 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %100 = load i32, i32* @PCIE_LINK_WIDTH_SPEED_CONTROL, align 4
  %101 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %99, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @PORT_LOGIC_LINK_WIDTH_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  switch i32 %106, label %123 [
    i32 1, label %107
    i32 2, label %111
    i32 4, label %115
    i32 8, label %119
  ]

107:                                              ; preds = %94
  %108 = load i32, i32* @PORT_LOGIC_LINK_WIDTH_1_LANES, align 4
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  br label %123

111:                                              ; preds = %94
  %112 = load i32, i32* @PORT_LOGIC_LINK_WIDTH_2_LANES, align 4
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  br label %123

115:                                              ; preds = %94
  %116 = load i32, i32* @PORT_LOGIC_LINK_WIDTH_4_LANES, align 4
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %4, align 4
  br label %123

119:                                              ; preds = %94
  %120 = load i32, i32* @PORT_LOGIC_LINK_WIDTH_8_LANES, align 4
  %121 = load i32, i32* %4, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %94, %119, %115, %111, %107
  %124 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %125 = load i32, i32* @PCIE_LINK_WIDTH_SPEED_CONTROL, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %124, i32 %125, i32 %126)
  %128 = load %struct.device_node*, %struct.device_node** %7, align 8
  %129 = call i64 @of_property_read_bool(%struct.device_node* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %123
  %132 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %133 = load i32, i32* @PCIE_PL_CHK_REG_CONTROL_STATUS, align 4
  %134 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %132, i32 %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* @PCIE_PL_CHK_REG_CHK_REG_CONTINUOUS, align 4
  %136 = load i32, i32* @PCIE_PL_CHK_REG_CHK_REG_START, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %4, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %4, align 4
  %140 = load %struct.dw_pcie*, %struct.dw_pcie** %2, align 8
  %141 = load i32, i32* @PCIE_PL_CHK_REG_CONTROL_STATUS, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %58, %88, %131, %123
  ret void
}

declare dso_local i64 @dw_pcie_iatu_unroll_enabled(%struct.dw_pcie*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
