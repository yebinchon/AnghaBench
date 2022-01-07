; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_device*, i8*)* }

@SCSI_DH_NOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_dh_set_params(%struct.request_queue* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @SCSI_DH_NOSYS, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %11 = call %struct.scsi_device* @scsi_device_from_queue(%struct.request_queue* %10)
  store %struct.scsi_device* %11, %struct.scsi_device** %6, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %13 = icmp ne %struct.scsi_device* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.scsi_device*, i8*)*, i32 (%struct.scsi_device*, i8*)** %25, align 8
  %27 = icmp ne i32 (%struct.scsi_device*, i8*)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.scsi_device*, i8*)*, i32 (%struct.scsi_device*, i8*)** %32, align 8
  %34 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 %33(%struct.scsi_device* %34, i8* %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %28, %21, %16
  %38 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 0
  %40 = call i32 @put_device(i32* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.scsi_device* @scsi_device_from_queue(%struct.request_queue*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
