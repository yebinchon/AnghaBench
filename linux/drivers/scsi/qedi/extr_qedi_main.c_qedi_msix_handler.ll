; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_msix_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_msix_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_fastpath = type { i32, %struct.qedi_ctx* }
%struct.qedi_ctx = type { i32 }

@IGU_INT_DISABLE = common dso_local global i32 0, align 4
@QEDI_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"process already running\0A\00", align 1
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qedi_msix_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_msix_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qedi_fastpath*, align 8
  %6 = alloca %struct.qedi_ctx*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.qedi_fastpath*
  store %struct.qedi_fastpath* %9, %struct.qedi_fastpath** %5, align 8
  %10 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %11 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %10, i32 0, i32 1
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  store %struct.qedi_ctx* %12, %struct.qedi_ctx** %6, align 8
  store i32 1, i32* %7, align 4
  %13 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %14 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IGU_INT_DISABLE, align 4
  %17 = call i32 @qed_sb_ack(i32 %15, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %48, %2
  %19 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %20 = call i32 @qedi_process_completions(%struct.qedi_fastpath* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* @QEDI_LOG_DISC, align 4
  %27 = call i32 @QEDI_INFO(i32* %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %30 = call i64 @qedi_fp_has_work(%struct.qedi_fastpath* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %34 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @qed_sb_update_sb_idx(i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = call i32 (...) @rmb()
  %39 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %40 = call i64 @qedi_fp_has_work(%struct.qedi_fastpath* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.qedi_fastpath*, %struct.qedi_fastpath** %5, align 8
  %44 = getelementptr inbounds %struct.qedi_fastpath, %struct.qedi_fastpath* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IGU_INT_ENABLE, align 4
  %47 = call i32 @qed_sb_ack(i32 %45, i32 %46, i32 1)
  br label %49

48:                                               ; preds = %37
  br label %18

49:                                               ; preds = %42
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local i32 @qed_sb_ack(i32, i32, i32) #1

declare dso_local i32 @qedi_process_completions(%struct.qedi_fastpath*) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*) #1

declare dso_local i64 @qedi_fp_has_work(%struct.qedi_fastpath*) #1

declare dso_local i32 @qed_sb_update_sb_idx(i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
