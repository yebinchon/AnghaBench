; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_init_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_init_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_adsp = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to map QDSP6SS registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"qcom,halt-regs\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to parse qcom,halt-regs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"no offset in syscon\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_adsp*, %struct.platform_device*)* @adsp_init_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_init_mmio(%struct.qcom_adsp* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_adsp*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.qcom_adsp* %0, %struct.qcom_adsp** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load %struct.resource*, %struct.resource** %7, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.resource*, %struct.resource** %7, align 8
  %18 = call i32 @resource_size(%struct.resource* %17)
  %19 = call i32 @devm_ioremap(%struct.TYPE_3__* %13, i32 %16, i32 %18)
  %20 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %21 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %28 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @dev_err(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %80

33:                                               ; preds = %2
  %34 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.device_node* @of_parse_phandle(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %38, %struct.device_node** %6, align 8
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = icmp ne %struct.device_node* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(%struct.TYPE_3__* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %33
  %48 = load %struct.device_node*, %struct.device_node** %6, align 8
  %49 = call i32 @syscon_node_to_regmap(%struct.device_node* %48)
  %50 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %51 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.device_node*, %struct.device_node** %6, align 8
  %53 = call i32 @of_node_put(%struct.device_node* %52)
  %54 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %55 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %61 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %80

64:                                               ; preds = %47
  %65 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %70 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %69, i32 0, i32 0
  %71 = call i32 @of_property_read_u32_index(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(%struct.TYPE_3__* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %74, %59, %41, %26
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32_index(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
