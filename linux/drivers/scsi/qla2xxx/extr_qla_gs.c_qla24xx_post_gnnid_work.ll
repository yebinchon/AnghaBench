; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_post_gnnid_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_post_gnnid_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32 }
%struct.qla_work_evt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@LOOP_READY = common dso_local global i32 0, align 4
@LOOP_UP = common dso_local global i32 0, align 4
@UNLOADING = common dso_local global i32 0, align 4
@QLA_EVT_GNNID = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_post_gnnid_work(%struct.scsi_qla_host* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qla_work_evt*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 1
  %10 = call i32 @atomic_read(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @LOOP_READY, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @LOOP_UP, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @UNLOADING, align 4
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %14
  store i32 0, i32* %3, align 4
  br label %42

25:                                               ; preds = %18
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %27 = load i32, i32* @QLA_EVT_GNNID, align 4
  %28 = call %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %26, i32 %27)
  store %struct.qla_work_evt* %28, %struct.qla_work_evt** %6, align 8
  %29 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %30 = icmp ne %struct.qla_work_evt* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %25
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %36 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32* %34, i32** %38, align 8
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %40 = load %struct.qla_work_evt*, %struct.qla_work_evt** %6, align 8
  %41 = call i32 @qla2x00_post_work(%struct.scsi_qla_host* %39, %struct.qla_work_evt* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %31, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla2x00_post_work(%struct.scsi_qla_host*, %struct.qla_work_evt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
