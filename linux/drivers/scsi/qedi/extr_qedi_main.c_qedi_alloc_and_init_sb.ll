; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_and_init_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_and_init_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.qed_sb_info*, %struct.status_block_e4*, i32, i32, i32)* }
%struct.qed_sb_info = type { i32 }
%struct.status_block_e4 = type { i32 }
%struct.qedi_ctx = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Status block allocation failed for id = %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qedi_ops = common dso_local global %struct.TYPE_6__* null, align 8
@QED_SB_TYPE_STORAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Status block initialization failed for id = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, %struct.qed_sb_info*, i32)* @qedi_alloc_and_init_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_alloc_and_init_sb(%struct.qedi_ctx* %0, %struct.qed_sb_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca %struct.qed_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.status_block_e4*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store %struct.qed_sb_info* %1, %struct.qed_sb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.status_block_e4* @dma_alloc_coherent(i32* %14, i32 4, i32* %9, i32 %15)
  store %struct.status_block_e4* %16, %struct.status_block_e4** %8, align 8
  %17 = load %struct.status_block_e4*, %struct.status_block_e4** %8, align 8
  %18 = icmp ne %struct.status_block_e4* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @QEDI_ERR(i32* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %50

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (i32, %struct.qed_sb_info*, %struct.status_block_e4*, i32, i32, i32)*, i32 (i32, %struct.qed_sb_info*, %struct.status_block_e4*, i32, i32, i32)** %30, align 8
  %32 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %36 = load %struct.status_block_e4*, %struct.status_block_e4** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @QED_SB_TYPE_STORAGE, align 4
  %40 = call i32 %31(i32 %34, %struct.qed_sb_info* %35, %struct.status_block_e4* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @QEDI_ERR(i32* %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %43, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.status_block_e4* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
