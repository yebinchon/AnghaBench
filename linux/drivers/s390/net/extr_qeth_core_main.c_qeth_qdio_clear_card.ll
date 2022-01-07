; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_clear_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_clear_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"qdioclr\00", align 1
@QDIO_FLAG_CLEANUP_USING_HALT = common dso_local global i32 0, align 4
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@QETH_QDIO_ALLOCATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"2err%d\00", align 1
@CARD_STATE_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_qdio_clear_card(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %8 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %7, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @atomic_cmpxchg(i32* %11, i32 128, i32 129)
  switch i32 %12, label %42 [
    i32 128, label %13
    i32 129, label %40
  ]

13:                                               ; preds = %2
  %14 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %15 = call i32 @IS_IQD(%struct.qeth_card* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %19 = call i32 @CARD_DDEV(%struct.qeth_card* %18)
  %20 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_HALT, align 4
  %21 = call i32 @qdio_shutdown(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = call i32 @CARD_DDEV(%struct.qeth_card* %23)
  %25 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %26 = call i32 @qdio_shutdown(i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %31, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* @QETH_QDIO_ALLOCATED, align 4
  %39 = call i32 @atomic_set(i32* %37, i32 %38)
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %58

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %42, %34
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @qeth_clear_halt_card(%struct.qeth_card* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %50, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* @CARD_STATE_DOWN, align 4
  %55 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %40
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @qdio_shutdown(i32, i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qeth_clear_halt_card(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
