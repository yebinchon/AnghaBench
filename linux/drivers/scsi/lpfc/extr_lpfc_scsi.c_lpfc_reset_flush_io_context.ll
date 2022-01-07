; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_reset_flush_io_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_reset_flush_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@LPFC_FCP_RING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"0724 I/O flush failure for context %s : cnt x%x\0A\00", align 1
@LPFC_CTX_LUN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"LUN\00", align 1
@LPFC_CTX_TGT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"TGT\00", align 1
@LPFC_CTX_HOST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32, i32, i64)* @lpfc_reset_flush_io_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_reset_flush_io_context(%struct.lpfc_vport* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 1
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %10, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @lpfc_sli_sum_iocb(%struct.lpfc_vport* %16, i32 %17, i32 %18, i64 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @LPFC_FCP_RING, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @lpfc_sli_abort_taskmgmt(%struct.lpfc_vport* %24, i32* %30, i32 %31, i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %23, %4
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 2, %38
  %40 = mul nsw i32 %39, 1000
  %41 = call i64 @msecs_to_jiffies(i32 %40)
  %42 = load i64, i64* @jiffies, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %54, %35
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @jiffies, align 8
  %47 = call i64 @time_after(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i1 [ false, %44 ], [ %51, %49 ]
  br i1 %53, label %54, label %62

54:                                               ; preds = %52
  %55 = call i64 @msecs_to_jiffies(i32 20)
  %56 = call i32 @schedule_timeout_uninterruptible(i64 %55)
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @lpfc_sli_sum_iocb(%struct.lpfc_vport* %57, i32 %58, i32 %59, i64 %60)
  store i32 %61, i32* %12, align 4
  br label %44

62:                                               ; preds = %52
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load i32, i32* @LOG_FCP, align 4
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @LPFC_CTX_LUN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %86

73:                                               ; preds = %65
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @LPFC_CTX_TGT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %84

78:                                               ; preds = %73
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @LPFC_CTX_HOST, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %84

84:                                               ; preds = %78, %77
  %85 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %77 ], [ %83, %78 ]
  br label %86

86:                                               ; preds = %84, %72
  %87 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %72 ], [ %85, %84 ]
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %87, i32 %88)
  %90 = load i32, i32* @FAILED, align 4
  store i32 %90, i32* %5, align 4
  br label %93

91:                                               ; preds = %62
  %92 = load i32, i32* @SUCCESS, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @lpfc_sli_sum_iocb(%struct.lpfc_vport*, i32, i32, i64) #1

declare dso_local i32 @lpfc_sli_abort_taskmgmt(%struct.lpfc_vport*, i32*, i32, i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i64) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
