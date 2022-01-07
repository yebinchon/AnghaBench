; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_handle_transport_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_handle_transport_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi = type { i32 }
%struct.virtio_scsi_event = type { i32*, i32 }
%struct.scsi_device = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"SCSI device %d 0 %d %d not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Unsupport virtio scsi event reason %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_scsi*, %struct.virtio_scsi_event*)* @virtscsi_handle_transport_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_handle_transport_reset(%struct.virtio_scsi* %0, %struct.virtio_scsi_event* %1) #0 {
  %3 = alloca %struct.virtio_scsi*, align 8
  %4 = alloca %struct.virtio_scsi_event*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.virtio_scsi* %0, %struct.virtio_scsi** %3, align 8
  store %struct.virtio_scsi_event* %1, %struct.virtio_scsi_event** %4, align 8
  %9 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %10 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.Scsi_Host* @virtio_scsi_host(i32 %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %14 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %19 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %25 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %23, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %31 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %34 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @virtio32_to_cpu(i32 %32, i32 %35)
  switch i32 %36, label %62 [
    i32 128, label %37
    i32 129, label %42
  ]

37:                                               ; preds = %2
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @scsi_add_device(%struct.Scsi_Host* %38, i32 0, i32 %39, i32 %40)
  br label %67

42:                                               ; preds = %2
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %43, i32 0, i32 %44, i32 %45)
  store %struct.scsi_device* %46, %struct.scsi_device** %5, align 8
  %47 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %48 = icmp ne %struct.scsi_device* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %51 = call i32 @scsi_remove_device(%struct.scsi_device* %50)
  %52 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %53 = call i32 @scsi_device_put(%struct.scsi_device* %52)
  br label %61

54:                                               ; preds = %42
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %49
  br label %67

62:                                               ; preds = %2
  %63 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %64 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %61, %37
  ret void
}

declare dso_local %struct.Scsi_Host* @virtio_scsi_host(i32) #1

declare dso_local i32 @virtio32_to_cpu(i32, i32) #1

declare dso_local i32 @scsi_add_device(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
