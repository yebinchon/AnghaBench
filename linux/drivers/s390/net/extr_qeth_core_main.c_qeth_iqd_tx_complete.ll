; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_iqd_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_iqd_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32, %struct.TYPE_6__*, %struct.qeth_card*, %struct.qeth_qdio_out_buffer** }
%struct.TYPE_6__ = type { i32 }
%struct.qeth_card = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.qeth_qdio_out_buffer = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@QDIO_OUTBUF_STATE_FLAG_PENDING = common dso_local global i32 0, align 4
@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_PRIMED = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_PENDING = common dso_local global i32 0, align 4
@TX_NOTIFY_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pel%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"outofbuf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, i32, i32, i32)* @qeth_iqd_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_iqd_tx_complete(%struct.qeth_qdio_out_q* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qeth_qdio_out_q*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %5, align 8
  %13 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %12, i32 0, i32 3
  %14 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %14, i64 %16
  %18 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %17, align 8
  store %struct.qeth_qdio_out_buffer* %18, %struct.qeth_qdio_out_buffer** %9, align 8
  %19 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %20 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 15
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %5, align 8
  %28 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %27, i32 0, i32 2
  %29 = load %struct.qeth_card*, %struct.qeth_card** %28, align 8
  store %struct.qeth_card* %29, %struct.qeth_card** %11, align 8
  %30 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %5, align 8
  %31 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %88

34:                                               ; preds = %4
  %35 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %5, align 8
  %36 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @QDIO_OUTBUF_STATE_FLAG_PENDING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %34
  %47 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON_ONCE(i32 %53)
  %55 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %56 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %55, i32 0, i32 1
  %57 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %58 = load i32, i32* @QETH_QDIO_BUF_PENDING, align 4
  %59 = call i64 @atomic_cmpxchg(i32* %56, i64 %57, i32 %58)
  %60 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %46
  %63 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %5, align 8
  %64 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %65 = load i32, i32* @TX_NOTIFY_PENDING, align 4
  %66 = call i32 @qeth_notify_skbs(%struct.qeth_qdio_out_q* %63, %struct.qeth_qdio_out_buffer* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %46
  %68 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %68, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %72 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %5, align 8
  %75 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @qeth_scrub_qdio_buffer(%struct.TYPE_8__* %73, i32 %76)
  %78 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %67
  %83 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %84 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %83, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %86 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %85)
  br label %87

87:                                               ; preds = %82, %67
  br label %107

88:                                               ; preds = %34, %4
  %89 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %90 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %5, align 8
  %97 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @qeth_compute_cq_notification(i32 %98, i32 0)
  %100 = call i32 @qeth_notify_skbs(%struct.qeth_qdio_out_q* %96, %struct.qeth_qdio_out_buffer* %97, i32 %99)
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %5, align 8
  %103 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @qeth_clear_output_buffer(%struct.qeth_qdio_out_q* %102, %struct.qeth_qdio_out_buffer* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %87
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

declare dso_local i32 @qeth_notify_skbs(%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @qeth_scrub_qdio_buffer(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

declare dso_local i32 @qeth_compute_cq_notification(i32, i32) #1

declare dso_local i32 @qeth_clear_output_buffer(%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
