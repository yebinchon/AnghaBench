; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_post_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_post_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qla_work_evt = type { i32 }

@IOCB_WORK_ACTIVE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_post_work(%struct.scsi_qla_host* %0, %struct.qla_work_evt* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.qla_work_evt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.qla_work_evt* %1, %struct.qla_work_evt** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 2
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.qla_work_evt*, %struct.qla_work_evt** %4, align 8
  %12 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %11, i32 0, i32 0
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 4
  %15 = call i32 @list_add_tail(i32* %12, i32* %14)
  %16 = load i32, i32* @IOCB_WORK_ACTIVE, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 3
  %19 = call i32 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 2
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %35, i32 0, i32 0
  %37 = call i32 @queue_work(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %29, %22
  %39 = load i32, i32* @QLA_SUCCESS, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
