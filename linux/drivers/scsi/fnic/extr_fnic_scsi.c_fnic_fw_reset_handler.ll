; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fw_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fw_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i64*, %struct.TYPE_8__*, %struct.TYPE_7__, i32*, i32, i32, i32, %struct.vnic_wq_copy* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vnic_wq_copy = type { i32 }

@FNIC_FLAGS_FWRESET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SCSI_NO_TAG = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Issued fw reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to issue fw reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_fw_reset_handler(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca %struct.vnic_wq_copy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %6 = load %struct.fnic*, %struct.fnic** %2, align 8
  %7 = getelementptr inbounds %struct.fnic, %struct.fnic* %6, i32 0, i32 7
  %8 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %7, align 8
  %9 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %8, i64 0
  store %struct.vnic_wq_copy* %9, %struct.vnic_wq_copy** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.fnic*, %struct.fnic** %2, align 8
  %11 = load i32, i32* @FNIC_FLAGS_FWRESET, align 4
  %12 = call i32 @fnic_set_state_flags(%struct.fnic* %10, i32 %11)
  %13 = load %struct.fnic*, %struct.fnic** %2, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 6
  %15 = call i32 @skb_queue_purge(i32* %14)
  %16 = load %struct.fnic*, %struct.fnic** %2, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 5
  %18 = call i32 @skb_queue_purge(i32* %17)
  br label %19

19:                                               ; preds = %24, %1
  %20 = load %struct.fnic*, %struct.fnic** %2, align 8
  %21 = getelementptr inbounds %struct.fnic, %struct.fnic* %20, i32 0, i32 4
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i32 @msecs_to_jiffies(i32 1)
  %26 = call i32 @schedule_timeout(i32 %25)
  br label %19

27:                                               ; preds = %19
  %28 = load %struct.fnic*, %struct.fnic** %2, align 8
  %29 = getelementptr inbounds %struct.fnic, %struct.fnic* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %35 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %34)
  %36 = load %struct.fnic*, %struct.fnic** %2, align 8
  %37 = getelementptr inbounds %struct.fnic, %struct.fnic* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %35, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load %struct.fnic*, %struct.fnic** %2, align 8
  %44 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %45 = call i32 @free_wq_copy_descs(%struct.fnic* %43, %struct.vnic_wq_copy* %44)
  br label %46

46:                                               ; preds = %42, %27
  %47 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %48 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %85

53:                                               ; preds = %46
  %54 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %55 = load i32, i32* @SCSI_NO_TAG, align 4
  %56 = call i32 @fnic_queue_wq_copy_desc_fw_reset(%struct.vnic_wq_copy* %54, i32 %55)
  %57 = load %struct.fnic*, %struct.fnic** %2, align 8
  %58 = getelementptr inbounds %struct.fnic, %struct.fnic* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @atomic64_inc(i32* %60)
  %62 = load %struct.fnic*, %struct.fnic** %2, align 8
  %63 = getelementptr inbounds %struct.fnic, %struct.fnic* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i64 @atomic64_read(i32* %65)
  %67 = load %struct.fnic*, %struct.fnic** %2, align 8
  %68 = getelementptr inbounds %struct.fnic, %struct.fnic* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = call i64 @atomic64_read(i32* %70)
  %72 = icmp sgt i64 %66, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %53
  %74 = load %struct.fnic*, %struct.fnic** %2, align 8
  %75 = getelementptr inbounds %struct.fnic, %struct.fnic* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.fnic*, %struct.fnic** %2, align 8
  %79 = getelementptr inbounds %struct.fnic, %struct.fnic* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i64 @atomic64_read(i32* %81)
  %83 = call i32 @atomic64_set(i32* %77, i64 %82)
  br label %84

84:                                               ; preds = %73, %53
  br label %85

85:                                               ; preds = %84, %50
  %86 = load %struct.fnic*, %struct.fnic** %2, align 8
  %87 = getelementptr inbounds %struct.fnic, %struct.fnic* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %85
  %95 = load %struct.fnic*, %struct.fnic** %2, align 8
  %96 = getelementptr inbounds %struct.fnic, %struct.fnic* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @atomic64_inc(i32* %98)
  %100 = load i32, i32* @KERN_DEBUG, align 4
  %101 = load %struct.fnic*, %struct.fnic** %2, align 8
  %102 = getelementptr inbounds %struct.fnic, %struct.fnic* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @FNIC_SCSI_DBG(i32 %100, i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %118

107:                                              ; preds = %85
  %108 = load %struct.fnic*, %struct.fnic** %2, align 8
  %109 = load i32, i32* @FNIC_FLAGS_FWRESET, align 4
  %110 = call i32 @fnic_clear_state_flags(%struct.fnic* %108, i32 %109)
  %111 = load i32, i32* @KERN_DEBUG, align 4
  %112 = load %struct.fnic*, %struct.fnic** %2, align 8
  %113 = getelementptr inbounds %struct.fnic, %struct.fnic* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @FNIC_SCSI_DBG(i32 %111, i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %107, %94
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @fnic_set_state_flags(%struct.fnic*, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy*) #1

declare dso_local i32 @free_wq_copy_descs(%struct.fnic*, %struct.vnic_wq_copy*) #1

declare dso_local i32 @fnic_queue_wq_copy_desc_fw_reset(%struct.vnic_wq_copy*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*) #1

declare dso_local i32 @fnic_clear_state_flags(%struct.fnic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
