; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_cq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_cq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"cqinit\00", align 1
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_cq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_cq_init(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %5 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %12 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %11, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %20 = call i32 @qdio_reset_buffers(i32 %18, i32 %19)
  %21 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 127, i32* %25, align 4
  %26 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %27 = call i32 @CARD_DDEV(%struct.qeth_card* %26)
  %28 = load i32, i32* @QDIO_FLAG_SYNC_INPUT, align 4
  %29 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 1
  %34 = call i32 @do_QDIO(i32 %27, i32 %28, i64 %33, i32 0, i32 127)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %10
  %38 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %38, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %43

41:                                               ; preds = %10
  br label %42

42:                                               ; preds = %41, %1
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qdio_reset_buffers(i32, i32) #1

declare dso_local i32 @do_QDIO(i32, i32, i64, i32, i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
