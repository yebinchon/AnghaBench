; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.scsi_device = type { i32, %struct.scsi_device_handler* }
%struct.scsi_device_handler = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_dh_attach(%struct.request_queue* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.scsi_device_handler*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %10 = call %struct.scsi_device* @scsi_device_from_queue(%struct.request_queue* %9)
  store %struct.scsi_device* %10, %struct.scsi_device** %6, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %12 = icmp ne %struct.scsi_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.scsi_device_handler* @scsi_dh_lookup(i8* %17)
  store %struct.scsi_device_handler* %18, %struct.scsi_device_handler** %7, align 8
  %19 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %7, align 8
  %20 = icmp ne %struct.scsi_device_handler* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %43

24:                                               ; preds = %16
  %25 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 1
  %27 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %26, align 8
  %28 = icmp ne %struct.scsi_device_handler* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 1
  %32 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %31, align 8
  %33 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %7, align 8
  %34 = icmp ne %struct.scsi_device_handler* %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %29
  br label %43

39:                                               ; preds = %24
  %40 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %41 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %7, align 8
  %42 = call i32 @scsi_dh_handler_attach(%struct.scsi_device* %40, %struct.scsi_device_handler* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %38, %21
  %44 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 0
  %46 = call i32 @put_device(i32* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.scsi_device* @scsi_device_from_queue(%struct.request_queue*) #1

declare dso_local %struct.scsi_device_handler* @scsi_dh_lookup(i8*) #1

declare dso_local i32 @scsi_dh_handler_attach(%struct.scsi_device*, %struct.scsi_device_handler*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
