; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_init_qdio_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_init_qdio_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.qeth_qdio_out_q**, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.qeth_qdio_out_q = type { i32, i32, i32, i64, i32*, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"initqdqs\00", align 1
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@QETH_OUT_Q_UNLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_init_qdio_queues(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_qdio_out_q*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %7, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %16 = call i32 @qdio_reset_buffers(i32 %14, i32 %15)
  %17 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 2
  %19 = call i32 @memset(i32* %18, i32 0, i32 4)
  %20 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %21 = call i32 @qeth_initialize_working_pool_list(%struct.qeth_card* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %43, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp ult i32 %23, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %33 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @qeth_init_input_buffer(%struct.qeth_card* %32, i32* %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %54 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 8
  %58 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %59 = call i32 @CARD_DDEV(%struct.qeth_card* %58)
  %60 = load i32, i32* @QDIO_FLAG_SYNC_INPUT, align 4
  %61 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @do_QDIO(i32 %59, i32 %60, i32 0, i32 0, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %46
  %71 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %71, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %136

75:                                               ; preds = %46
  %76 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %77 = call i32 @qeth_cq_init(%struct.qeth_card* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %136

82:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %132, %82
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ult i32 %84, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %83
  %91 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %94, i64 %96
  %98 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %97, align 8
  store %struct.qeth_qdio_out_q* %98, %struct.qeth_qdio_out_q** %6, align 8
  %99 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %100 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %103 = call i32 @qdio_reset_buffers(i32 %101, i32 %102)
  %104 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %105 = call i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card* %104)
  %106 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %107 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 8
  %108 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %109 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %108, i32 0, i32 6
  store i64 0, i64* %109, align 8
  %110 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %111 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %110, i32 0, i32 5
  store i64 0, i64* %111, align 8
  %112 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %113 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %112, i32 0, i32 4
  store i32* null, i32** %113, align 8
  %114 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %115 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %117 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %116, i32 0, i32 2
  %118 = call i32 @atomic_set(i32* %117, i32 0)
  %119 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %120 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %119, i32 0, i32 1
  %121 = call i32 @atomic_set(i32* %120, i32 0)
  %122 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %123 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %122, i32 0, i32 0
  %124 = load i32, i32* @QETH_OUT_Q_UNLOCKED, align 4
  %125 = call i32 @atomic_set(i32* %123, i32 %124)
  %126 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %127 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @netdev_get_tx_queue(i32 %128, i32 %129)
  %131 = call i32 @netdev_tx_reset_queue(i32 %130)
  br label %132

132:                                              ; preds = %90
  %133 = load i32, i32* %4, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %83

135:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %80, %70
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qdio_reset_buffers(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qeth_initialize_working_pool_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_input_buffer(%struct.qeth_card*, i32*) #1

declare dso_local i32 @do_QDIO(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @qeth_cq_init(%struct.qeth_card*) #1

declare dso_local i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
