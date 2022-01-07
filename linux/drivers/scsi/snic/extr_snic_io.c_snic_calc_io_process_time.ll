; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_calc_io_process_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_calc_io_process_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snic_req_info = type { i64 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_calc_io_process_time(%struct.snic* %0, %struct.snic_req_info* %1) #0 {
  %3 = alloca %struct.snic*, align 8
  %4 = alloca %struct.snic_req_info*, align 8
  %5 = alloca i64, align 8
  store %struct.snic* %0, %struct.snic** %3, align 8
  store %struct.snic_req_info* %1, %struct.snic_req_info** %4, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %8 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.snic*, %struct.snic** %3, align 8
  %13 = getelementptr inbounds %struct.snic, %struct.snic* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i64 @atomic64_read(i32* %15)
  %17 = icmp sgt i64 %11, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.snic*, %struct.snic** %3, align 8
  %20 = getelementptr inbounds %struct.snic, %struct.snic* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @atomic64_set(i32* %22, i64 %23)
  br label %25

25:                                               ; preds = %18, %2
  ret void
}

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
