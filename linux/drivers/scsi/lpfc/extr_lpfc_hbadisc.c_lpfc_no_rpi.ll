; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_no_rpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_no_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64 }
%struct.lpfc_nodelist = type { i32 }

@completions = common dso_local global i32 0, align 4
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@IOSTAT_LOCAL_REJECT = common dso_local global i32 0, align 4
@IOERR_SLI_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_nodelist*)* @lpfc_no_rpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_no_rpi(%struct.lpfc_hba* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %4, align 8
  %5 = load i32, i32* @completions, align 4
  %6 = call i32 @LIST_HEAD(i32 %5)
  %7 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %8 = call i32 @lpfc_fabric_abort_nport(%struct.lpfc_nodelist* %7)
  %9 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LPFC_SLI_REV4, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %24 = call i32 @lpfc_sli3_dequeue_nport_iocbs(%struct.lpfc_hba* %22, %struct.lpfc_nodelist* %23, i32* @completions)
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %28 = call i32 @lpfc_sli4_dequeue_nport_iocbs(%struct.lpfc_hba* %26, %struct.lpfc_nodelist* %27, i32* @completions)
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = load i32, i32* @IOSTAT_LOCAL_REJECT, align 4
  %33 = load i32, i32* @IOERR_SLI_ABORTED, align 4
  %34 = call i32 @lpfc_sli_cancel_iocbs(%struct.lpfc_hba* %31, i32* @completions, i32 %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @lpfc_fabric_abort_nport(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_sli3_dequeue_nport_iocbs(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @lpfc_sli4_dequeue_nport_iocbs(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @lpfc_sli_cancel_iocbs(%struct.lpfc_hba*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
