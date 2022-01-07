; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_map_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_map_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"No %s specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smem*, %struct.device*, i8*, i32)* @qcom_smem_map_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smem_map_memory(%struct.qcom_smem* %0, %struct.device* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_smem*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.resource, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qcom_smem* %0, %struct.qcom_smem** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.device_node* @of_parse_phandle(i32 %16, i8* %17, i32 0)
  store %struct.device_node* %18, %struct.device_node** %10, align 8
  %19 = load %struct.device_node*, %struct.device_node** %10, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %80

27:                                               ; preds = %4
  %28 = load %struct.device_node*, %struct.device_node** %10, align 8
  %29 = call i32 @of_address_to_resource(%struct.device_node* %28, i32 0, %struct.resource* %11)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.device_node*, %struct.device_node** %10, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %80

36:                                               ; preds = %27
  %37 = call i32 @resource_size(%struct.resource* %11)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @devm_ioremap_wc(%struct.device* %38, i64 %40, i32 %41)
  %43 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %44 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %42, i32* %49, align 8
  %50 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %51 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %36
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %80

62:                                               ; preds = %36
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %66 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 %64, i64* %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %74 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 8
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %62, %59, %34, %21
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_wc(%struct.device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
