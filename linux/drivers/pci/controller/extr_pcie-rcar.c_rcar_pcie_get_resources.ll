; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { %struct.TYPE_2__, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pcie_bus\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot get pcie bus clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot get platform resources for msi interrupt\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pcie*)* @rcar_pcie_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_get_resources(%struct.rcar_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %3, align 8
  %8 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %8, i32 0, i32 4
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @devm_phy_optional_get(%struct.device* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %14 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %16 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %22 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @PTR_ERR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %107

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @of_address_to_resource(i32 %28, i32 0, %struct.resource* %5)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %107

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @devm_ioremap_resource(%struct.device* %35, %struct.resource* %5)
  %37 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %38 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %40 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %46 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %107

49:                                               ; preds = %34
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @devm_clk_get(%struct.device* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %53 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %55 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %63 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %107

66:                                               ; preds = %49
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @irq_of_parse_and_map(i32 %69, i32 0)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %105

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %81 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = getelementptr inbounds %struct.device, %struct.device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @irq_of_parse_and_map(i32 %85, i32 1)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %78
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %99

94:                                               ; preds = %78
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %97 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  store i32 0, i32* %2, align 4
  br label %107

99:                                               ; preds = %89
  %100 = load %struct.rcar_pcie*, %struct.rcar_pcie** %3, align 8
  %101 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @irq_dispose_mapping(i32 %103)
  br label %105

105:                                              ; preds = %99, %73
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %94, %59, %44, %32, %20
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @devm_phy_optional_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
