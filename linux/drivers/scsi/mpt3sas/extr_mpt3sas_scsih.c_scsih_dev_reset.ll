; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_dev_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_4__*, {}* }
%struct.TYPE_4__ = type { i32, i32, %struct.MPT3SAS_DEVICE*, %struct.scsi_target*, i32 }
%struct.MPT3SAS_DEVICE = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.scsi_target = type { %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i64 }
%struct._sas_device = type { i64 }
%struct._pcie_device = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"attempting device reset! scmd(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"device been deleted! scmd(%p)\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@MPI26_SCSITASKMGMT_MSGFLAGS_PROTOCOL_LVL_RST_PCIE = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_TASKTYPE_LOGICAL_UNIT_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"device reset: %s scmd(%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @scsih_dev_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsih_dev_reset(%struct.scsi_cmnd* %0) #0 {
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
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.MPT3SAS_ADAPTER* @shost_priv(i32 %17)
  store %struct.MPT3SAS_ADAPTER* %18, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct._sas_device* null, %struct._sas_device** %5, align 8
  store %struct._pcie_device* null, %struct._pcie_device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 30, i32* %9, align 4
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load %struct.scsi_target*, %struct.scsi_target** %22, align 8
  store %struct.scsi_target* %23, %struct.scsi_target** %11, align 8
  %24 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %25 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %24, i32 0, i32 0
  %26 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %25, align 8
  store %struct.MPT3SAS_TARGET* %26, %struct.MPT3SAS_TARGET** %12, align 8
  %27 = load i32, i32* @KERN_INFO, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %32 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %27, %struct.TYPE_4__* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %31)
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %35 = call i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER* %33, %struct.scsi_cmnd* %34)
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %39, align 8
  store %struct.MPT3SAS_DEVICE* %40, %struct.MPT3SAS_DEVICE** %4, align 8
  %41 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %42 = icmp ne %struct.MPT3SAS_DEVICE* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %1
  %44 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %45 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %50 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48, %43, %1
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %59 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %54, %struct.TYPE_4__* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %58)
  %60 = load i32, i32* @DID_NO_CONNECT, align 4
  %61 = shl i32 %60, 16
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 2
  %66 = bitcast {}** %65 to i32 (%struct.scsi_cmnd*)**
  %67 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %66, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %69 = call i32 %67(%struct.scsi_cmnd* %68)
  %70 = load i32, i32* @SUCCESS, align 4
  store i32 %70, i32* %10, align 4
  br label %155

71:                                               ; preds = %48
  store i64 0, i64* %7, align 8
  %72 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %73 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %71
  %81 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %82 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %12, align 8
  %83 = call %struct._sas_device* @mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER* %81, %struct.MPT3SAS_TARGET* %82)
  store %struct._sas_device* %83, %struct._sas_device** %5, align 8
  %84 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %85 = icmp ne %struct._sas_device* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %88 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %86, %80
  br label %97

91:                                               ; preds = %71
  %92 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %93 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %91, %90
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @DID_RESET, align 4
  %102 = shl i32 %101, 16
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @FAILED, align 4
  store i32 %105, i32* %10, align 4
  br label %155

106:                                              ; preds = %97
  %107 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call %struct._pcie_device* @mpt3sas_get_pdev_by_handle(%struct.MPT3SAS_ADAPTER* %107, i64 %108)
  store %struct._pcie_device* %109, %struct._pcie_device** %6, align 8
  %110 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %111 = icmp ne %struct._pcie_device* %110, null
  br i1 %111, label %112, label %128

112:                                              ; preds = %106
  %113 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %114 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %112
  %118 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %119 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @mpt3sas_scsih_is_pcie_scsi_device(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %117
  %124 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %125 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* @MPI26_SCSITASKMGMT_MSGFLAGS_PROTOCOL_LVL_RST_PCIE, align 4
  store i32 %127, i32* %8, align 4
  br label %130

128:                                              ; preds = %117, %112, %106
  %129 = load i32, i32* @MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %123
  %131 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %134 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MPI2_SCSITASKMGMT_TASKTYPE_LOGICAL_UNIT_RESET, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @mpt3sas_scsih_issue_locked_tm(%struct.MPT3SAS_ADAPTER* %131, i64 %132, i32 %137, i32 %138, i32 0, i32 0, i32 %139, i32 %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @SUCCESS, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %130
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %147 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = call i64 @atomic_read(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @FAILED, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %152, %145, %130
  br label %155

155:                                              ; preds = %154, %100, %53
  %156 = load i32, i32* @KERN_INFO, align 4
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %158 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @SUCCESS, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %165 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %166 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %156, %struct.TYPE_4__* %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %164, %struct.scsi_cmnd* %165)
  %167 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %168 = icmp ne %struct._sas_device* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %155
  %170 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %171 = call i32 @sas_device_put(%struct._sas_device* %170)
  br label %172

172:                                              ; preds = %169, %155
  %173 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %174 = icmp ne %struct._pcie_device* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %177 = call i32 @pcie_device_put(%struct._pcie_device* %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %10, align 4
  ret i32 %179
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.TYPE_4__*, i8*, ...) #1

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
