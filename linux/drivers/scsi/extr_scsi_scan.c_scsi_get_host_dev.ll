; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_get_host_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_get_host_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64 }
%struct.Scsi_Host = type { i32, i32, i32 }
%struct.scsi_target = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_device* @scsi_get_host_dev(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_target*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  store %struct.scsi_device* null, %struct.scsi_device** %3, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = call i32 @scsi_host_scan_allowed(%struct.Scsi_Host* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 2
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.scsi_target* @scsi_alloc_target(i32* %14, i32 0, i32 %17)
  store %struct.scsi_target* %18, %struct.scsi_target** %4, align 8
  %19 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %20 = icmp ne %struct.scsi_target* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %37

22:                                               ; preds = %12
  %23 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %24 = call %struct.scsi_device* @scsi_alloc_sdev(%struct.scsi_target* %23, i32 0, i32* null)
  store %struct.scsi_device* %24, %struct.scsi_device** %3, align 8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %26 = icmp ne %struct.scsi_device* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %32 = call i32 @scsi_target_reap(%struct.scsi_target* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %34, i32 0, i32 0
  %36 = call i32 @put_device(i32* %35)
  br label %37

37:                                               ; preds = %33, %21, %11
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  ret %struct.scsi_device* %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_host_scan_allowed(%struct.Scsi_Host*) #1

declare dso_local %struct.scsi_target* @scsi_alloc_target(i32*, i32, i32) #1

declare dso_local %struct.scsi_device* @scsi_alloc_sdev(%struct.scsi_target*, i32, i32*) #1

declare dso_local i32 @scsi_target_reap(%struct.scsi_target*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
