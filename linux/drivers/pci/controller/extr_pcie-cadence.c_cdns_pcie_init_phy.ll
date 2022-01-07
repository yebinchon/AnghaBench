; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cdns_pcie = type { i32, %struct.device_link**, %struct.phy** }
%struct.device_link = type { i32 }
%struct.phy = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"phy-names\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"no phy-names.  PHY will not be initialized\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DL_FLAG_STATELESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns_pcie_init_phy(%struct.device* %0, %struct.cdns_pcie* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cdns_pcie*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy**, align 8
  %9 = alloca %struct.device_link**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cdns_pcie* %1, %struct.cdns_pcie** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = call i32 @of_property_count_strings(%struct.device_node* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %24 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  store i32 0, i32* %3, align 4
  br label %148

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kcalloc(%struct.device* %26, i32 %27, i32 8, i32 %28)
  %30 = bitcast i8* %29 to %struct.phy**
  store %struct.phy** %30, %struct.phy*** %8, align 8
  %31 = load %struct.phy**, %struct.phy*** %8, align 8
  %32 = icmp ne %struct.phy** %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %148

36:                                               ; preds = %25
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kcalloc(%struct.device* %37, i32 %38, i32 8, i32 %39)
  %41 = bitcast i8* %40 to %struct.device_link**
  store %struct.device_link** %41, %struct.device_link*** %9, align 8
  %42 = load %struct.device_link**, %struct.device_link*** %9, align 8
  %43 = icmp ne %struct.device_link** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %148

47:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %108, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %111

52:                                               ; preds = %48
  %53 = load %struct.device_node*, %struct.device_node** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @of_property_read_string_index(%struct.device_node* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %54, i8** %12)
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call %struct.phy* @devm_phy_get(%struct.device* %56, i8* %57)
  %59 = load %struct.phy**, %struct.phy*** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.phy*, %struct.phy** %59, i64 %61
  store %struct.phy* %58, %struct.phy** %62, align 8
  %63 = load %struct.phy**, %struct.phy*** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.phy*, %struct.phy** %63, i64 %65
  %67 = load %struct.phy*, %struct.phy** %66, align 8
  %68 = call i64 @IS_ERR(%struct.phy* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %52
  %71 = load %struct.phy**, %struct.phy*** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.phy*, %struct.phy** %71, i64 %73
  %75 = load %struct.phy*, %struct.phy** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.phy* %75)
  store i32 %76, i32* %11, align 4
  br label %127

77:                                               ; preds = %52
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.phy**, %struct.phy*** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.phy*, %struct.phy** %79, i64 %81
  %83 = load %struct.phy*, %struct.phy** %82, align 8
  %84 = getelementptr inbounds %struct.phy, %struct.phy* %83, i32 0, i32 0
  %85 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %86 = call %struct.device_link* @device_link_add(%struct.device* %78, i32* %84, i32 %85)
  %87 = load %struct.device_link**, %struct.device_link*** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.device_link*, %struct.device_link** %87, i64 %89
  store %struct.device_link* %86, %struct.device_link** %90, align 8
  %91 = load %struct.device_link**, %struct.device_link*** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.device_link*, %struct.device_link** %91, i64 %93
  %95 = load %struct.device_link*, %struct.device_link** %94, align 8
  %96 = icmp ne %struct.device_link* %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %77
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load %struct.phy**, %struct.phy*** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.phy*, %struct.phy** %99, i64 %101
  %103 = load %struct.phy*, %struct.phy** %102, align 8
  %104 = call i32 @devm_phy_put(%struct.device* %98, %struct.phy* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  br label %127

107:                                              ; preds = %77
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %48

111:                                              ; preds = %48
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %114 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.phy**, %struct.phy*** %8, align 8
  %116 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %117 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %116, i32 0, i32 2
  store %struct.phy** %115, %struct.phy*** %117, align 8
  %118 = load %struct.device_link**, %struct.device_link*** %9, align 8
  %119 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %120 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %119, i32 0, i32 1
  store %struct.device_link** %118, %struct.device_link*** %120, align 8
  %121 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %122 = call i32 @cdns_pcie_enable_phy(%struct.cdns_pcie* %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %127

126:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %148

127:                                              ; preds = %125, %97, %70
  br label %128

128:                                              ; preds = %132, %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %10, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load %struct.device_link**, %struct.device_link*** %9, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.device_link*, %struct.device_link** %133, i64 %135
  %137 = load %struct.device_link*, %struct.device_link** %136, align 8
  %138 = call i32 @device_link_del(%struct.device_link* %137)
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = load %struct.phy**, %struct.phy*** %8, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.phy*, %struct.phy** %140, i64 %142
  %144 = load %struct.phy*, %struct.phy** %143, align 8
  %145 = call i32 @devm_phy_put(%struct.device* %139, %struct.phy* %144)
  br label %128

146:                                              ; preds = %128
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %126, %44, %33, %20
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local %struct.phy* @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local %struct.device_link* @device_link_add(%struct.device*, i32*, i32) #1

declare dso_local i32 @devm_phy_put(%struct.device*, %struct.phy*) #1

declare dso_local i32 @cdns_pcie_enable_phy(%struct.cdns_pcie*) #1

declare dso_local i32 @device_link_del(%struct.device_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
