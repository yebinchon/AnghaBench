; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_hbq_to_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 (%struct.lpfc_hba*, i32, %struct.hbq_dmabuf*)*, i32 }
%struct.hbq_dmabuf = type opaque
%struct.hbq_dmabuf.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32, %struct.hbq_dmabuf.0*)* @lpfc_sli_hbq_to_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_hbq_to_firmware(%struct.lpfc_hba* %0, i32 %1, %struct.hbq_dmabuf.0* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hbq_dmabuf.0*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hbq_dmabuf.0* %2, %struct.hbq_dmabuf.0** %6, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = load i32 (%struct.lpfc_hba*, i32, %struct.hbq_dmabuf*)*, i32 (%struct.lpfc_hba*, i32, %struct.hbq_dmabuf*)** %11, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hbq_dmabuf.0*, %struct.hbq_dmabuf.0** %6, align 8
  %16 = bitcast %struct.hbq_dmabuf.0* %15 to %struct.hbq_dmabuf*
  %17 = call i32 %12(%struct.lpfc_hba* %13, i32 %14, %struct.hbq_dmabuf* %16)
  ret i32 %17
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
