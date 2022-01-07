; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_cleanup_handled_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_cleanup_handled_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { %struct.TYPE_7__*, %struct.qeth_qdio_out_buffer** }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.qeth_qdio_out_buffer = type { i32, %struct.qeth_qdio_out_buffer*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_HANDLED_DELAYED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@qeth_qdio_outbuf_cache = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"clprecov\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, i32, i32)* @qeth_cleanup_handled_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_cleanup_handled_pending(%struct.qeth_qdio_out_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_qdio_out_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %8 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %9 = alloca %struct.qeth_qdio_out_buffer*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %11 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %124

19:                                               ; preds = %3
  %20 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %20, i32 0, i32 1
  %22 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %22, i64 %24
  %26 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %25, align 8
  %27 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %26, i32 0, i32 1
  %28 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %27, align 8
  %29 = icmp ne %struct.qeth_qdio_out_buffer* %28, null
  br i1 %29, label %30, label %101

30:                                               ; preds = %19
  %31 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %32 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %31, i32 0, i32 1
  %33 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %33, i64 %35
  %37 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %36, align 8
  store %struct.qeth_qdio_out_buffer* %37, %struct.qeth_qdio_out_buffer** %7, align 8
  %38 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %39 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %38, i32 0, i32 1
  %40 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %40, i64 %42
  %44 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %43, align 8
  %45 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %44, i32 0, i32 1
  %46 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %45, align 8
  store %struct.qeth_qdio_out_buffer* %46, %struct.qeth_qdio_out_buffer** %8, align 8
  br label %47

47:                                               ; preds = %99, %30
  %48 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %49 = icmp ne %struct.qeth_qdio_out_buffer* %48, null
  br i1 %49, label %50, label %100

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %55 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %54, i32 0, i32 0
  %56 = call i64 @atomic_read(i32* %55)
  %57 = load i64, i64* @QETH_QDIO_BUF_HANDLED_DELAYED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %53, %50
  %60 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  store %struct.qeth_qdio_out_buffer* %60, %struct.qeth_qdio_out_buffer** %9, align 8
  %61 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %62 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = call i32 @QETH_CARD_TEXT(%struct.TYPE_7__* %65, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %68 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %73 = ptrtoint %struct.qeth_qdio_out_buffer* %72 to i64
  %74 = call i32 @QETH_CARD_TEXT_(%struct.TYPE_7__* %71, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @qeth_tx_complete_buf(%struct.qeth_qdio_out_buffer* %75, i32 %76, i32 0)
  %78 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %79 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %78, i32 0, i32 1
  %80 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %79, align 8
  store %struct.qeth_qdio_out_buffer* %80, %struct.qeth_qdio_out_buffer** %8, align 8
  %81 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %82 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %81, i32 0, i32 1
  %83 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %82, align 8
  %84 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %85 = icmp ne %struct.qeth_qdio_out_buffer* %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @WARN_ON_ONCE(i32 %86)
  %88 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %89 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %90 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %89, i32 0, i32 1
  store %struct.qeth_qdio_out_buffer* %88, %struct.qeth_qdio_out_buffer** %90, align 8
  %91 = load i32, i32* @qeth_qdio_outbuf_cache, align 4
  %92 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %93 = call i32 @kmem_cache_free(i32 %91, %struct.qeth_qdio_out_buffer* %92)
  br label %99

94:                                               ; preds = %53
  %95 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  store %struct.qeth_qdio_out_buffer* %95, %struct.qeth_qdio_out_buffer** %7, align 8
  %96 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %97 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %96, i32 0, i32 1
  %98 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %97, align 8
  store %struct.qeth_qdio_out_buffer* %98, %struct.qeth_qdio_out_buffer** %8, align 8
  br label %99

99:                                               ; preds = %94, %59
  br label %47

100:                                              ; preds = %47
  br label %101

101:                                              ; preds = %100, %19
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  %105 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %106 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %105, i32 0, i32 1
  %107 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %107, i64 %109
  %111 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %110, align 8
  %112 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %111, i32 0, i32 0
  %113 = call i64 @atomic_read(i32* %112)
  %114 = load i64, i64* @QETH_QDIO_BUF_HANDLED_DELAYED, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %104
  %117 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q* %117, i32 %118)
  %120 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %121 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = call i32 @QETH_CARD_TEXT(%struct.TYPE_7__* %122, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %18, %116, %104, %101
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.TYPE_7__*, i32, i8*, i64) #1

declare dso_local i32 @qeth_tx_complete_buf(%struct.qeth_qdio_out_buffer*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.qeth_qdio_out_buffer*) #1

declare dso_local i32 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
