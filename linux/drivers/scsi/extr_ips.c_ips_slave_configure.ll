; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TYPE_DISK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ips_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.TYPE_5__* @IPS_HA(i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TYPE_DISK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 2
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %19
  %36 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %13, %1
  %40 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  %42 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  ret i32 0
}

declare dso_local %struct.TYPE_5__* @IPS_HA(i32) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
