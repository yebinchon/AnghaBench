; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_check_qdio_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_check_qdio_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qdio_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c" F15=%02X\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" F14=%02X\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" qerr=%X\00", align 1
@rx_dropped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qdio_buffer*, i32, i8*)* @qeth_check_qdio_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_check_qdio_errors(%struct.qeth_card* %0, %struct.qdio_buffer* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.qdio_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.qdio_buffer* %1, %struct.qdio_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %4
  %13 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %13, i32 2, i8* %14)
  %16 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %17 = load %struct.qdio_buffer*, %struct.qdio_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 15
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %16, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %25 = load %struct.qdio_buffer*, %struct.qdio_buffer** %7, align 8
  %26 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 14
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %24, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %32, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.qdio_buffer*, %struct.qdio_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 15
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 18
  br i1 %41, label %42, label %46

42:                                               ; preds = %12
  %43 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %44 = load i32, i32* @rx_dropped, align 4
  %45 = call i32 @QETH_CARD_STAT_INC(%struct.qeth_card* %43, i32 %44)
  store i32 0, i32* %5, align 4
  br label %48

46:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %48

47:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %46, %42
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @QETH_CARD_STAT_INC(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
