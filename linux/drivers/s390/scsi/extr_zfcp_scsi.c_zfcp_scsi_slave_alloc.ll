; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64* }
%struct.fc_rport = type { i32 }
%struct.zfcp_adapter = type { i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_15__, %struct.zfcp_port*, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_24__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.zfcp_port = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.zfcp_port*, %struct.scsi_device*, %struct.zfcp_adapter* }
%struct.zfcp_unit = type { i32 }

@FSF_FEATURE_NPIV_MODE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@zfcp_sysfs_port_units_mutex = common dso_local global i32 0, align 4
@allow_lun_scan = common dso_local global i64 0, align 8
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"scsla_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @zfcp_scsi_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_scsi_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_scsi_dev*, align 8
  %7 = alloca %struct.zfcp_port*, align 8
  %8 = alloca %struct.zfcp_unit*, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = call i32 @scsi_target(%struct.scsi_device* %10)
  %12 = call %struct.fc_rport* @starget_to_rport(i32 %11)
  store %struct.fc_rport* %12, %struct.fc_rport** %4, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %20, %struct.zfcp_adapter** %5, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %21)
  store %struct.zfcp_scsi_dev* %22, %struct.zfcp_scsi_dev** %6, align 8
  %23 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FSF_FEATURE_NPIV_MODE, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %29 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %30 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  store %struct.zfcp_adapter* %28, %struct.zfcp_adapter** %31, align 8
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %34 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  store %struct.scsi_device* %32, %struct.scsi_device** %35, align 8
  %36 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %37 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %38 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter* %36, i32 %39)
  store %struct.zfcp_port* %40, %struct.zfcp_port** %7, align 8
  %41 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %42 = icmp ne %struct.zfcp_port* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %1
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %136

46:                                               ; preds = %1
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %48 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %49 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  store %struct.zfcp_port* %47, %struct.zfcp_port** %50, align 8
  %51 = call i32 @mutex_lock(i32* @zfcp_sysfs_port_units_mutex)
  %52 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %53 = call i64 @zfcp_sysfs_port_is_removing(%struct.zfcp_port* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = call i32 @mutex_unlock(i32* @zfcp_sysfs_port_units_mutex)
  %57 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %58 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %57, i32 0, i32 1
  %59 = call i32 @put_device(i32* %58)
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %136

62:                                               ; preds = %46
  %63 = call i32 @mutex_unlock(i32* @zfcp_sysfs_port_units_mutex)
  %64 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %65 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %66 = call i32 @zfcp_scsi_dev_lun(%struct.scsi_device* %65)
  %67 = call %struct.zfcp_unit* @zfcp_unit_find(%struct.zfcp_port* %64, i32 %66)
  store %struct.zfcp_unit* %67, %struct.zfcp_unit** %8, align 8
  %68 = load %struct.zfcp_unit*, %struct.zfcp_unit** %8, align 8
  %69 = icmp ne %struct.zfcp_unit* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.zfcp_unit*, %struct.zfcp_unit** %8, align 8
  %72 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %71, i32 0, i32 0
  %73 = call i32 @put_device(i32* %72)
  br label %74

74:                                               ; preds = %70, %62
  %75 = load %struct.zfcp_unit*, %struct.zfcp_unit** %8, align 8
  %76 = icmp ne %struct.zfcp_unit* %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* @allow_lun_scan, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %85 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %84, i32 0, i32 1
  %86 = call i32 @put_device(i32* %85)
  %87 = load i32, i32* @ENXIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %136

89:                                               ; preds = %80, %74
  %90 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %91 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %92 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %91, i32 0, i32 1
  store %struct.zfcp_port* %90, %struct.zfcp_port** %92, align 8
  %93 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %94 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i32 -1, i32* %97, align 4
  %98 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %99 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  store i32 -1, i32* %102, align 4
  %103 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %104 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 4
  %108 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %109 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  store i32 -1, i32* %112, align 4
  %113 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %114 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  store i32 -1, i32* %117, align 4
  %118 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %119 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32 -1, i32* %122, align 4
  %123 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %124 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = call i32 @spin_lock_init(i32* %125)
  %127 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %128 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %129 = call i32 @zfcp_erp_set_lun_status(%struct.scsi_device* %127, i32 %128)
  %130 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %131 = call i32 @zfcp_erp_lun_reopen(%struct.scsi_device* %130, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %132 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %133 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @zfcp_erp_wait(i32 %134)
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %89, %83, %55, %43
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.scsi_device*) #1

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @zfcp_sysfs_port_is_removing(%struct.zfcp_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local %struct.zfcp_unit* @zfcp_unit_find(%struct.zfcp_port*, i32) #1

declare dso_local i32 @zfcp_scsi_dev_lun(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @zfcp_erp_set_lun_status(%struct.scsi_device*, i32) #1

declare dso_local i32 @zfcp_erp_lun_reopen(%struct.scsi_device*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
