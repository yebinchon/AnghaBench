; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_switch_to_nonpacking_if_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_switch_to_nonpacking_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i64, i32, i32 }

@QETH_LOW_WATERMARK_PACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"pack->np\00", align 1
@packing_mode_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_qdio_out_q*)* @qeth_switch_to_nonpacking_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_qdio_out_q*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %3, align 8
  %4 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %5 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %9, i32 0, i32 2
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load i64, i64* @QETH_LOW_WATERMARK_PACK, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %16 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @QETH_CARD_TEXT(i32 %17, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %20 = load i32, i32* @packing_mode_switch, align 4
  %21 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %19, i32 %20)
  %22 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %23 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %25 = call i32 @qeth_prep_flush_pack_buffer(%struct.qeth_qdio_out_q* %24)
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %8
  br label %27

27:                                               ; preds = %26, %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @qeth_prep_flush_pack_buffer(%struct.qeth_qdio_out_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
