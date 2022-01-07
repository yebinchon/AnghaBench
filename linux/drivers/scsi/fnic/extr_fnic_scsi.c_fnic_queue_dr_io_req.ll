; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_queue_dr_io_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_queue_dr_io_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i64*, i32, i32*, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_7__*, %struct.vnic_wq_copy* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.misc_stats }
%struct.TYPE_11__ = type { i32, i32 }
%struct.misc_stats = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32* }
%struct.vnic_wq_copy = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.fnic_io_req = type { i32 }
%struct.scsi_lun = type { i32 }

@FNIC_FLAGS_IO_BLOCKED = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"queue_dr_io_req failure - no descriptors\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@FNIC_TAG_DEV_RST = common dso_local global i32 0, align 4
@FCPIO_ITMF_LUN_RESET = common dso_local global i32 0, align 4
@SCSI_NO_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, %struct.scsi_cmnd*, %struct.fnic_io_req*)* @fnic_queue_dr_io_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_queue_dr_io_req(%struct.fnic* %0, %struct.scsi_cmnd* %1, %struct.fnic_io_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fnic*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.fnic_io_req*, align 8
  %8 = alloca %struct.vnic_wq_copy*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.misc_stats*, align 8
  %11 = alloca %struct.scsi_lun, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct.fnic_io_req* %2, %struct.fnic_io_req** %7, align 8
  %14 = load %struct.fnic*, %struct.fnic** %5, align 8
  %15 = getelementptr inbounds %struct.fnic, %struct.fnic* %14, i32 0, i32 6
  %16 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %15, align 8
  %17 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %16, i64 0
  store %struct.vnic_wq_copy* %17, %struct.vnic_wq_copy** %8, align 8
  %18 = load %struct.fnic*, %struct.fnic** %5, align 8
  %19 = getelementptr inbounds %struct.fnic, %struct.fnic* %18, i32 0, i32 5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %21, align 8
  store %struct.Scsi_Host* %22, %struct.Scsi_Host** %9, align 8
  %23 = load %struct.fnic*, %struct.fnic** %5, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store %struct.misc_stats* %25, %struct.misc_stats** %10, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.fnic*, %struct.fnic** %5, align 8
  %32 = load i32, i32* @FNIC_FLAGS_IO_BLOCKED, align 4
  %33 = call i32 @fnic_chk_state_flags_locked(%struct.fnic* %31, i32 %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %3
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* @FAILED, align 4
  store i32 %42, i32* %4, align 4
  br label %158

43:                                               ; preds = %3
  %44 = load %struct.fnic*, %struct.fnic** %5, align 8
  %45 = getelementptr inbounds %struct.fnic, %struct.fnic* %44, i32 0, i32 1
  %46 = call i32 @atomic_inc(i32* %45)
  br label %47

47:                                               ; preds = %43
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.fnic*, %struct.fnic** %5, align 8
  %54 = getelementptr inbounds %struct.fnic, %struct.fnic* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %60 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %59)
  %61 = load %struct.fnic*, %struct.fnic** %5, align 8
  %62 = getelementptr inbounds %struct.fnic, %struct.fnic* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %60, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %47
  %68 = load %struct.fnic*, %struct.fnic** %5, align 8
  %69 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %70 = call i32 @free_wq_copy_descs(%struct.fnic* %68, %struct.vnic_wq_copy* %69)
  br label %71

71:                                               ; preds = %67, %47
  %72 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %73 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @KERN_DEBUG, align 4
  %77 = load %struct.fnic*, %struct.fnic** %5, align 8
  %78 = getelementptr inbounds %struct.fnic, %struct.fnic* %77, i32 0, i32 5
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %80, align 8
  %82 = call i32 @FNIC_SCSI_DBG(i32 %76, %struct.Scsi_Host* %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.misc_stats*, %struct.misc_stats** %10, align 8
  %84 = getelementptr inbounds %struct.misc_stats, %struct.misc_stats* %83, i32 0, i32 0
  %85 = call i32 @atomic64_inc(i32* %84)
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  br label %147

88:                                               ; preds = %71
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @int_to_scsilun(i32 %93, %struct.scsi_lun* %11)
  %95 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %8, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @FNIC_TAG_DEV_RST, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @FCPIO_ITMF_LUN_RESET, align 4
  %104 = load i32, i32* @SCSI_NO_TAG, align 4
  %105 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fnic_io_req*, %struct.fnic_io_req** %7, align 8
  %108 = getelementptr inbounds %struct.fnic_io_req, %struct.fnic_io_req* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.fnic*, %struct.fnic** %5, align 8
  %111 = getelementptr inbounds %struct.fnic, %struct.fnic* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.fnic*, %struct.fnic** %5, align 8
  %115 = getelementptr inbounds %struct.fnic, %struct.fnic* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @fnic_queue_wq_copy_desc_itmf(%struct.vnic_wq_copy* %95, i32 %102, i32 0, i32 %103, i32 %104, i32 %106, i32 %109, i32 %113, i32 %117)
  %119 = load %struct.fnic*, %struct.fnic** %5, align 8
  %120 = getelementptr inbounds %struct.fnic, %struct.fnic* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = call i32 @atomic64_inc(i32* %122)
  %124 = load %struct.fnic*, %struct.fnic** %5, align 8
  %125 = getelementptr inbounds %struct.fnic, %struct.fnic* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = call i64 @atomic64_read(i32* %127)
  %129 = load %struct.fnic*, %struct.fnic** %5, align 8
  %130 = getelementptr inbounds %struct.fnic, %struct.fnic* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = call i64 @atomic64_read(i32* %132)
  %134 = icmp sgt i64 %128, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %88
  %136 = load %struct.fnic*, %struct.fnic** %5, align 8
  %137 = getelementptr inbounds %struct.fnic, %struct.fnic* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load %struct.fnic*, %struct.fnic** %5, align 8
  %141 = getelementptr inbounds %struct.fnic, %struct.fnic* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = call i64 @atomic64_read(i32* %143)
  %145 = call i32 @atomic64_set(i32* %139, i64 %144)
  br label %146

146:                                              ; preds = %135, %88
  br label %147

147:                                              ; preds = %146, %75
  %148 = load %struct.fnic*, %struct.fnic** %5, align 8
  %149 = getelementptr inbounds %struct.fnic, %struct.fnic* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i64, i64* %13, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  %154 = load %struct.fnic*, %struct.fnic** %5, align 8
  %155 = getelementptr inbounds %struct.fnic, %struct.fnic* %154, i32 0, i32 1
  %156 = call i32 @atomic_dec(i32* %155)
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %147, %36
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fnic_chk_state_flags_locked(%struct.fnic*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy*) #1

declare dso_local i32 @free_wq_copy_descs(%struct.fnic*, %struct.vnic_wq_copy*) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @fnic_queue_wq_copy_desc_itmf(%struct.vnic_wq_copy*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
