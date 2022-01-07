; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_try_target_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_try_target_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, %struct.scsi_host_template* }
%struct.scsi_host_template = type { i32 (%struct.scsi_cmnd.0*)* }
%struct.scsi_cmnd.0 = type opaque

@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@__scsi_report_device_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @scsi_try_target_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_try_target_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.scsi_host_template*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 1
  %15 = load %struct.scsi_host_template*, %struct.scsi_host_template** %14, align 8
  store %struct.scsi_host_template* %15, %struct.scsi_host_template** %7, align 8
  %16 = load %struct.scsi_host_template*, %struct.scsi_host_template** %7, align 8
  %17 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %16, i32 0, i32 0
  %18 = load i32 (%struct.scsi_cmnd.0*)*, i32 (%struct.scsi_cmnd.0*)** %17, align 8
  %19 = icmp ne i32 (%struct.scsi_cmnd.0*)* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @FAILED, align 4
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.scsi_host_template*, %struct.scsi_host_template** %7, align 8
  %24 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %23, i32 0, i32 0
  %25 = load i32 (%struct.scsi_cmnd.0*)*, i32 (%struct.scsi_cmnd.0*)** %24, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = bitcast %struct.scsi_cmnd* %26 to %struct.scsi_cmnd.0*
  %28 = call i32 %25(%struct.scsi_cmnd.0* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %22
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_lock_irqsave(i32 %35, i64 %36)
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @scsi_target(%struct.TYPE_2__* %40)
  %42 = load i32, i32* @__scsi_report_device_reset, align 4
  %43 = call i32 @__starget_for_each_device(i32 %41, i32* null, i32 %42)
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %32, %22
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @__starget_for_each_device(i32, i32*, i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
