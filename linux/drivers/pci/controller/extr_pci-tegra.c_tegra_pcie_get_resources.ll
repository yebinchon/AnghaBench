; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i32, i8*, %struct.resource, i8*, i8*, %struct.tegra_pcie_soc*, %struct.device* }
%struct.resource = type { i64, i64 }
%struct.tegra_pcie_soc = type { i64 }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to get clocks: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get resets: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to get PHYs: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"pads\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"afi\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to get IRQ: %d\0A\00", align 1
@tegra_pcie_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"PCIE\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to register IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_get_resources(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.tegra_pcie_soc*, align 8
  %10 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %11 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %11, i32 0, i32 6
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.platform_device* @to_platform_device(%struct.device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %5, align 8
  %16 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %16, i32 0, i32 5
  %18 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %17, align 8
  store %struct.tegra_pcie_soc* %18, %struct.tegra_pcie_soc** %9, align 8
  %19 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %20 = call i32 @tegra_pcie_clocks_get(%struct.tegra_pcie* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %2, align 4
  br label %170

28:                                               ; preds = %1
  %29 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %30 = call i32 @tegra_pcie_resets_get(%struct.tegra_pcie* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %2, align 4
  br label %170

38:                                               ; preds = %28
  %39 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %9, align 8
  %40 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %45 = call i32 @tegra_pcie_phys_get(%struct.tegra_pcie* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %2, align 4
  br label %170

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %56 = load i32, i32* @IORESOURCE_MEM, align 4
  %57 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %55, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %57, %struct.resource** %6, align 8
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = call i8* @devm_ioremap_resource(%struct.device* %58, %struct.resource* %59)
  %61 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %62 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %54
  %69 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %70 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  store i32 %72, i32* %10, align 4
  br label %160

73:                                               ; preds = %54
  %74 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %75 = load i32, i32* @IORESOURCE_MEM, align 4
  %76 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %74, i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store %struct.resource* %76, %struct.resource** %7, align 8
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.resource*, %struct.resource** %7, align 8
  %79 = call i8* @devm_ioremap_resource(%struct.device* %77, %struct.resource* %78)
  %80 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %81 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %83 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @IS_ERR(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %89 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @PTR_ERR(i8* %90)
  store i32 %91, i32* %10, align 4
  br label %160

92:                                               ; preds = %73
  %93 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %94 = load i32, i32* @IORESOURCE_MEM, align 4
  %95 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %93, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store %struct.resource* %95, %struct.resource** %8, align 8
  %96 = load %struct.resource*, %struct.resource** %8, align 8
  %97 = icmp ne %struct.resource* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @EADDRNOTAVAIL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %160

101:                                              ; preds = %92
  %102 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %103 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %102, i32 0, i32 2
  %104 = load %struct.resource*, %struct.resource** %8, align 8
  %105 = bitcast %struct.resource* %103 to i8*
  %106 = bitcast %struct.resource* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  %107 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SZ_4K, align 8
  %112 = add nsw i64 %110, %111
  %113 = sub nsw i64 %112, 1
  %114 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %115 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.resource, %struct.resource* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %119 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %118, i32 0, i32 2
  %120 = call i8* @devm_ioremap_resource(%struct.device* %117, %struct.resource* %119)
  %121 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %122 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %124 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @IS_ERR(i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %101
  %129 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %130 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @PTR_ERR(i8* %131)
  store i32 %132, i32* %10, align 4
  br label %160

133:                                              ; preds = %101
  %134 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %135 = call i32 @platform_get_irq_byname(%struct.platform_device* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @dev_err(%struct.device* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  br label %160

142:                                              ; preds = %133
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %145 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %147 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @tegra_pcie_isr, align 4
  %150 = load i32, i32* @IRQF_SHARED, align 4
  %151 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %152 = call i32 @request_irq(i32 %148, i32 %149, i32 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %struct.tegra_pcie* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %142
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @dev_err(%struct.device* %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %157)
  br label %160

159:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %170

160:                                              ; preds = %155, %138, %128, %98, %87, %68
  %161 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %9, align 8
  %162 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %167 = call i32 @tegra_pcie_phys_put(%struct.tegra_pcie* %166)
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %168, %159, %48, %33, %23
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @tegra_pcie_clocks_get(%struct.tegra_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tegra_pcie_resets_get(%struct.tegra_pcie*) #1

declare dso_local i32 @tegra_pcie_phys_get(%struct.tegra_pcie*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.tegra_pcie*) #1

declare dso_local i32 @tegra_pcie_phys_put(%struct.tegra_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
