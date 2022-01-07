; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_iomap_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_iomap_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.pci_dev* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pci_bus_region = type { i32 }

@FE_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not map registers; giving up.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not map SRAM; continuing anyway.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_device*)* @sym_iomap_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_iomap_device(%struct.sym_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sym_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_bus_region, align 4
  %6 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %3, align 8
  %7 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %8 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %7, i32 0, i32 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  store i32 2, i32* %6, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 1
  %17 = call i32 @pcibios_resource_to_bus(i32 %12, %struct.pci_bus_region* %5, %struct.TYPE_6__* %16)
  %18 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %21 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %23 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FE_RAM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = call i32 @pcibios_resource_to_bus(i32 %45, %struct.pci_bus_region* %5, %struct.TYPE_6__* %51)
  %53 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %56 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %42, %1
  %58 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %59 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = call i32 @pci_resource_len(%struct.pci_dev* %65, i32 0)
  %67 = call i8* @pci_iomap(%struct.pci_dev* %64, i32 0, i32 %66)
  %68 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %69 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %57
  %72 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %73 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %111

83:                                               ; preds = %71
  %84 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %85 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @pci_resource_len(%struct.pci_dev* %91, i32 %92)
  %94 = call i8* @pci_iomap(%struct.pci_dev* %89, i32 %90, i32 %93)
  %95 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %96 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %99 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %88
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = call i32 @dev_warn(i32* %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %108 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %103, %88
  br label %110

110:                                              ; preds = %109, %83
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %77
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, %struct.TYPE_6__*) #1

declare dso_local i8* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
