; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc.h_lpfc_sli4_mod_hba_eq_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc.h_lpfc_sli4_mod_hba_eq_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_queue = type { i32, i32 }
%struct.lpfc_register = type { i64 }

@lpfc_sliport_eqdelay_id = common dso_local global i32 0, align 4
@lpfc_sliport_eqdelay_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_queue*, i32)* @lpfc_sli4_mod_hba_eq_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_mod_hba_eq_delay(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_register, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @lpfc_sliport_eqdelay_id, align 4
  %10 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %11 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bf_set(i32 %9, %struct.lpfc_register* %7, i32 %12)
  %14 = load i32, i32* @lpfc_sliport_eqdelay_delay, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @bf_set(i32 %14, %struct.lpfc_register* %7, i32 %15)
  %17 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel(i64 %18, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
