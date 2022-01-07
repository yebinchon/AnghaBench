; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_pcie_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_pcie_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i32, i8*, %struct.TYPE_2__*, i8*, %struct.platform_device* }
%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Cra\00", align 1
@ALTERA_PCIE_V2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"Hip\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get IRQ: %d\0A\00", align 1
@altera_pcie_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_pcie*)* @altera_pcie_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_pcie_parse_dt(%struct.altera_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.altera_pcie* %0, %struct.altera_pcie** %3, align 8
  %8 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %8, i32 0, i32 4
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %12, i32 0, i32 4
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %17, %struct.resource** %6, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.resource*, %struct.resource** %6, align 8
  %20 = call i8* @devm_ioremap_resource(%struct.device* %18, %struct.resource* %19)
  %21 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %22 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %24 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %30 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %2, align 4
  br label %87

33:                                               ; preds = %1
  %34 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %35 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ALTERA_PCIE_V2, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %33
  %42 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %42, i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %44, %struct.resource** %7, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = call i8* @devm_ioremap_resource(%struct.device* %46, %struct.resource* %47)
  %49 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %50 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %52 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %58 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  store i32 %60, i32* %2, align 4
  br label %87

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61, %33
  %63 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %64 = call i32 @platform_get_irq(%struct.platform_device* %63, i32 0)
  %65 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %66 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %68 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %74 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %78 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %2, align 4
  br label %87

80:                                               ; preds = %62
  %81 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %82 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @altera_pcie_isr, align 4
  %85 = load %struct.altera_pcie*, %struct.altera_pcie** %3, align 8
  %86 = call i32 @irq_set_chained_handler_and_data(i32 %83, i32 %84, %struct.altera_pcie* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %80, %71, %56, %28
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.altera_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
