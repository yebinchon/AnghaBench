; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_send_marker_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_send_marker_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.scsi_qla_host*)* }
%struct.ddb_entry = type { i32 }
%struct.qla4_marker_entry = type { i32, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.queue_entry = type { i32 }

@QLA_SUCCESS = common dso_local global i64 0, align 8
@QLA_ERROR = common dso_local global i32 0, align 4
@ET_MARKER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_send_marker_iocb(%struct.scsi_qla_host* %0, %struct.ddb_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.ddb_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla4_marker_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.ddb_entry* %1, %struct.ddb_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* @QLA_SUCCESS, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %11, align 4
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 0
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %19 = bitcast %struct.qla4_marker_entry** %9 to %struct.queue_entry**
  %20 = call i64 @qla4xxx_get_req_pkt(%struct.scsi_qla_host* %18, %struct.queue_entry** %19)
  %21 = load i64, i64* @QLA_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @QLA_ERROR, align 4
  store i32 %24, i32* %11, align 4
  br label %55

25:                                               ; preds = %4
  %26 = load i32, i32* @ET_MARKER, align 4
  %27 = load %struct.qla4_marker_entry*, %struct.qla4_marker_entry** %9, align 8
  %28 = getelementptr inbounds %struct.qla4_marker_entry, %struct.qla4_marker_entry* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.qla4_marker_entry*, %struct.qla4_marker_entry** %9, align 8
  %31 = getelementptr inbounds %struct.qla4_marker_entry, %struct.qla4_marker_entry* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.ddb_entry*, %struct.ddb_entry** %6, align 8
  %34 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.qla4_marker_entry*, %struct.qla4_marker_entry** %9, align 8
  %38 = getelementptr inbounds %struct.qla4_marker_entry, %struct.qla4_marker_entry* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.qla4_marker_entry*, %struct.qla4_marker_entry** %9, align 8
  %42 = getelementptr inbounds %struct.qla4_marker_entry, %struct.qla4_marker_entry* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.qla4_marker_entry*, %struct.qla4_marker_entry** %9, align 8
  %45 = getelementptr inbounds %struct.qla4_marker_entry, %struct.qla4_marker_entry* %44, i32 0, i32 0
  %46 = call i32 @int_to_scsilun(i32 %43, i32* %45)
  %47 = call i32 (...) @wmb()
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %49 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %51, align 8
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %54 = call i32 %52(%struct.scsi_qla_host* %53)
  br label %55

55:                                               ; preds = %25, %23
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %57 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %56, i32 0, i32 0
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qla4xxx_get_req_pkt(%struct.scsi_qla_host*, %struct.queue_entry**) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
