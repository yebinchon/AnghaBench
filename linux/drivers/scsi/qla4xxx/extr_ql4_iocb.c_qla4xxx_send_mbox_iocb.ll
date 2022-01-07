; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_send_mbox_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_send_mbox_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, i32, i32, %struct.TYPE_6__*, %struct.mrb** }
%struct.TYPE_6__ = type { i32 (%struct.scsi_qla_host*)* }
%struct.mrb = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.queue_entry = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@MAX_MRB = common dso_local global i64 0, align 8
@ET_MBOX_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.mrb*, i64*)* @qla4xxx_send_mbox_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_send_mbox_iocb(%struct.scsi_qla_host* %0, %struct.mrb* %1, i64* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.mrb*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.mrb* %1, %struct.mrb** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %11, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 2
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %17 = load %struct.mrb*, %struct.mrb** %5, align 8
  %18 = getelementptr inbounds %struct.mrb, %struct.mrb* %17, i32 0, i32 2
  %19 = bitcast %struct.TYPE_5__** %18 to %struct.queue_entry**
  %20 = call i32 @qla4xxx_get_req_pkt(%struct.scsi_qla_host* %16, %struct.queue_entry** %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @QLA_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %111

25:                                               ; preds = %3
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %53, %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @MAX_MRB, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @MAX_MRB, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i64 1, i64* %10, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 4
  %43 = load %struct.mrb**, %struct.mrb*** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.mrb*, %struct.mrb** %43, i64 %44
  %46 = load %struct.mrb*, %struct.mrb** %45, align 8
  %47 = icmp eq %struct.mrb* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %56

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %29

56:                                               ; preds = %48, %29
  %57 = load %struct.mrb*, %struct.mrb** %5, align 8
  %58 = getelementptr inbounds %struct.mrb, %struct.mrb* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.mrb*, %struct.mrb** %5, align 8
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %60, i32 0, i32 4
  %62 = load %struct.mrb**, %struct.mrb*** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.mrb*, %struct.mrb** %62, i64 %63
  store %struct.mrb* %59, %struct.mrb** %64, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.mrb*, %struct.mrb** %5, align 8
  %67 = getelementptr inbounds %struct.mrb, %struct.mrb* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i64 %65, i64* %69, align 8
  %70 = load i32, i32* @ET_MBOX_CMD, align 4
  %71 = load %struct.mrb*, %struct.mrb** %5, align 8
  %72 = getelementptr inbounds %struct.mrb, %struct.mrb* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %70, i32* %75, align 4
  %76 = load %struct.mrb*, %struct.mrb** %5, align 8
  %77 = getelementptr inbounds %struct.mrb, %struct.mrb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mrb*, %struct.mrb** %5, align 8
  %80 = getelementptr inbounds %struct.mrb, %struct.mrb* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 4
  %84 = load %struct.mrb*, %struct.mrb** %5, align 8
  %85 = getelementptr inbounds %struct.mrb, %struct.mrb* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64*, i64** %6, align 8
  %90 = call i32 @memcpy(i32 %88, i64* %89, i32 32)
  %91 = load i64*, i64** %6, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.mrb*, %struct.mrb** %5, align 8
  %95 = getelementptr inbounds %struct.mrb, %struct.mrb* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = call i32 (...) @wmb()
  %97 = load %struct.mrb*, %struct.mrb** %5, align 8
  %98 = getelementptr inbounds %struct.mrb, %struct.mrb* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %101 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %105 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %107, align 8
  %109 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %110 = call i32 %108(%struct.scsi_qla_host* %109)
  br label %111

111:                                              ; preds = %56, %24
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %113 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %112, i32 0, i32 2
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qla4xxx_get_req_pkt(%struct.scsi_qla_host*, %struct.queue_entry**) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
