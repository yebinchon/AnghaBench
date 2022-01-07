; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_queue_unknown_atio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_queue_unknown_atio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.qla_tgt* }
%struct.qla_tgt = type { i64 }
%struct.atio_from_isp = type { i32 }
%struct.qla_tgt_sess_op = type { i32, i32, %struct.TYPE_8__* }

@ql_dbg_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"qla_target(%d): dropping unknown ATIO_TYPE7, because tgt is being stopped\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.atio_from_isp*, i32)* @qlt_queue_unknown_atio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_queue_unknown_atio(%struct.TYPE_8__* %0, %struct.atio_from_isp* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.atio_from_isp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_tgt_sess_op*, align 8
  %8 = alloca %struct.qla_tgt*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.atio_from_isp* %1, %struct.atio_from_isp** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.qla_tgt*, %struct.qla_tgt** %12, align 8
  store %struct.qla_tgt* %13, %struct.qla_tgt** %8, align 8
  %14 = load %struct.qla_tgt*, %struct.qla_tgt** %8, align 8
  %15 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @ql_dbg_async, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ql_dbg(i32 %19, %struct.TYPE_8__* %20, i32 20524, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %59

25:                                               ; preds = %3
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.qla_tgt_sess_op* @kzalloc(i32 16, i32 %26)
  store %struct.qla_tgt_sess_op* %27, %struct.qla_tgt_sess_op** %7, align 8
  %28 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %29 = icmp eq %struct.qla_tgt_sess_op* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %59

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %34 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %33, i32 0, i32 2
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %34, align 8
  %35 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %36 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %35, i32 0, i32 1
  %37 = load %struct.atio_from_isp*, %struct.atio_from_isp** %5, align 8
  %38 = call i32 @memcpy(i32* %36, %struct.atio_from_isp* %37, i32 4)
  %39 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %40 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.qla_tgt_sess_op*, %struct.qla_tgt_sess_op** %7, align 8
  %47 = getelementptr inbounds %struct.qla_tgt_sess_op, %struct.qla_tgt_sess_op* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = call i32 @schedule_delayed_work(i32* %56, i32 1)
  br label %58

58:                                               ; preds = %59, %31
  ret void

59:                                               ; preds = %30, %18
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.atio_from_isp*, %struct.atio_from_isp** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @qlt_send_term_exchange(i32 %64, i32* null, %struct.atio_from_isp* %65, i32 %66, i32 0)
  br label %58
}

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local %struct.qla_tgt_sess_op* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.atio_from_isp*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @qlt_send_term_exchange(i32, i32*, %struct.atio_from_isp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
