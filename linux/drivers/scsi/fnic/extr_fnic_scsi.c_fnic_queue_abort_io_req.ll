; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_queue_abort_io_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_queue_abort_io_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i64*, i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.vnic_wq_copy* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.misc_stats }
%struct.TYPE_7__ = type { i32, i32 }
%struct.misc_stats = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32* }
%struct.vnic_wq_copy = type { i32 }
%struct.fnic_io_req = type { i32 }

@FNIC_FLAGS_IO_BLOCKED = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fnic_queue_abort_io_req: failure: no descriptors\0A\00", align 1
@FNIC_TAG_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, i32, i32, i32*, %struct.fnic_io_req*)* @fnic_queue_abort_io_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_queue_abort_io_req(%struct.fnic* %0, i32 %1, i32 %2, i32* %3, %struct.fnic_io_req* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fnic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fnic_io_req*, align 8
  %12 = alloca %struct.vnic_wq_copy*, align 8
  %13 = alloca %struct.Scsi_Host*, align 8
  %14 = alloca %struct.misc_stats*, align 8
  %15 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.fnic_io_req* %4, %struct.fnic_io_req** %11, align 8
  %16 = load %struct.fnic*, %struct.fnic** %7, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 6
  %18 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %17, align 8
  %19 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %18, i64 0
  store %struct.vnic_wq_copy* %19, %struct.vnic_wq_copy** %12, align 8
  %20 = load %struct.fnic*, %struct.fnic** %7, align 8
  %21 = getelementptr inbounds %struct.fnic, %struct.fnic* %20, i32 0, i32 5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %23, align 8
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %13, align 8
  %25 = load %struct.fnic*, %struct.fnic** %7, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store %struct.misc_stats* %27, %struct.misc_stats** %14, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.fnic*, %struct.fnic** %7, align 8
  %34 = load i32, i32* @FNIC_FLAGS_IO_BLOCKED, align 4
  %35 = call i32 @fnic_chk_state_flags_locked(%struct.fnic* %33, i32 %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %5
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  store i32 1, i32* %6, align 4
  br label %153

44:                                               ; preds = %5
  %45 = load %struct.fnic*, %struct.fnic** %7, align 8
  %46 = getelementptr inbounds %struct.fnic, %struct.fnic* %45, i32 0, i32 1
  %47 = call i32 @atomic_inc(i32* %46)
  br label %48

48:                                               ; preds = %44
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.fnic*, %struct.fnic** %7, align 8
  %55 = getelementptr inbounds %struct.fnic, %struct.fnic* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %12, align 8
  %61 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %60)
  %62 = load %struct.fnic*, %struct.fnic** %7, align 8
  %63 = getelementptr inbounds %struct.fnic, %struct.fnic* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %61, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %48
  %69 = load %struct.fnic*, %struct.fnic** %7, align 8
  %70 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %12, align 8
  %71 = call i32 @free_wq_copy_descs(%struct.fnic* %69, %struct.vnic_wq_copy* %70)
  br label %72

72:                                               ; preds = %68, %48
  %73 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %12, align 8
  %74 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %72
  %77 = load %struct.fnic*, %struct.fnic** %7, align 8
  %78 = getelementptr inbounds %struct.fnic, %struct.fnic* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.fnic*, %struct.fnic** %7, align 8
  %84 = getelementptr inbounds %struct.fnic, %struct.fnic* %83, i32 0, i32 1
  %85 = call i32 @atomic_dec(i32* %84)
  %86 = load i32, i32* @KERN_DEBUG, align 4
  %87 = load %struct.fnic*, %struct.fnic** %7, align 8
  %88 = getelementptr inbounds %struct.fnic, %struct.fnic* %87, i32 0, i32 5
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %90, align 8
  %92 = call i32 @FNIC_SCSI_DBG(i32 %86, %struct.Scsi_Host* %91, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.misc_stats*, %struct.misc_stats** %14, align 8
  %94 = getelementptr inbounds %struct.misc_stats, %struct.misc_stats* %93, i32 0, i32 0
  %95 = call i32 @atomic64_inc(i32* %94)
  store i32 1, i32* %6, align 4
  br label %153

96:                                               ; preds = %72
  %97 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %12, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @FNIC_TAG_ABORT, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.fnic_io_req*, %struct.fnic_io_req** %11, align 8
  %105 = getelementptr inbounds %struct.fnic_io_req, %struct.fnic_io_req* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fnic*, %struct.fnic** %7, align 8
  %108 = getelementptr inbounds %struct.fnic, %struct.fnic* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.fnic*, %struct.fnic** %7, align 8
  %112 = getelementptr inbounds %struct.fnic, %struct.fnic* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fnic_queue_wq_copy_desc_itmf(%struct.vnic_wq_copy* %97, i32 %100, i32 0, i32 %101, i32 %102, i32* %103, i32 %106, i32 %110, i32 %114)
  %116 = load %struct.fnic*, %struct.fnic** %7, align 8
  %117 = getelementptr inbounds %struct.fnic, %struct.fnic* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = call i32 @atomic64_inc(i32* %119)
  %121 = load %struct.fnic*, %struct.fnic** %7, align 8
  %122 = getelementptr inbounds %struct.fnic, %struct.fnic* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = call i64 @atomic64_read(i32* %124)
  %126 = load %struct.fnic*, %struct.fnic** %7, align 8
  %127 = getelementptr inbounds %struct.fnic, %struct.fnic* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = call i64 @atomic64_read(i32* %129)
  %131 = icmp sgt i64 %125, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %96
  %133 = load %struct.fnic*, %struct.fnic** %7, align 8
  %134 = getelementptr inbounds %struct.fnic, %struct.fnic* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load %struct.fnic*, %struct.fnic** %7, align 8
  %138 = getelementptr inbounds %struct.fnic, %struct.fnic* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = call i64 @atomic64_read(i32* %140)
  %142 = call i32 @atomic64_set(i32* %136, i64 %141)
  br label %143

143:                                              ; preds = %132, %96
  %144 = load %struct.fnic*, %struct.fnic** %7, align 8
  %145 = getelementptr inbounds %struct.fnic, %struct.fnic* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i64, i64* %15, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  %150 = load %struct.fnic*, %struct.fnic** %7, align 8
  %151 = getelementptr inbounds %struct.fnic, %struct.fnic* %150, i32 0, i32 1
  %152 = call i32 @atomic_dec(i32* %151)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %143, %76, %38
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fnic_chk_state_flags_locked(%struct.fnic*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy*) #1

declare dso_local i32 @free_wq_copy_descs(%struct.fnic*, %struct.vnic_wq_copy*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, %struct.Scsi_Host*, i8*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @fnic_queue_wq_copy_desc_itmf(%struct.vnic_wq_copy*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
