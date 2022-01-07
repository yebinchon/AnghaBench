; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_update_abort_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_update_abort_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snic_abort_stats }
%struct.snic_abort_stats = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Updating Abort stats.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snic*, i32)* @snic_update_abort_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_update_abort_stats(%struct.snic* %0, i32 %1) #0 {
  %3 = alloca %struct.snic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snic_abort_stats*, align 8
  store %struct.snic* %0, %struct.snic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snic*, %struct.snic** %3, align 8
  %7 = getelementptr inbounds %struct.snic, %struct.snic* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.snic_abort_stats* %8, %struct.snic_abort_stats** %5, align 8
  %9 = load %struct.snic*, %struct.snic** %3, align 8
  %10 = getelementptr inbounds %struct.snic, %struct.snic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SNIC_SCSI_DBG(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %23 [
    i32 129, label %14
    i32 128, label %15
    i32 130, label %19
  ]

14:                                               ; preds = %2
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.snic_abort_stats*, %struct.snic_abort_stats** %5, align 8
  %17 = getelementptr inbounds %struct.snic_abort_stats, %struct.snic_abort_stats* %16, i32 0, i32 2
  %18 = call i32 @atomic64_inc(i32* %17)
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.snic_abort_stats*, %struct.snic_abort_stats** %5, align 8
  %21 = getelementptr inbounds %struct.snic_abort_stats, %struct.snic_abort_stats* %20, i32 0, i32 1
  %22 = call i32 @atomic64_inc(i32* %21)
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.snic_abort_stats*, %struct.snic_abort_stats** %5, align 8
  %25 = getelementptr inbounds %struct.snic_abort_stats, %struct.snic_abort_stats* %24, i32 0, i32 0
  %26 = call i32 @atomic64_inc(i32* %25)
  br label %27

27:                                               ; preds = %23, %19, %15, %14
  ret void
}

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
