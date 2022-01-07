; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_proc.c_scsi_remove_single_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_proc.c_scsi_remove_single_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.Scsi_Host = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @scsi_remove_single_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_remove_single_device(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.Scsi_Host* @scsi_host_lookup(i32 %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %11, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %18 = icmp ne %struct.Scsi_Host* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %38

21:                                               ; preds = %4
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %22, i32 %23, i32 %24, i32 %25)
  store %struct.scsi_device* %26, %struct.scsi_device** %10, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %28 = icmp ne %struct.scsi_device* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %31 = call i32 @scsi_remove_device(%struct.scsi_device* %30)
  %32 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %33 = call i32 @scsi_device_put(%struct.scsi_device* %32)
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %36 = call i32 @scsi_host_put(%struct.Scsi_Host* %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %19
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.Scsi_Host* @scsi_host_lookup(i32) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
