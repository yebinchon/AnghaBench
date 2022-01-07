; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_stats.h_snic_stats_update_active_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_stats.h_snic_stats_update_active_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic_stats = type { %struct.snic_io_stats }
%struct.snic_io_stats = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snic_stats*)* @snic_stats_update_active_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_stats_update_active_ios(%struct.snic_stats* %0) #0 {
  %2 = alloca %struct.snic_stats*, align 8
  %3 = alloca %struct.snic_io_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.snic_stats* %0, %struct.snic_stats** %2, align 8
  %5 = load %struct.snic_stats*, %struct.snic_stats** %2, align 8
  %6 = getelementptr inbounds %struct.snic_stats, %struct.snic_stats* %5, i32 0, i32 0
  store %struct.snic_io_stats* %6, %struct.snic_io_stats** %3, align 8
  %7 = load %struct.snic_io_stats*, %struct.snic_io_stats** %3, align 8
  %8 = getelementptr inbounds %struct.snic_io_stats, %struct.snic_io_stats* %7, i32 0, i32 2
  %9 = call i32 @atomic64_read(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.snic_io_stats*, %struct.snic_io_stats** %3, align 8
  %11 = getelementptr inbounds %struct.snic_io_stats, %struct.snic_io_stats* %10, i32 0, i32 1
  %12 = call i32 @atomic64_read(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.snic_io_stats*, %struct.snic_io_stats** %3, align 8
  %17 = getelementptr inbounds %struct.snic_io_stats, %struct.snic_io_stats* %16, i32 0, i32 1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @atomic64_set(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.snic_io_stats*, %struct.snic_io_stats** %3, align 8
  %22 = getelementptr inbounds %struct.snic_io_stats, %struct.snic_io_stats* %21, i32 0, i32 0
  %23 = call i32 @atomic64_inc(i32* %22)
  ret void
}

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
