; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_pci_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_pci_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, %struct.pci_dev*, i8* }

@.str = private unnamed_addr constant [46 x i8] c"gdth_search_dev() cnt %d vendor %x device %x\0A\00", align 1
@gdth_ctr_count = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_VORTEX = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@MAXHA = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VORTEX_GDT6000B = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_VORTEX_GDT6x17RP = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@IORESOURCE_IO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Controller found at %d/%d, irq %d, dpmem 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @gdth_pci_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdth_pci_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  store i32* null, i32** %13, align 8
  %20 = load i64, i64* @gdth_ctr_count, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @TRACE(i8* %23)
  %25 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 32)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @PCI_VENDOR_ID_VORTEX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @gdth_search_vortex(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %126

36:                                               ; preds = %29, %2
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @pci_enable_device(%struct.pci_dev* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %3, align 4
  br label %126

43:                                               ; preds = %36
  %44 = load i64, i64* @gdth_ctr_count, align 8
  %45 = load i64, i64* @MAXHA, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %126

50:                                               ; preds = %43
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store %struct.pci_dev* %51, %struct.pci_dev** %52, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i64 @pci_resource_flags(%struct.pci_dev* %53, i32 0)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i64 @pci_resource_flags(%struct.pci_dev* %55, i32 1)
  store i64 %56, i64* %9, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i64 @pci_resource_flags(%struct.pci_dev* %57, i32 2)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @PCI_DEVICE_ID_VORTEX_GDT6000B, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %50
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @PCI_DEVICE_ID_VORTEX_GDT6x17RP, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62, %50
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @IORESOURCE_MEM, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %126

74:                                               ; preds = %66
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i8* @pci_resource_start(%struct.pci_dev* %75, i32 0)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  br label %103

78:                                               ; preds = %62
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @IORESOURCE_MEM, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @IORESOURCE_MEM, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @IORESOURCE_IO, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88, %83, %78
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %126

96:                                               ; preds = %88
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = call i8* @pci_resource_start(%struct.pci_dev* %97, i32 2)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = call i8* @pci_resource_start(%struct.pci_dev* %100, i32 1)
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i8* %101, i8** %102, align 8
  br label %103

103:                                              ; preds = %96, %74
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %105 = load %struct.pci_dev*, %struct.pci_dev** %104, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %111 = load %struct.pci_dev*, %struct.pci_dev** %110, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @PCI_SLOT(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @TRACE2(i8* %118)
  %120 = call i32 @gdth_pci_probe_one(%struct.TYPE_6__* %12, i32** %13)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %103
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123, %93, %71, %47, %41, %33
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @gdth_search_vortex(i64) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @TRACE2(i8*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @gdth_pci_probe_one(%struct.TYPE_6__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
