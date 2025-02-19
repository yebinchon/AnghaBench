; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_sata_eh_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_sata_eh_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.ipr_hrr_queue* }
%struct.ipr_hrr_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_sata_eh_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_sata_eh_done(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_hrr_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %5 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %5, i32 0, i32 0
  %7 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  store %struct.ipr_hrr_queue* %7, %struct.ipr_hrr_queue** %3, align 8
  %8 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %13 = call i32 @__ipr_sata_eh_done(%struct.ipr_cmnd* %12)
  %14 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %3, align 8
  %15 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__ipr_sata_eh_done(%struct.ipr_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
