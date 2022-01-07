; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_msix_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_msix_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_fastpath = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"fp is null.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"fp->sb_info in null.\00", align 1
@IGU_INT_DISABLE = common dso_local global i32 0, align 4
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qedf_msix_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_msix_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qedf_fastpath*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.qedf_fastpath*
  store %struct.qedf_fastpath* %8, %struct.qedf_fastpath** %6, align 8
  %9 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %6, align 8
  %10 = icmp ne %struct.qedf_fastpath* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = call i32 @QEDF_ERR(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %6, align 8
  %16 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = call i32 @QEDF_ERR(i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %14
  %23 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %6, align 8
  %24 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IGU_INT_DISABLE, align 4
  %27 = call i32 @qed_sb_ack(i32 %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %22, %51
  %29 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %6, align 8
  %30 = call i32 @qedf_process_completions(%struct.qedf_fastpath* %29)
  %31 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %6, align 8
  %32 = call i64 @qedf_fp_has_work(%struct.qedf_fastpath* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %6, align 8
  %36 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qed_sb_update_sb_idx(i32 %37)
  %39 = call i32 (...) @rmb()
  %40 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %6, align 8
  %41 = call i64 @qedf_fp_has_work(%struct.qedf_fastpath* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.qedf_fastpath*, %struct.qedf_fastpath** %6, align 8
  %45 = getelementptr inbounds %struct.qedf_fastpath, %struct.qedf_fastpath* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IGU_INT_ENABLE, align 4
  %48 = call i32 @qed_sb_ack(i32 %46, i32 %47, i32 1)
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %28
  br label %28

52:                                               ; preds = %43, %19, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @qed_sb_ack(i32, i32, i32) #1

declare dso_local i32 @qedf_process_completions(%struct.qedf_fastpath*) #1

declare dso_local i64 @qedf_fp_has_work(%struct.qedf_fastpath*) #1

declare dso_local i32 @qed_sb_update_sb_idx(i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
