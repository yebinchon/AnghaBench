; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_sata_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_sata_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_17__*, i32, %struct.TYPE_16__, %struct.ipr_ioa_cfg*, %struct.ata_queued_cmd* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.ipr_ioa_cfg = type { i32, i64 }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.ipr_sata_port* }
%struct.ipr_sata_port = type { %struct.TYPE_18__, %struct.ipr_resource_entry* }
%struct.TYPE_18__ = type { i32 }
%struct.ipr_resource_entry = type { i32, i32 }

@IPR_ATA_DEVICE_WAS_RESET = common dso_local global i32 0, align 4
@RECOVERED_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_sata_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_sata_done(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ata_queued_cmd*, align 8
  %5 = alloca %struct.ipr_sata_port*, align 8
  %6 = alloca %struct.ipr_resource_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 3
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %9, align 8
  store %struct.ipr_ioa_cfg* %10, %struct.ipr_ioa_cfg** %3, align 8
  %11 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %12 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %11, i32 0, i32 4
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  store %struct.ata_queued_cmd* %13, %struct.ata_queued_cmd** %4, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %17, align 8
  store %struct.ipr_sata_port* %18, %struct.ipr_sata_port** %5, align 8
  %19 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %5, align 8
  %20 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %19, i32 0, i32 1
  %21 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %20, align 8
  store %struct.ipr_resource_entry* %21, %struct.ipr_resource_entry** %6, align 8
  %22 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %23 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %30 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %35 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %34, i32 0, i32 3
  %36 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %35, align 8
  %37 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %5, align 8
  %42 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %41, i32 0, i32 0
  %43 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %44 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = call i32 @memcpy(%struct.TYPE_18__* %42, i32* %47, i32 4)
  br label %58

49:                                               ; preds = %1
  %50 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %5, align 8
  %51 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %50, i32 0, i32 0
  %52 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %53 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = call i32 @memcpy(%struct.TYPE_18__* %51, i32* %56, i32 4)
  br label %58

58:                                               ; preds = %49, %40
  %59 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %60 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %61 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %62 = call i32 @ipr_dump_ioasa(%struct.ipr_ioa_cfg* %59, %struct.ipr_cmnd* %60, %struct.ipr_resource_entry* %61)
  %63 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %64 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = load i32, i32* @IPR_ATA_DEVICE_WAS_RESET, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %58
  %74 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %75 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %78 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %81 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @scsi_report_device_reset(i32 %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %73, %58
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @IPR_IOASC_SENSE_KEY(i32 %85)
  %87 = load i64, i64* @RECOVERED_ERROR, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %5, align 8
  %91 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @__ac_err_mask(i32 %93)
  %95 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %96 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %109

99:                                               ; preds = %84
  %100 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %5, align 8
  %101 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ac_err_mask(i32 %103)
  %105 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %99, %89
  %110 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %111 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %110, i32 0, i32 1
  %112 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %113 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = call i32 @list_add_tail(i32* %111, i32* %115)
  %117 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %118 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %117, i32 0, i32 0
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %123 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %122)
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @ipr_dump_ioasa(%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*, %struct.ipr_resource_entry*) #1

declare dso_local i32 @scsi_report_device_reset(i32, i32, i32) #1

declare dso_local i64 @IPR_IOASC_SENSE_KEY(i32) #1

declare dso_local i32 @__ac_err_mask(i32) #1

declare dso_local i32 @ac_err_mask(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
