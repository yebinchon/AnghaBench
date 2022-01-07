; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_fp_has_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_fp_has_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_fastpath = type { i64, %struct.qed_sb_info*, %struct.qedi_ctx* }
%struct.qed_sb_info = type { %struct.status_block_e4* }
%struct.status_block_e4 = type { i32* }
%struct.qedi_ctx = type { %struct.global_queue** }
%struct.global_queue = type { i32 }

@QEDI_PROTO_CQ_PROD_IDX = common dso_local global i64 0, align 8
@QEDI_CQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_fastpath*)* @qedi_fp_has_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_fp_has_work(%struct.qedi_fastpath* %0) #0 {
  %2 = alloca %struct.qedi_fastpath*, align 8
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca %struct.global_queue*, align 8
  %5 = alloca %struct.qed_sb_info*, align 8
  %6 = alloca %struct.status_block_e4*, align 8
  %7 = alloca i32, align 4
  store %struct.qedi_fastpath* %0, %struct.qedi_fastpath** %2, align 8
  %8 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %2, align 8
  %9 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %8, i32 0, i32 2
  %10 = load %struct.qedi_ctx*, %struct.qedi_ctx** %9, align 8
  store %struct.qedi_ctx* %10, %struct.qedi_ctx** %3, align 8
  %11 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %2, align 8
  %12 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %11, i32 0, i32 1
  %13 = load %struct.qed_sb_info*, %struct.qed_sb_info** %12, align 8
  store %struct.qed_sb_info* %13, %struct.qed_sb_info** %5, align 8
  %14 = load %struct.qed_sb_info*, %struct.qed_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %14, i32 0, i32 0
  %16 = load %struct.status_block_e4*, %struct.status_block_e4** %15, align 8
  store %struct.status_block_e4* %16, %struct.status_block_e4** %6, align 8
  %17 = call i32 (...) @barrier()
  %18 = load %struct.status_block_e4*, %struct.status_block_e4** %6, align 8
  %19 = getelementptr inbounds %struct.status_block_e4, %struct.status_block_e4* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @QEDI_PROTO_CQ_PROD_IDX, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %24, i32 0, i32 0
  %26 = load %struct.global_queue**, %struct.global_queue*** %25, align 8
  %27 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %2, align 8
  %28 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %26, i64 %29
  %31 = load %struct.global_queue*, %struct.global_queue** %30, align 8
  store %struct.global_queue* %31, %struct.global_queue** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @QEDI_CQ_SIZE, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @QEDI_CQ_SIZE, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %1
  %40 = load %struct.global_queue*, %struct.global_queue** %4, align 8
  %41 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
