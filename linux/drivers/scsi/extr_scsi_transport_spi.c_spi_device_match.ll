; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.attribute_container = type { i32 }
%struct.device = type { i32 }
%struct.scsi_device = type { i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.spi_internal = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (i32)* }

@spi_host_class = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_container*, %struct.device*)* @spi_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_device_match(%struct.attribute_container* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.spi_internal*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i32 @scsi_is_sdev_device(%struct.device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.scsi_device* @to_scsi_device(%struct.device* %14)
  store %struct.scsi_device* %15, %struct.scsi_device** %6, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %7, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @spi_host_class, i32 0, i32 0)
  br i1 %31, label %32, label %33

32:                                               ; preds = %23, %13
  store i32 0, i32* %3, align 4
  br label %57

33:                                               ; preds = %23
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = call %struct.spi_internal* @to_spi_internal(%struct.TYPE_9__* %36)
  store %struct.spi_internal* %37, %struct.spi_internal** %8, align 8
  %38 = load %struct.spi_internal*, %struct.spi_internal** %8, align 8
  %39 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64 (i32)*, i64 (i32)** %41, align 8
  %43 = icmp ne i64 (i32)* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load %struct.spi_internal*, %struct.spi_internal** %8, align 8
  %46 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64 (i32)*, i64 (i32)** %48, align 8
  %50 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 %49(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %44, %33
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %32, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @scsi_is_sdev_device(%struct.device*) #1

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.spi_internal* @to_spi_internal(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
