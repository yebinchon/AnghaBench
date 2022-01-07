; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_init_input_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_init_input_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.qeth_qdio_buffer = type { %struct.TYPE_6__*, %struct.qeth_buffer_pool_entry*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.qeth_buffer_pool_entry = type { i32* }

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@QETH_RX_PULL_LEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_qdio_buffer*)* @qeth_init_input_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_init_input_buffer(%struct.qeth_card* %0, %struct.qeth_qdio_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_qdio_buffer*, align 8
  %6 = alloca %struct.qeth_buffer_pool_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_qdio_buffer* %1, %struct.qeth_qdio_buffer** %5, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @QETH_RX_PULL_LEN, align 8
  %24 = load i64, i64* @ETH_HLEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @netdev_alloc_skb(i32 %22, i64 %25)
  %27 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %117

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %14, %2
  %36 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %37 = call %struct.qeth_buffer_pool_entry* @qeth_find_free_buffer_pool_entry(%struct.qeth_card* %36)
  store %struct.qeth_buffer_pool_entry* %37, %struct.qeth_buffer_pool_entry** %6, align 8
  %38 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %6, align 8
  %39 = icmp ne %struct.qeth_buffer_pool_entry* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %117

41:                                               ; preds = %35
  %42 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %6, align 8
  %43 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %43, i32 0, i32 1
  store %struct.qeth_buffer_pool_entry* %42, %struct.qeth_buffer_pool_entry** %44, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %113, %41
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %48 = call i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %116

50:                                               ; preds = %45
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %53 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32 %51, i32* %60, align 4
  %61 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %6, align 8
  %62 = getelementptr inbounds %struct.qeth_buffer_pool_entry, %struct.qeth_buffer_pool_entry* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i32 %67, i32* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %79 = call i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card* %78)
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %50
  %83 = load i64, i64* @SBAL_EFLAGS_LAST_ENTRY, align 8
  %84 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i64 %83, i64* %92, align 8
  br label %103

93:                                               ; preds = %50
  %94 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %95 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %93, %82
  %104 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %5, align 8
  %105 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %45

116:                                              ; preds = %45
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %40, %33
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @netdev_alloc_skb(i32, i64) #1

declare dso_local %struct.qeth_buffer_pool_entry* @qeth_find_free_buffer_pool_entry(%struct.qeth_card*) #1

declare dso_local i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
