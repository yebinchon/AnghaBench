; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_handle_send_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_handle_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_qdio_out_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"hdsnderr\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"qouterr\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"lnkfail\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%04x %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_qdio_out_buffer*, i32)* @qeth_handle_send_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_handle_send_error(%struct.qeth_card* %0, %struct.qeth_qdio_out_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_qdio_out_buffer* %1, %struct.qeth_qdio_out_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 15
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %17 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %16, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %19 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @qeth_check_qdio_errors(%struct.qeth_card* %18, %struct.TYPE_4__* %21, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %41

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 15
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 31
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %41

34:                                               ; preds = %30, %27
  %35 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %36 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %35, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %37, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %33, %26
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_check_qdio_errors(%struct.qeth_card*, %struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
