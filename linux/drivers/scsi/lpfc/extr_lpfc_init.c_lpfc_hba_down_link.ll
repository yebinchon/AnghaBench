; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_down_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_down_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"0491 Adapter Link is disabled.\0A\00", align 1
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"2522 Adapter failed to issue DOWN_LINK mbox command rc 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_hba_down_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_hba_down_link(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_6__* @mempool_alloc(i32 %10, i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %23 = load i32, i32* @KERN_ERR, align 4
  %24 = load i32, i32* @LOG_INIT, align 4
  %25 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = call i32 @lpfc_down_link(%struct.lpfc_hba* %26, %struct.TYPE_6__* %27)
  %29 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %32, %struct.TYPE_6__* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MBX_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %21
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MBX_BUSY, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load i32, i32* @LOG_INIT, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mempool_free(%struct.TYPE_6__* %49, i32 %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %67

56:                                               ; preds = %39, %21
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MBX_POLL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mempool_free(%struct.TYPE_6__* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %43, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_6__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_down_link(%struct.lpfc_hba*, %struct.TYPE_6__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
