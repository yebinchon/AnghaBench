; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_if6_eq_clr_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_if6_eq_clr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_register = type { i64 }

@lpfc_if6_eq_doorbell_eqid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_if6_eq_clr_intr(%struct.lpfc_queue* %0) #0 {
  %2 = alloca %struct.lpfc_queue*, align 8
  %3 = alloca %struct.lpfc_register, align 8
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %2, align 8
  %4 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @lpfc_if6_eq_doorbell_eqid, align 4
  %6 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @bf_set(i32 %5, %struct.lpfc_register* %3, i32 %8)
  %10 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @writel(i64 %11, i32 %17)
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
