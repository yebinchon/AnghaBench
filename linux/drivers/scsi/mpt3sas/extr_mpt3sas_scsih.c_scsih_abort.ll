; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_4__*, {}* }
%struct.TYPE_4__ = type { i32, %struct.MPT3SAS_DEVICE*, i32 }
%struct.MPT3SAS_DEVICE = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i32, i64 }
%struct.scsiio_tracker = type { i32, i32, i32 }
%struct._pcie_device = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"attempting task abort! scmd(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"device been deleted! scmd(%p)\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"task abort: %s scmd(%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @scsih_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsih_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.MPT3SAS_DEVICE*, align 8
  %5 = alloca %struct.scsiio_tracker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._pcie_device*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.MPT3SAS_ADAPTER* @shost_priv(i32 %14)
  store %struct.MPT3SAS_ADAPTER* %15, %struct.MPT3SAS_ADAPTER** %3, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %17 = call %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd* %16)
  store %struct.scsiio_tracker* %17, %struct.scsiio_tracker** %5, align 8
  store i32 30, i32* %8, align 4
  store %struct._pcie_device* null, %struct._pcie_device** %9, align 8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %23 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %18, %struct.TYPE_4__* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %22)
  %24 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %26 = call i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER* %24, %struct.scsi_cmnd* %25)
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %30, align 8
  store %struct.MPT3SAS_DEVICE* %31, %struct.MPT3SAS_DEVICE** %4, align 8
  %32 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %33 = icmp ne %struct.MPT3SAS_DEVICE* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %1
  %35 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %36 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %41 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39, %34, %1
  %45 = load i32, i32* @KERN_INFO, align 4
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %50 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %45, %struct.TYPE_4__* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %49)
  %51 = load i32, i32* @DID_NO_CONNECT, align 4
  %52 = shl i32 %51, 16
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 2
  %57 = bitcast {}** %56 to i32 (%struct.scsi_cmnd*)**
  %58 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %57, align 8
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %60 = call i32 %58(%struct.scsi_cmnd* %59)
  %61 = load i32, i32* @SUCCESS, align 4
  store i32 %61, i32* %7, align 4
  br label %156

62:                                               ; preds = %39
  %63 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %5, align 8
  %64 = icmp eq %struct.scsiio_tracker* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %5, align 8
  %67 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %76

70:                                               ; preds = %65, %62
  %71 = load i32, i32* @DID_RESET, align 4
  %72 = shl i32 %71, 16
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @SUCCESS, align 4
  store i32 %75, i32* %7, align 4
  br label %156

76:                                               ; preds = %65
  %77 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %78 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %76
  %86 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %87 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %85, %76
  %95 = load i32, i32* @DID_RESET, align 4
  %96 = shl i32 %95, 16
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @FAILED, align 4
  store i32 %99, i32* %7, align 4
  br label %156

100:                                              ; preds = %85
  %101 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %102 = call i32 @mpt3sas_halt_firmware(%struct.MPT3SAS_ADAPTER* %101)
  %103 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %104 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %6, align 4
  %108 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call %struct._pcie_device* @mpt3sas_get_pdev_by_handle(%struct.MPT3SAS_ADAPTER* %108, i32 %109)
  store %struct._pcie_device* %110, %struct._pcie_device** %9, align 8
  %111 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %112 = icmp ne %struct._pcie_device* %111, null
  br i1 %112, label %113, label %128

113:                                              ; preds = %100
  %114 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %115 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %120 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @mpt3sas_scsih_is_pcie_scsi_device(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %118
  %125 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %126 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %124, %118, %113, %100
  %129 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK, align 4
  %137 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %5, align 8
  %138 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %5, align 8
  %141 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @mpt3sas_scsih_issue_locked_tm(%struct.MPT3SAS_ADAPTER* %129, i32 %130, i32 %135, i32 %136, i32 %139, i32 %142, i32 %143, i32 0)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @SUCCESS, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %128
  %149 = load %struct.scsiio_tracker*, %struct.scsiio_tracker** %5, align 8
  %150 = getelementptr inbounds %struct.scsiio_tracker, %struct.scsiio_tracker* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 255
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @FAILED, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %153, %148, %128
  br label %156

156:                                              ; preds = %155, %94, %70, %44
  %157 = load i32, i32* @KERN_INFO, align 4
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %159 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @SUCCESS, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %167 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %157, %struct.TYPE_4__* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %165, %struct.scsi_cmnd* %166)
  %168 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %169 = icmp ne %struct._pcie_device* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = load %struct._pcie_device*, %struct._pcie_device** %9, align 8
  %172 = call i32 @pcie_device_put(%struct._pcie_device* %171)
  br label %173

173:                                              ; preds = %170, %156
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(i32) #1

declare dso_local %struct.scsiio_tracker* @scsi_cmd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @sdev_printk(i32, %struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*) #1

declare dso_local i32 @mpt3sas_halt_firmware(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local %struct._pcie_device* @mpt3sas_get_pdev_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @mpt3sas_scsih_is_pcie_scsi_device(i32) #1

declare dso_local i32 @mpt3sas_scsih_issue_locked_tm(%struct.MPT3SAS_ADAPTER*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
