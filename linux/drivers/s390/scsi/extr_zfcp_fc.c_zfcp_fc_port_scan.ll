; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_port_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_port_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@port_scan_ratelimit = common dso_local global i64 0, align 8
@port_scan_backoff = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_adapter*)* @zfcp_fc_port_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_port_scan(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca %struct.zfcp_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %2, align 8
  %7 = load i64, i64* @jiffies, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @time_before(i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = sub i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @port_scan_ratelimit, align 8
  %20 = load i64, i64* @port_scan_backoff, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @msecs_to_jiffies(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @min(i64 %23, i64 %24)
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %30, i32 0, i32 1
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @queue_delayed_work(i32 %29, i32* %31, i64 %32)
  ret void
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
