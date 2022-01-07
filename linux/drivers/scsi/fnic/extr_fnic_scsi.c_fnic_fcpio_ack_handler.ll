; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_ack_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_ack_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32*, %struct.TYPE_12__*, i32*, %struct.TYPE_10__, i32*, %struct.vnic_wq_copy* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.vnic_wq_copy = type { i32 }
%struct.fcpio_fw_req = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fnic*, i32, %struct.fcpio_fw_req*)* @fnic_fcpio_ack_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_fcpio_ack_handler(%struct.fnic* %0, i32 %1, %struct.fcpio_fw_req* %2) #0 {
  %4 = alloca %struct.fnic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fcpio_fw_req*, align 8
  %7 = alloca %struct.vnic_wq_copy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.fnic* %0, %struct.fnic** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fcpio_fw_req* %2, %struct.fcpio_fw_req** %6, align 8
  %11 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %12 = getelementptr inbounds %struct.fcpio_fw_req, %struct.fcpio_fw_req* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %17 = bitcast %struct.fcpio_fw_req* %16 to i8*
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load %struct.fnic*, %struct.fnic** %4, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 7
  %21 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.fnic*, %struct.fnic** %4, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %22, %25
  %27 = load %struct.fnic*, %struct.fnic** %4, align 8
  %28 = getelementptr inbounds %struct.fnic, %struct.fnic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %26, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %21, i64 %31
  store %struct.vnic_wq_copy* %32, %struct.vnic_wq_copy** %7, align 8
  %33 = load %struct.fnic*, %struct.fnic** %4, align 8
  %34 = getelementptr inbounds %struct.fnic, %struct.fnic* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.fnic*, %struct.fnic** %4, align 8
  %41 = getelementptr inbounds %struct.fnic, %struct.fnic* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @is_ack_index_in_range(%struct.vnic_wq_copy* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %3
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.fnic*, %struct.fnic** %4, align 8
  %51 = getelementptr inbounds %struct.fnic, %struct.fnic* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.fnic*, %struct.fnic** %4, align 8
  %55 = getelementptr inbounds %struct.fnic, %struct.fnic* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 1, i32* %57, align 4
  br label %64

58:                                               ; preds = %3
  %59 = load %struct.fnic*, %struct.fnic** %4, align 8
  %60 = getelementptr inbounds %struct.fnic, %struct.fnic* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = call i32 @atomic64_inc(i32* %62)
  br label %64

64:                                               ; preds = %58, %48
  %65 = load %struct.fnic*, %struct.fnic** %4, align 8
  %66 = getelementptr inbounds %struct.fnic, %struct.fnic* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.fnic*, %struct.fnic** %4, align 8
  %72 = getelementptr inbounds %struct.fnic, %struct.fnic* %71, i32 0, i32 3
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @FNIC_TRACE(void (%struct.fnic*, i32, %struct.fcpio_fw_req*)* @fnic_fcpio_ack_handler, i32 %77, i32 0, i32 0, i32 %80, i32 %83, i32 %86, i32 %89)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_ack_index_in_range(%struct.vnic_wq_copy*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @FNIC_TRACE(void (%struct.fnic*, i32, %struct.fcpio_fw_req*)*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
