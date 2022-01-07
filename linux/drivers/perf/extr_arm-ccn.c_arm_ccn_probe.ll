; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.arm_ccn = type { i32, i8*, i8*, i32, i32*, i32, i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLE = common dso_local global i32 0, align 4
@CCN_MN_ERRINT_STATUS = common dso_local global i64 0, align 8
@CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLED = common dso_local global i32 0, align 4
@CCN_MN_ERRINT_STATUS__PMU_EVENTS__ENABLE = common dso_local global i32 0, align 4
@arm_ccn_irq_handler = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@arm_ccn_get_nodes_num = common dso_local global i32 0, align 4
@arm_ccn_init_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arm_ccn_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_ccn_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arm_ccn*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.arm_ccn* @devm_kzalloc(i32* %9, i32 56, i32 %10)
  store %struct.arm_ccn* %11, %struct.arm_ccn** %4, align 8
  %12 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %13 = icmp ne %struct.arm_ccn* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %156

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %21 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %20, i32 0, i32 4
  store i32* %19, i32** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.arm_ccn* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %5, align 8
  %28 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %29 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = call i64 @devm_ioremap_resource(i32* %30, %struct.resource* %31)
  %33 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %34 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %33, i32 0, i32 6
  store i64 %32, i64* %34, align 8
  %35 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %36 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @IS_ERR(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %17
  %41 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %42 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @PTR_ERR(i64 %43)
  store i32 %44, i32* %2, align 4
  br label %156

45:                                               ; preds = %17
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_IRQ, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 0)
  store %struct.resource* %48, %struct.resource** %5, align 8
  %49 = load %struct.resource*, %struct.resource** %5, align 8
  %50 = icmp ne %struct.resource* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %156

54:                                               ; preds = %45
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLE, align 4
  %59 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %60 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CCN_MN_ERRINT_STATUS, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %66 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CCN_MN_ERRINT_STATUS, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  %71 = load i32, i32* @CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %54
  %75 = load i32, i32* @CCN_MN_ERRINT_STATUS__PMU_EVENTS__ENABLE, align 4
  %76 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %77 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CCN_MN_ERRINT_STATUS, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %83 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @arm_ccn_irq_handler, align 4
  %87 = load i32, i32* @IRQF_NOBALANCING, align 4
  %88 = load i32, i32* @IRQF_NO_THREAD, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %91 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @dev_name(i32* %92)
  %94 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %95 = call i32 @devm_request_irq(i32* %84, i32 %85, i32 %86, i32 %89, i32 %93, %struct.arm_ccn* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %74
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %156

100:                                              ; preds = %74
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %103 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %54
  %105 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %106 = load i32, i32* @arm_ccn_get_nodes_num, align 4
  %107 = call i32 @arm_ccn_for_each_valid_region(%struct.arm_ccn* %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %156

112:                                              ; preds = %104
  %113 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %114 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %117 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i8* @devm_kcalloc(i32* %115, i32 %118, i32 1, i32 %119)
  %121 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %122 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %124 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %127 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i8* @devm_kcalloc(i32* %125, i32 %128, i32 1, i32 %129)
  %131 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %132 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %134 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %112
  %138 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %139 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %137, %112
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %156

145:                                              ; preds = %137
  %146 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %147 = load i32, i32* @arm_ccn_init_nodes, align 4
  %148 = call i32 @arm_ccn_for_each_valid_region(%struct.arm_ccn* %146, i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %156

153:                                              ; preds = %145
  %154 = load %struct.arm_ccn*, %struct.arm_ccn** %4, align 8
  %155 = call i32 @arm_ccn_pmu_init(%struct.arm_ccn* %154)
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %153, %151, %142, %110, %98, %51, %40, %14
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.arm_ccn* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.arm_ccn*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.arm_ccn*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @arm_ccn_for_each_valid_region(%struct.arm_ccn*, i32) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @arm_ccn_pmu_init(%struct.arm_ccn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
