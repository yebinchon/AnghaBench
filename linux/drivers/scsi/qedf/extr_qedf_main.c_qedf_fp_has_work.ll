; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_fp_has_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_fp_has_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_fastpath = type { i64, %struct.qed_sb_info*, %struct.qedf_ctx* }
%struct.qed_sb_info = type { %struct.status_block_e4* }
%struct.status_block_e4 = type { i64* }
%struct.qedf_ctx = type { %struct.global_queue** }
%struct.global_queue = type { i64 }

@QEDF_FCOE_PARAMS_GL_RQ_PI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_fastpath*)* @qedf_fp_has_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_fp_has_work(%struct.qedf_fastpath* %0) #0 {
  %2 = alloca %struct.qedf_fastpath*, align 8
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.global_queue*, align 8
  %5 = alloca %struct.qed_sb_info*, align 8
  %6 = alloca %struct.status_block_e4*, align 8
  %7 = alloca i64, align 8
  store %struct.qedf_fastpath* %0, %struct.qedf_fastpath** %2, align 8
  %8 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %9 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %8, i32 0, i32 2
  %10 = load %struct.qedf_ctx*, %struct.qedf_ctx** %9, align 8
  store %struct.qedf_ctx* %10, %struct.qedf_ctx** %3, align 8
  %11 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %12 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %11, i32 0, i32 1
  %13 = load %struct.qed_sb_info*, %struct.qed_sb_info** %12, align 8
  store %struct.qed_sb_info* %13, %struct.qed_sb_info** %5, align 8
  %14 = load %struct.qed_sb_info*, %struct.qed_sb_info** %5, align 8
  %15 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %14, i32 0, i32 0
  %16 = load %struct.status_block_e4*, %struct.status_block_e4** %15, align 8
  store %struct.status_block_e4* %16, %struct.status_block_e4** %6, align 8
  %17 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %17, i32 0, i32 0
  %19 = load %struct.global_queue**, %struct.global_queue*** %18, align 8
  %20 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %2, align 8
  %21 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %19, i64 %22
  %24 = load %struct.global_queue*, %struct.global_queue** %23, align 8
  store %struct.global_queue* %24, %struct.global_queue** %4, align 8
  %25 = call i32 (...) @rmb()
  %26 = load %struct.status_block_e4*, %struct.status_block_e4** %6, align 8
  %27 = getelementptr inbounds %struct.status_block_e4, %struct.status_block_e4* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @QEDF_FCOE_PARAMS_GL_RQ_PI, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load %struct.global_queue*, %struct.global_queue** %4, align 8
  %33 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
