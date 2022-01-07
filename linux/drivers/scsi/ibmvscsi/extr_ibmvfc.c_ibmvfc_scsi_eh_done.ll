; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_scsi_eh_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_scsi_eh_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { i64, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_scsi_eh_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_scsi_eh_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %4 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %5 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %4, i32 0, i32 1
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  store %struct.scsi_cmnd* %6, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = icmp ne %struct.scsi_cmnd* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %10)
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %13, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = call i32 %14(%struct.scsi_cmnd* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %19 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @complete(i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %29 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %28)
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
