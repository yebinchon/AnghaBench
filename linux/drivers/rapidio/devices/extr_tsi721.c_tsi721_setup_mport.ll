; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_setup_mport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_setup_mport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i64, i32, %struct.rio_mport, %struct.pci_dev* }
%struct.rio_mport = type { i32, i32, i64, i32, i32*, i32, %struct.TYPE_2__, i8*, i64, i64, i32* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.pci_dev = type { i32, i32 }

@tsi721_rio_ops = common dso_local global i32 0, align 4
@tsi721_mport_release = common dso_local global i32 0, align 4
@RIO_DOORBELL_RESOURCE = common dso_local global i64 0, align 8
@RIO_INB_MBOX_RESOURCE = common dso_local global i64 0, align 8
@RIO_OUTB_MBOX_RESOURCE = common dso_local global i64 0, align 8
@RIO_MAX_MPORT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to get PCI IRQ %02X (err=0x%x)\00", align 1
@TSI721_DEVCTL = common dso_local global i64 0, align 8
@TSI721_DEVCTL_SRBOOT_CMPL = common dso_local global i32 0, align 4
@RIO_PORT_GEN_HOST = common dso_local global i32 0, align 4
@RIO_PORT_GEN_MASTER = common dso_local global i32 0, align 4
@RIO_PORT_GEN_DISCOVERED = common dso_local global i32 0, align 4
@RIO_PORT_GEN_CTL_CSR = common dso_local global i64 0, align 8
@MPORT = common dso_local global i32 0, align 4
@TSI721_USING_MSI = common dso_local global i32 0, align 4
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_device*)* @tsi721_setup_mport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_setup_mport(%struct.tsi721_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsi721_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  store %struct.tsi721_device* %0, %struct.tsi721_device** %3, align 8
  %7 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %8 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %7, i32 0, i32 3
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %11 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %10, i32 0, i32 2
  store %struct.rio_mport* %11, %struct.rio_mport** %6, align 8
  %12 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %13 = call i32 @rio_mport_initialize(%struct.rio_mport* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %140

18:                                               ; preds = %1
  %19 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %20 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %19, i32 0, i32 10
  store i32* @tsi721_rio_ops, i32** %20, align 8
  %21 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %22 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %21, i32 0, i32 9
  store i64 0, i64* %22, align 8
  %23 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %24 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %26 = bitcast %struct.tsi721_device* %25 to i8*
  %27 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %28 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %30 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %29, i32 0, i32 0
  store i32 256, i32* %30, align 8
  %31 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %32 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 1
  %35 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %36 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32* %34, i32** %37, align 8
  %38 = load i32, i32* @tsi721_mport_release, align 4
  %39 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %40 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %43 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %42, i32 0, i32 5
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %46 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @RIO_DOORBELL_RESOURCE, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @rio_init_dbell_res(i32* %49, i32 0, i32 65535)
  %51 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %52 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @RIO_INB_MBOX_RESOURCE, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = call i32 @rio_init_mbox_res(i32* %55, i32 0, i32 3)
  %57 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %58 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @RIO_OUTB_MBOX_RESOURCE, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = call i32 @rio_init_mbox_res(i32* %61, i32 0, i32 3)
  %63 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %64 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @RIO_MAX_MPORT_NAME, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 1
  %69 = call i8* @dev_driver_string(i32* %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 1
  %72 = call i8* @dev_name(i32* %71)
  %73 = call i32 @snprintf(i32 %65, i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %69, i8* %72)
  %74 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %75 = call i32 @tsi721_request_irq(%struct.tsi721_device* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %18
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 1
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @tsi_err(i32* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %140

87:                                               ; preds = %18
  %88 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %89 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TSI721_DEVCTL, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @ioread32(i64 %92)
  %94 = load i32, i32* @TSI721_DEVCTL_SRBOOT_CMPL, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %97 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TSI721_DEVCTL, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @iowrite32(i32 %95, i64 %100)
  %102 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %103 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %87
  %107 = load i32, i32* @RIO_PORT_GEN_HOST, align 4
  %108 = load i32, i32* @RIO_PORT_GEN_MASTER, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @RIO_PORT_GEN_DISCOVERED, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %113 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RIO_PORT_GEN_CTL_CSR, align 8
  %116 = add nsw i64 256, %115
  %117 = add nsw i64 %114, %116
  %118 = call i32 @iowrite32(i32 %111, i64 %117)
  br label %127

119:                                              ; preds = %87
  %120 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %121 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @RIO_PORT_GEN_CTL_CSR, align 8
  %124 = add nsw i64 256, %123
  %125 = add nsw i64 %122, %124
  %126 = call i32 @iowrite32(i32 0, i64 %125)
  br label %127

127:                                              ; preds = %119, %106
  %128 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %129 = call i32 @rio_register_mport(%struct.rio_mport* %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %134 = call i32 @tsi721_unregister_dma(%struct.tsi721_device* %133)
  br label %136

135:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %140

136:                                              ; preds = %132
  %137 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %138 = call i32 @tsi721_free_irq(%struct.tsi721_device* %137)
  %139 = load i32, i32* %5, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %135, %78, %16
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @rio_mport_initialize(%struct.rio_mport*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rio_init_dbell_res(i32*, i32, i32) #1

declare dso_local i32 @rio_init_mbox_res(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_driver_string(i32*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @tsi721_request_irq(%struct.tsi721_device*) #1

declare dso_local i32 @tsi_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @rio_register_mport(%struct.rio_mport*) #1

declare dso_local i32 @tsi721_unregister_dma(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_free_irq(%struct.tsi721_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
