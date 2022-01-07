; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_handle_param_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_handle_param_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi = type { i32 }
%struct.virtio_scsi_event = type { i32*, i32 }
%struct.scsi_device = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"SCSI device %d 0 %d %d not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_scsi*, %struct.virtio_scsi_event*)* @virtscsi_handle_param_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_handle_param_change(%struct.virtio_scsi* %0, %struct.virtio_scsi_event* %1) #0 {
  %3 = alloca %struct.virtio_scsi*, align 8
  %4 = alloca %struct.virtio_scsi_event*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.virtio_scsi* %0, %struct.virtio_scsi** %3, align 8
  store %struct.virtio_scsi_event* %1, %struct.virtio_scsi_event** %4, align 8
  %11 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %12 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.Scsi_Host* @virtio_scsi_host(i32 %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %16 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %21 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %27 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %25, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %33 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %36 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @virtio32_to_cpu(i32 %34, i32 %37)
  %39 = and i32 %38, 255
  store i32 %39, i32* %9, align 4
  %40 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %41 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.virtio_scsi_event*, %struct.virtio_scsi_event** %4, align 8
  %44 = getelementptr inbounds %struct.virtio_scsi_event, %struct.virtio_scsi_event* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @virtio32_to_cpu(i32 %42, i32 %45)
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %10, align 4
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %48, i32 0, i32 %49, i32 %50)
  store %struct.scsi_device* %51, %struct.scsi_device** %5, align 8
  %52 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %53 = icmp ne %struct.scsi_device* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %2
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  br label %80

61:                                               ; preds = %2
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 42
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %67, %64
  %74 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %75 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %74, i32 0, i32 0
  %76 = call i32 @scsi_rescan_device(i32* %75)
  br label %77

77:                                               ; preds = %73, %70, %61
  %78 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %79 = call i32 @scsi_device_put(%struct.scsi_device* %78)
  br label %80

80:                                               ; preds = %77, %54
  ret void
}

declare dso_local %struct.Scsi_Host* @virtio_scsi_host(i32) #1

declare dso_local i32 @virtio32_to_cpu(i32, i32) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @scsi_rescan_device(i32*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
