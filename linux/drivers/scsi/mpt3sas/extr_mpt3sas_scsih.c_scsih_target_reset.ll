; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_target_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_target_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, {}*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.MPT3SAS_DEVICE*, %struct.scsi_target*, i32 }
%struct.MPT3SAS_DEVICE = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.scsi_target = type { i32, %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i64 }
%struct._sas_device = type { i64 }
%struct._pcie_device = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"attempting target reset! scmd(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"target been deleted! scmd(%p)\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@MPI26_SCSITASKMGMT_MSGFLAGS_PROTOCOL_LVL_RST_PCIE = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"target reset: %s scmd(%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @scsih_target_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsih_target_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.MPT3SAS_DEVICE*, align 8
  %5 = alloca %struct._sas_device*, align 8
  %6 = alloca %struct._pcie_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_target*, align 8
  %12 = alloca %struct.MPT3SAS_TARGET*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.MPT3SAS_ADAPTER* @shost_priv(i32 %17)
  store %struct.MPT3SAS_ADAPTER* %18, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct._sas_device* null, %struct._sas_device** %5, align 8
  store %struct._pcie_device* null, %struct._pcie_device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 30, i32* %9, align 4
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.scsi_target*, %struct.scsi_target** %22, align 8
  store %struct.scsi_target* %23, %struct.scsi_target** %11, align 8
  %24 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %25 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %24, i32 0, i32 1
  %26 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %25, align 8
  store %struct.MPT3SAS_TARGET* %26, %struct.MPT3SAS_TARGET** %12, align 8
  %27 = load i32, i32* @KERN_INFO, align 4
  %28 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %30 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %27, %struct.scsi_target* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %29)
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %33 = call i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER* %31, %struct.scsi_cmnd* %32)
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %37, align 8
  store %struct.MPT3SAS_DEVICE* %38, %struct.MPT3SAS_DEVICE** %4, align 8
  %39 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %40 = icmp ne %struct.MPT3SAS_DEVICE* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %1
  %42 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %43 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %48 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46, %41, %1
  %52 = load i32, i32* @KERN_INFO, align 4
  %53 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %55 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %52, %struct.scsi_target* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %54)
  %56 = load i32, i32* @DID_NO_CONNECT, align 4
  %57 = shl i32 %56, 16
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 1
  %62 = bitcast {}** %61 to i32 (%struct.scsi_cmnd*)**
  %63 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %62, align 8
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %65 = call i32 %63(%struct.scsi_cmnd* %64)
  %66 = load i32, i32* @SUCCESS, align 4
  store i32 %66, i32* %10, align 4
  br label %144

67:                                               ; preds = %46
  store i64 0, i64* %7, align 8
  %68 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %69 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %78 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %12, align 8
  %79 = call %struct._sas_device* @mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER* %77, %struct.MPT3SAS_TARGET* %78)
  store %struct._sas_device* %79, %struct._sas_device** %5, align 8
  %80 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %81 = icmp ne %struct._sas_device* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %84 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %82, %76
  br label %93

87:                                               ; preds = %67
  %88 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %89 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %87, %86
  %94 = load i64, i64* %7, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @DID_RESET, align 4
  %98 = shl i32 %97, 16
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @FAILED, align 4
  store i32 %101, i32* %10, align 4
  br label %144

102:                                              ; preds = %93
  %103 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call %struct._pcie_device* @mpt3sas_get_pdev_by_handle(%struct.MPT3SAS_ADAPTER* %103, i64 %104)
  store %struct._pcie_device* %105, %struct._pcie_device** %6, align 8
  %106 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %107 = icmp ne %struct._pcie_device* %106, null
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %110 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %108
  %114 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %115 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @mpt3sas_scsih_is_pcie_scsi_device(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %121 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* @MPI26_SCSITASKMGMT_MSGFLAGS_PROTOCOL_LVL_RST_PCIE, align 4
  store i32 %123, i32* %8, align 4
  br label %126

124:                                              ; preds = %113, %108, %102
  %125 = load i32, i32* @MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %124, %119
  %127 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i32, i32* @MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @mpt3sas_scsih_issue_locked_tm(%struct.MPT3SAS_ADAPTER* %127, i64 %128, i32 0, i32 %129, i32 0, i32 0, i32 %130, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @SUCCESS, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %126
  %137 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %138 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %137, i32 0, i32 0
  %139 = call i64 @atomic_read(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @FAILED, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %141, %136, %126
  br label %144

144:                                              ; preds = %143, %96, %51
  %145 = load i32, i32* @KERN_INFO, align 4
  %146 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @SUCCESS, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %153 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %145, %struct.scsi_target* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %151, %struct.scsi_cmnd* %152)
  %154 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %155 = icmp ne %struct._sas_device* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %158 = call i32 @sas_device_put(%struct._sas_device* %157)
  br label %159

159:                                              ; preds = %156, %144
  %160 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %161 = icmp ne %struct._pcie_device* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %164 = call i32 @pcie_device_put(%struct._pcie_device* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %10, align 4
  ret i32 %166
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(i32) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*, ...) #1

declare dso_local i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*) #1

declare dso_local %struct._sas_device* @mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_TARGET*) #1

declare dso_local %struct._pcie_device* @mpt3sas_get_pdev_by_handle(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @mpt3sas_scsih_is_pcie_scsi_device(i32) #1

declare dso_local i32 @mpt3sas_scsih_issue_locked_tm(%struct.MPT3SAS_ADAPTER*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
