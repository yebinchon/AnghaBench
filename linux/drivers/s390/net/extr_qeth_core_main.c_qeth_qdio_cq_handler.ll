; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_cq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_cq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { %struct.qeth_qdio_q* }
%struct.qeth_qdio_q = type { i32, %struct.qdio_buffer** }
%struct.qdio_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"qcqhe%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"qcqhc%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"qcqherr%d\00", align 1
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@QDIO_MAX_ELEMENTS_PER_BUFFER = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_INPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"QDIO reported an error, rc=%i\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"qcqherr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, i32, i32, i32, i32)* @qeth_qdio_cq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_qdio_cq_handler(%struct.qeth_card* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qeth_qdio_q*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.qdio_buffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %20, align 8
  store %struct.qeth_qdio_q* %21, %struct.qeth_qdio_q** %11, align 8
  %22 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @qeth_is_cq(%struct.qeth_card* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %142

27:                                               ; preds = %5
  %28 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %28, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %31, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %34, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @netif_tx_stop_all_queues(i32 %42)
  %44 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %45 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %44)
  br label %142

46:                                               ; preds = %27
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %99, %46
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %57 = srem i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %11, align 8
  %59 = getelementptr inbounds %struct.qeth_qdio_q, %struct.qeth_qdio_q* %58, i32 0, i32 1
  %60 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %60, i64 %62
  %64 = load %struct.qdio_buffer*, %struct.qdio_buffer** %63, align 8
  store %struct.qdio_buffer* %64, %struct.qdio_buffer** %15, align 8
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %81, %54
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @QDIO_MAX_ELEMENTS_PER_BUFFER, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.qdio_buffer*, %struct.qdio_buffer** %15, align 8
  %71 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %69, %65
  %80 = phi i1 [ false, %65 ], [ %78, %69 ]
  br i1 %80, label %81, label %95

81:                                               ; preds = %79
  %82 = load %struct.qdio_buffer*, %struct.qdio_buffer** %15, align 8
  %83 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %17, align 8
  %90 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %91 = load i64, i64* %17, align 8
  %92 = call i32 @qeth_qdio_handle_aob(%struct.qeth_card* %90, i64 %91)
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %65

95:                                               ; preds = %79
  %96 = load %struct.qdio_buffer*, %struct.qdio_buffer** %15, align 8
  %97 = load i32, i32* @QDIO_MAX_ELEMENTS_PER_BUFFER, align 4
  %98 = call i32 @qeth_scrub_qdio_buffer(%struct.qdio_buffer* %96, i32 %97)
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %48

102:                                              ; preds = %48
  %103 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %104 = call i32 @CARD_DDEV(%struct.qeth_card* %103)
  %105 = load i32, i32* @QDIO_FLAG_SYNC_INPUT, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %108 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %109, align 8
  %111 = getelementptr inbounds %struct.qeth_qdio_q, %struct.qeth_qdio_q* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @do_QDIO(i32 %104, i32 %105, i32 %106, i32 %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %102
  %118 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %119 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @dev_warn(i32* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %125 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %124, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %117, %102
  %127 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %128 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %129, align 8
  %131 = getelementptr inbounds %struct.qeth_qdio_q, %struct.qeth_qdio_q* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %136 = srem i32 %134, %135
  %137 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %138 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %139, align 8
  %141 = getelementptr inbounds %struct.qeth_qdio_q, %struct.qeth_qdio_q* %140, i32 0, i32 0
  store i32 %136, i32* %141, align 8
  br label %142

142:                                              ; preds = %126, %39, %26
  ret void
}

declare dso_local i32 @qeth_is_cq(%struct.qeth_card*, i32) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(i32) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

declare dso_local i32 @qeth_qdio_handle_aob(%struct.qeth_card*, i64) #1

declare dso_local i32 @qeth_scrub_qdio_buffer(%struct.qdio_buffer*, i32) #1

declare dso_local i32 @do_QDIO(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
