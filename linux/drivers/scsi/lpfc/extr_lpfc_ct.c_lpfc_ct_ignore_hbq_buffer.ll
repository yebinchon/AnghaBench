; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ct_ignore_hbq_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_ct_ignore_hbq_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_dmabuf = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"0146 Ignoring unsolicited CT No HBQ status = x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"0145 Ignoring unsolicted CT HBQ Size:%d status = x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_dmabuf*, i32)* @lpfc_ct_ignore_hbq_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_ct_ignore_hbq_buffer(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_dmabuf* %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %10 = icmp ne %struct.lpfc_dmabuf* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load i32, i32* @LOG_ELS, align 4
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %11, %4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load i32, i32* @LOG_ELS, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28)
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
