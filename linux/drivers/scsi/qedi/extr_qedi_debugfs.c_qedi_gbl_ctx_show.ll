; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_debugfs.c_qedi_gbl_ctx_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_debugfs.c_qedi_gbl_ctx_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.qedi_ctx* }
%struct.qedi_ctx = type { i32, %struct.global_queue**, %struct.qedi_fastpath* }
%struct.global_queue = type { i32 }
%struct.qedi_fastpath = type { i64, %struct.qed_sb_info* }
%struct.qed_sb_info = type { %struct.status_block_e4* }
%struct.status_block_e4 = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c" DUMP CQ CONTEXT:\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"=========FAST CQ PATH [%d] ==========\0A\00", align 1
@QEDI_PROTO_CQ_PROD_IDX = common dso_local global i64 0, align 8
@STATUS_BLOCK_E4_PROD_INDEX_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"SB PROD IDX: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"DRV CONS IDX: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"CQ complete host memory: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"=========== END ==================\0A\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @qedi_gbl_ctx_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_gbl_ctx_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qedi_fastpath*, align 8
  %6 = alloca %struct.qed_sb_info*, align 8
  %7 = alloca %struct.status_block_e4*, align 8
  %8 = alloca %struct.global_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qedi_ctx*, align 8
  %12 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.qedi_fastpath* null, %struct.qedi_fastpath** %5, align 8
  store %struct.qed_sb_info* null, %struct.qed_sb_info** %6, align 8
  store %struct.status_block_e4* null, %struct.status_block_e4** %7, align 8
  store %struct.global_queue* null, %struct.global_queue** %8, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load %struct.qedi_ctx*, %struct.qedi_ctx** %14, align 8
  store %struct.qedi_ctx* %15, %struct.qedi_ctx** %11, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = call i32 @seq_puts(%struct.seq_file* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %79, %2
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %21 = call i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %18
  %24 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %25 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %32 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %31, i32 0, i32 2
  %33 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %33, i64 %35
  store %struct.qedi_fastpath* %36, %struct.qedi_fastpath** %5, align 8
  %37 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %38 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %37, i32 0, i32 1
  %39 = load %struct.qed_sb_info*, %struct.qed_sb_info** %38, align 8
  store %struct.qed_sb_info* %39, %struct.qed_sb_info** %6, align 8
  %40 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %41 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %40, i32 0, i32 0
  %42 = load %struct.status_block_e4*, %struct.status_block_e4** %41, align 8
  store %struct.status_block_e4* %42, %struct.status_block_e4** %7, align 8
  %43 = load %struct.status_block_e4*, %struct.status_block_e4** %7, align 8
  %44 = getelementptr inbounds %struct.status_block_e4, %struct.status_block_e4* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @QEDI_PROTO_CQ_PROD_IDX, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @STATUS_BLOCK_E4_PROD_INDEX_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %55 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %54, i32 0, i32 1
  %56 = load %struct.global_queue**, %struct.global_queue*** %55, align 8
  %57 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %58 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.global_queue*, %struct.global_queue** %56, i64 %59
  %61 = load %struct.global_queue*, %struct.global_queue** %60, align 8
  store %struct.global_queue* %61, %struct.global_queue** %8, align 8
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load %struct.global_queue*, %struct.global_queue** %8, align 8
  %64 = getelementptr inbounds %struct.global_queue, %struct.global_queue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %69 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 @seq_puts(%struct.seq_file* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  %76 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %75, i32 0, i32 0
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %23
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %18

82:                                               ; preds = %18
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @MIN_NUM_CPUS_MSIX(%struct.qedi_ctx*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
