; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_check_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_check_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i64, i32, i32 }
%struct._pcie_device = type { i8*, i8*, i64, i32, %struct.scsi_target* }
%struct.scsi_target = type { %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i8* }

@MPI26_PCIE_DEVICE_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"handle changed from(0x%04x) to (0x%04x)!!!\0A\00", align 1
@MPI26_PCIEDEV0_FLAGS_ENCL_LEVEL_VALID = common dso_local global i32 0, align 4
@MPI26_PCIEDEV0_FLAGS_DEVICE_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"device is not present handle(0x%04x), flags!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i8*)* @_scsih_pcie_check_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_pcie_check_device(%struct.MPT3SAS_ADAPTER* %0, i8* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._pcie_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.scsi_target*, align 8
  %12 = alloca %struct.MPT3SAS_TARGET*, align 8
  %13 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %15 = load i32, i32* @MPI26_PCIE_DEVICE_PGAD_FORM_HANDLE, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @mpt3sas_config_get_pcie_device_pg0(%struct.MPT3SAS_ADAPTER* %14, %struct.TYPE_5__* %5, %struct.TYPE_6__* %6, i32 %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %158

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %158

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @_scsih_is_nvme_pciescsi_device(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %158

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le64_to_cpu(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %43 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %42, i32 0, i32 0
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call %struct._pcie_device* @__mpt3sas_get_pdev_by_wwid(%struct.MPT3SAS_ADAPTER* %46, i32 %47)
  store %struct._pcie_device* %48, %struct._pcie_device** %8, align 8
  %49 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %50 = icmp ne %struct._pcie_device* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %38
  %52 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %53 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %52, i32 0, i32 0
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %158

56:                                               ; preds = %38
  %57 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %58 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %116

65:                                               ; preds = %56
  %66 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %67 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %66, i32 0, i32 4
  %68 = load %struct.scsi_target*, %struct.scsi_target** %67, align 8
  store %struct.scsi_target* %68, %struct.scsi_target** %11, align 8
  %69 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %70 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %69, i32 0, i32 0
  %71 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %70, align 8
  store %struct.MPT3SAS_TARGET* %71, %struct.MPT3SAS_TARGET** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %75 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %78 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %79 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @starget_printk(i32 %76, %struct.scsi_target* %77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %80, i8* %81)
  %83 = load i8*, i8** %4, align 8
  %84 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %12, align 8
  %85 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %88 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = load i32, i32* @MPI26_PCIEDEV0_FLAGS_ENCL_LEVEL_VALID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %65
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %99 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %101 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = call i32 @memcpy(i8* %103, i32* %106, i32 4)
  br label %115

108:                                              ; preds = %65
  %109 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %110 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %112 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %108, %95
  br label %116

116:                                              ; preds = %115, %56
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le32_to_cpu(i32 %118)
  %120 = load i32, i32* @MPI26_PCIEDEV0_FLAGS_DEVICE_PRESENT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %116
  %124 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %124, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  %127 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %128 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %127, i32 0, i32 0
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %132 = call i32 @pcie_device_put(%struct._pcie_device* %131)
  br label %158

133:                                              ; preds = %116
  %134 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @_scsih_check_pcie_access_status(%struct.MPT3SAS_ADAPTER* %134, i32 %135, i8* %136, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %133
  %142 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %143 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %142, i32 0, i32 0
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  %146 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %147 = call i32 @pcie_device_put(%struct._pcie_device* %146)
  br label %158

148:                                              ; preds = %133
  %149 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %150 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %149, i32 0, i32 0
  %151 = load i64, i64* %10, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  %153 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %154 = call i32 @pcie_device_put(%struct._pcie_device* %153)
  %155 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @_scsih_ublock_io_device(%struct.MPT3SAS_ADAPTER* %155, i32 %156)
  br label %158

158:                                              ; preds = %148, %141, %123, %51, %37, %29, %19
  ret void
}

declare dso_local i64 @mpt3sas_config_get_pcie_device_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @_scsih_is_nvme_pciescsi_device(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._pcie_device* @__mpt3sas_get_pdev_by_wwid(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i8*) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

declare dso_local i64 @_scsih_check_pcie_access_status(%struct.MPT3SAS_ADAPTER*, i32, i8*, i32) #1

declare dso_local i32 @_scsih_ublock_io_device(%struct.MPT3SAS_ADAPTER*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
