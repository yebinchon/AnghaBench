; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_sp_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_sp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { i32 (%struct.TYPE_14__*)* }
%struct.TYPE_11__ = type { %struct.req_que* }
%struct.req_que = type { i32** }
%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.timer_list = type { i32 }

@u = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@sp = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_sp_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.srb_iocb*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = ptrtoint %struct.TYPE_14__* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @u, i32 0, i32 0, i32 0), align 4
  %12 = call %struct.TYPE_14__* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  store %struct.qla_hw_data* %17, %struct.qla_hw_data** %7, align 8
  %18 = call i32 (...) @irqs_disabled()
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.req_que*, %struct.req_que** %27, align 8
  store %struct.req_que* %28, %struct.req_que** %5, align 8
  %29 = load %struct.req_que*, %struct.req_que** %5, align 8
  %30 = getelementptr inbounds %struct.req_que, %struct.req_que* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store %struct.srb_iocb* %38, %struct.srb_iocb** %4, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.srb_iocb*, %struct.srb_iocb** %4, align 8
  %44 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = call i32 %45(%struct.TYPE_14__* %46)
  ret void
}

declare dso_local %struct.TYPE_14__* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
