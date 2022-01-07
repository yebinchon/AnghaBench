; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_input_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_input_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.qeth_card = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"qihq%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"qiec%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32, i32, i32, i32, i64)* @qeth_qdio_input_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_qdio_input_handler(%struct.ccw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.qeth_card*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %12, align 8
  %15 = inttoptr i64 %14 to %struct.qeth_card*
  store %struct.qeth_card* %15, %struct.qeth_card** %13, align 8
  %16 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %16, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %19, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @qeth_is_cq(%struct.qeth_card* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %6
  %27 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @qeth_qdio_cq_handler(%struct.qeth_card* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  br label %40

33:                                               ; preds = %6
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %38 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %26
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i64 @qeth_is_cq(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_qdio_cq_handler(%struct.qeth_card*, i32, i32, i32, i32) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
