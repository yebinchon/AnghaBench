; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_pm.c_sdev_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_pm.c_sdev_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { {}* }
%struct.scsi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sdev_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdev_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.dev_pm_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.scsi_device* @to_scsi_device(%struct.device* %6)
  store %struct.scsi_device* %7, %struct.scsi_device** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %16, align 8
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi %struct.dev_pm_ops* [ %17, %12 ], [ null, %18 ]
  store %struct.dev_pm_ops* %20, %struct.dev_pm_ops** %4, align 8
  store i32 0, i32* %5, align 4
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @blk_pre_runtime_resume(i32 %23)
  %25 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %4, align 8
  %26 = icmp ne %struct.dev_pm_ops* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %4, align 8
  %29 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.device*)**
  %31 = load i32 (%struct.device*)*, i32 (%struct.device*)** %30, align 8
  %32 = icmp ne i32 (%struct.device*)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %4, align 8
  %35 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.device*)**
  %37 = load i32 (%struct.device*)*, i32 (%struct.device*)** %36, align 8
  %38 = load %struct.device*, %struct.device** %2, align 8
  %39 = call i32 %37(%struct.device* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %33, %27, %19
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @blk_post_runtime_resume(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @blk_pre_runtime_resume(i32) #1

declare dso_local i32 @blk_post_runtime_resume(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
