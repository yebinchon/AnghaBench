; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_switch_to_packing_if_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_switch_to_packing_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32, i32, i32 }

@QETH_HIGH_WATERMARK_PACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"np->pack\00", align 1
@packing_mode_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*)* @qeth_switch_to_packing_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_switch_to_packing_if_needed(%struct.qeth_qdio_out_q* %0) #0 {
  %2 = alloca %struct.qeth_qdio_out_q*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %2, align 8
  %3 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %4 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %9 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %8, i32 0, i32 2
  %10 = call i64 @atomic_read(i32* %9)
  %11 = load i64, i64* @QETH_HIGH_WATERMARK_PACK, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %15 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @QETH_CARD_TEXT(i32 %16, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %19 = load i32, i32* @packing_mode_switch, align 4
  %20 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %18, i32 %19)
  %21 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %22 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %13, %7
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
