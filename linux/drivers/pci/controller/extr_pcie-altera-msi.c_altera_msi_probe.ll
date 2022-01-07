; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera-msi.c_altera_msi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera-msi.c_altera_msi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.altera_msi = type { i32, i32, i32, i8*, i8*, %struct.platform_device*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"csr\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to map csr memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"vector_slave\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to map vector_slave memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"num-vectors\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to parse the number of vectors\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to map IRQ: %d\0A\00", align 1
@altera_msi_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @altera_msi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_msi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.altera_msi*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.altera_msi* @devm_kzalloc(%struct.TYPE_4__* %13, i32 48, i32 %14)
  store %struct.altera_msi* %15, %struct.altera_msi** %4, align 8
  %16 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %17 = icmp ne %struct.altera_msi* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %130

21:                                               ; preds = %1
  %22 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %23 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %22, i32 0, i32 6
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %27 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %26, i32 0, i32 5
  store %struct.platform_device* %25, %struct.platform_device** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %28, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %30, %struct.resource** %6, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = call i8* @devm_ioremap_resource(%struct.TYPE_4__* %32, %struct.resource* %33)
  %35 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %36 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %38 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %21
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %47 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %2, align 4
  br label %130

50:                                               ; preds = %21
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load i32, i32* @IORESOURCE_MEM, align 4
  %53 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %51, i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %53, %struct.resource** %6, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = call i8* @devm_ioremap_resource(%struct.TYPE_4__* %55, %struct.resource* %56)
  %58 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %59 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %61 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %50
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %70 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  store i32 %72, i32* %2, align 4
  br label %130

73:                                               ; preds = %50
  %74 = load %struct.resource*, %struct.resource** %6, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %78 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.device_node*, %struct.device_node** %5, align 8
  %80 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %81 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %80, i32 0, i32 1
  %82 = call i64 @of_property_read_u32(%struct.device_node* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %130

90:                                               ; preds = %73
  %91 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %92 = call i32 @altera_allocate_domains(%struct.altera_msi* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %130

97:                                               ; preds = %90
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = call i32 @platform_get_irq(%struct.platform_device* %98, i32 0)
  %100 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %101 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %103 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %97
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %110 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %114 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %7, align 4
  br label %126

116:                                              ; preds = %97
  %117 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %118 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @altera_msi_isr, align 4
  %121 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %122 = call i32 @irq_set_chained_handler_and_data(i32 %119, i32 %120, %struct.altera_msi* %121)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load %struct.altera_msi*, %struct.altera_msi** %4, align 8
  %125 = call i32 @platform_set_drvdata(%struct.platform_device* %123, %struct.altera_msi* %124)
  store i32 0, i32* %2, align 4
  br label %130

126:                                              ; preds = %106
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = call i32 @altera_msi_remove(%struct.platform_device* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %116, %95, %84, %65, %42, %18
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.altera_msi* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_4__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @altera_allocate_domains(%struct.altera_msi*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.altera_msi*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.altera_msi*) #1

declare dso_local i32 @altera_msi_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
