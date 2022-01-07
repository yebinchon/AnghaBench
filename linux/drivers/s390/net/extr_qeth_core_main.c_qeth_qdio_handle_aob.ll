; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_handle_aob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_handle_aob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qaob = type { i64, i64, i32, i64* }
%struct.qeth_qdio_out_buffer = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"haob\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@QETH_QDIO_BUF_PRIMED = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_IN_CQ = common dso_local global i32 0, align 4
@TX_NOTIFY_OK = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_PENDING = common dso_local global i64 0, align 8
@TX_NOTIFY_DELAYED_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"aorc%02X\00", align 1
@qeth_core_header_cache = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_HANDLED_DELAYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, i64)* @qeth_qdio_handle_aob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_qdio_handle_aob(%struct.qeth_card* %0, i64 %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qaob*, align 8
  %6 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @phys_to_virt(i64 %9)
  %11 = inttoptr i64 %10 to %struct.qaob*
  store %struct.qaob* %11, %struct.qaob** %5, align 8
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %12, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %14, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load %struct.qaob*, %struct.qaob** %5, align 8
  %18 = getelementptr inbounds %struct.qaob, %struct.qaob* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.qeth_qdio_out_buffer*
  store %struct.qeth_qdio_out_buffer* %20, %struct.qeth_qdio_out_buffer** %6, align 8
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = load %struct.qaob*, %struct.qaob** %5, align 8
  %23 = getelementptr inbounds %struct.qaob, %struct.qaob* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %21, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %29 = load i32, i32* @QETH_QDIO_BUF_IN_CQ, align 4
  %30 = call i64 @atomic_cmpxchg(i32* %27, i64 %28, i32 %29)
  %31 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @TX_NOTIFY_OK, align 4
  store i32 %34, i32* %7, align 4
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %36, i32 0, i32 0
  %38 = call i64 @atomic_read(i32* %37)
  %39 = load i64, i64* @QETH_QDIO_BUF_PENDING, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON_ONCE(i32 %41)
  %43 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* @QETH_QDIO_BUF_IN_CQ, align 4
  %46 = call i32 @atomic_set(i32* %44, i32 %45)
  %47 = load i32, i32* @TX_NOTIFY_DELAYED_OK, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %35, %33
  %49 = load %struct.qaob*, %struct.qaob** %5, align 8
  %50 = getelementptr inbounds %struct.qaob, %struct.qaob* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %55 = load %struct.qaob*, %struct.qaob** %5, align 8
  %56 = getelementptr inbounds %struct.qaob, %struct.qaob* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %54, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load %struct.qaob*, %struct.qaob** %5, align 8
  %60 = getelementptr inbounds %struct.qaob, %struct.qaob* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @qeth_compute_cq_notification(i64 %61, i32 1)
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %53, %48
  %64 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @qeth_notify_skbs(i32 %66, %struct.qeth_qdio_out_buffer* %67, i32 %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %113, %63
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.qaob*, %struct.qaob** %5, align 8
  %73 = getelementptr inbounds %struct.qaob, %struct.qaob* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %79 = call i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card* %78)
  %80 = icmp ult i32 %77, %79
  br label %81

81:                                               ; preds = %76, %70
  %82 = phi i1 [ false, %70 ], [ %80, %76 ]
  br i1 %82, label %83, label %116

83:                                               ; preds = %81
  %84 = load %struct.qaob*, %struct.qaob** %5, align 8
  %85 = getelementptr inbounds %struct.qaob, %struct.qaob* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %83
  %93 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %94 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %92
  %102 = load i32, i32* @qeth_core_header_cache, align 4
  %103 = load %struct.qaob*, %struct.qaob** %5, align 8
  %104 = getelementptr inbounds %struct.qaob, %struct.qaob* %103, i32 0, i32 3
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @kmem_cache_free(i32 %102, i8* %110)
  br label %112

112:                                              ; preds = %101, %92, %83
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %70

116:                                              ; preds = %81
  %117 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %118 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %117, i32 0, i32 0
  %119 = load i32, i32* @QETH_QDIO_BUF_HANDLED_DELAYED, align 4
  %120 = call i32 @atomic_set(i32* %118, i32 %119)
  %121 = load %struct.qaob*, %struct.qaob** %5, align 8
  %122 = call i32 @qdio_release_aob(%struct.qaob* %121)
  ret void
}

declare dso_local i64 @phys_to_virt(i64) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i64) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qeth_compute_cq_notification(i64, i32) #1

declare dso_local i32 @qeth_notify_skbs(i32, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card*) #1

declare dso_local i32 @kmem_cache_free(i32, i8*) #1

declare dso_local i32 @qdio_release_aob(%struct.qaob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
