; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_dc395x_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_dc395x_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.AdapterCtlBlk = type { %struct.pci_dev*, %struct.Scsi_Host* }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Init one instance (%s)\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"PCI Enable device failed.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_IO_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"IO_PORT=0x%04lx, IRQ=0x%x\0A\00", align 1
@dc395x_driver_template = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"scsi_host_alloc failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"adapter init failed\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"scsi_add_host failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @dc395x_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc395x_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.AdapterCtlBlk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %6, align 8
  store %struct.AdapterCtlBlk* null, %struct.AdapterCtlBlk** %7, align 8
  %11 = load i32, i32* @DBG_0, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pci_name(%struct.pci_dev* %12)
  %14 = sext i32 %13 to i64
  %15 = call i32 (i32, i8*, i64, ...) @dprintkdbg(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = call i32 (...) @banner_display()
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i64 @pci_enable_device(%struct.pci_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @KERN_INFO, align 4
  %22 = call i32 @dprintkl(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %101

25:                                               ; preds = %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i64 @pci_resource_start(%struct.pci_dev* %26, i32 0)
  %28 = load i64, i64* @PCI_BASE_ADDRESS_IO_MASK, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %8, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_resource_len(%struct.pci_dev* %30, i32 0)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @DBG_0, align 4
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i64, ...) @dprintkdbg(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %36, i32 %39)
  %41 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @dc395x_driver_template, i32 16)
  store %struct.Scsi_Host* %41, %struct.Scsi_Host** %6, align 8
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %43 = icmp ne %struct.Scsi_Host* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %25
  %45 = load i32, i32* @KERN_INFO, align 4
  %46 = call i32 @dprintkl(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %84

47:                                               ; preds = %25
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.AdapterCtlBlk*
  store %struct.AdapterCtlBlk* %51, %struct.AdapterCtlBlk** %7, align 8
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %53 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %7, align 8
  %54 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %53, i32 0, i32 1
  store %struct.Scsi_Host* %52, %struct.Scsi_Host** %54, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %7, align 8
  %57 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %56, i32 0, i32 0
  store %struct.pci_dev* %55, %struct.pci_dev** %57, align 8
  %58 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @adapter_init(%struct.AdapterCtlBlk* %58, i64 %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load i32, i32* @KERN_INFO, align 4
  %66 = call i32 @dprintkl(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %84

67:                                               ; preds = %47
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_set_master(%struct.pci_dev* %68)
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 1
  %73 = call i64 @scsi_add_host(%struct.Scsi_Host* %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @KERN_ERR, align 4
  %77 = call i32 @dprintkl(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %84

78:                                               ; preds = %67
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %81 = call i32 @pci_set_drvdata(%struct.pci_dev* %79, %struct.Scsi_Host* %80)
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %83 = call i32 @scsi_scan_host(%struct.Scsi_Host* %82)
  store i32 0, i32* %3, align 4
  br label %101

84:                                               ; preds = %75, %64, %44
  %85 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %7, align 8
  %86 = icmp ne %struct.AdapterCtlBlk* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %7, align 8
  %89 = call i32 @adapter_uninit(%struct.AdapterCtlBlk* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %92 = icmp ne %struct.Scsi_Host* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %95 = call i32 @scsi_host_put(%struct.Scsi_Host* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = call i32 @pci_disable_device(%struct.pci_dev* %97)
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %78, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @dprintkdbg(i32, i8*, i64, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @banner_display(...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dprintkl(i32, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i64 @adapter_init(%struct.AdapterCtlBlk*, i64, i32, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @adapter_uninit(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
