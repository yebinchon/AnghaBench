; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_set_link_timer_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_set_link_timer_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@link_timeout_disable_link = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @set_link_timer_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_link_timer_quirk(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %3 = load i32, i32* @link_timeout_disable_link, align 4
  %4 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %5 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32 %3, i32* %6, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = call i64 @msecs_to_jiffies(i32 1000)
  %9 = add nsw i64 %7, %8
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 0
  %15 = call i32 @add_timer(%struct.TYPE_2__* %14)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
