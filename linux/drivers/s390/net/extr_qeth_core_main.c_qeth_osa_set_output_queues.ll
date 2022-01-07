; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_osa_set_output_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_osa_set_output_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@QETH_QDIO_UNINITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Priority Queueing not supported\0A\00", align 1
@QETH_DEFAULT_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_osa_set_output_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_osa_set_output_queues(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %17

17:                                               ; preds = %11, %10
  %18 = phi i32 [ 1, %10 ], [ %16, %11 ]
  store i32 %18, i32* %6, align 4
  %19 = call i32 (...) @rtnl_lock()
  %20 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @netif_set_real_num_tx_queues(%struct.TYPE_6__* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = call i32 (...) @rtnl_unlock()
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %17
  %31 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %72

38:                                               ; preds = %30
  %39 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = call i64 @atomic_read(i32* %41)
  %43 = load i64, i64* @QETH_QDIO_UNINITIALIZED, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %47 = call i32 @qeth_free_qdio_queues(%struct.qeth_card* %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %53 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @dev_info(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @QETH_DEFAULT_QUEUE, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ 0, %60 ], [ %62, %61 ]
  %65 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %66 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %70 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %63, %37, %28
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @qeth_free_qdio_queues(%struct.qeth_card*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
