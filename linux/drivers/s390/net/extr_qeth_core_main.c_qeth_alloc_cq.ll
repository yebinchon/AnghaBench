; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, %struct.TYPE_6__**, %struct.qdio_outbuf_state* }
%struct.TYPE_6__ = type { %struct.qdio_outbuf_state* }
%struct.qdio_outbuf_state = type { i32 }
%struct.TYPE_5__ = type { i64 }

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"cqon\00", align 1
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nocq\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"iqc%d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to create completion queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_alloc_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_alloc_cq(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qdio_outbuf_state*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %6 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %7 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %74

12:                                               ; preds = %1
  %13 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %14 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %13, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i32* (...) @qeth_alloc_qdio_queue()
  %16 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store i32* %15, i32** %18, align 8
  %19 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %101

25:                                               ; preds = %12
  %26 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 2, i32* %28, align 8
  %29 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.qdio_outbuf_state* @kcalloc(i32 %34, i32 4, i32 %35)
  %37 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  store %struct.qdio_outbuf_state* %36, %struct.qdio_outbuf_state** %39, align 8
  %40 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load %struct.qdio_outbuf_state*, %struct.qdio_outbuf_state** %42, align 8
  store %struct.qdio_outbuf_state* %43, %struct.qdio_outbuf_state** %5, align 8
  %44 = load %struct.qdio_outbuf_state*, %struct.qdio_outbuf_state** %5, align 8
  %45 = icmp eq %struct.qdio_outbuf_state* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %92

47:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %70, %47
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %48
  %56 = load %struct.qdio_outbuf_state*, %struct.qdio_outbuf_state** %5, align 8
  %57 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %58 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store %struct.qdio_outbuf_state* %56, %struct.qdio_outbuf_state** %65, align 8
  %66 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %67 = load %struct.qdio_outbuf_state*, %struct.qdio_outbuf_state** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.qdio_outbuf_state, %struct.qdio_outbuf_state* %67, i64 %68
  store %struct.qdio_outbuf_state* %69, %struct.qdio_outbuf_state** %5, align 8
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %48

73:                                               ; preds = %48
  br label %83

74:                                               ; preds = %1
  %75 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %76 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %75, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %78 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %81 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %74, %73
  %84 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %85 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %84, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %101, %83
  %91 = load i32, i32* %3, align 4
  ret i32 %91

92:                                               ; preds = %46
  %93 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %94 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @qeth_free_qdio_queue(i32* %96)
  %98 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %99 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %92, %24
  %102 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %90
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32* @qeth_alloc_qdio_queue(...) #1

declare dso_local %struct.qdio_outbuf_state* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @qeth_free_qdio_queue(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
