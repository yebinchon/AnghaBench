; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_target_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_target_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.attribute_container = type { i32 }
%struct.device = type { i32 }
%struct.Scsi_Host = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.scsi_target = type { i32 }
%struct.spi_internal = type { %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.attribute_container }
%struct.TYPE_10__ = type { i64 (%struct.scsi_target*)* }

@spi_host_class = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_container*, %struct.device*)* @spi_target_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_target_match(%struct.attribute_container* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.scsi_target*, align 8
  %8 = alloca %struct.spi_internal*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i32 @scsi_is_target_device(%struct.device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.Scsi_Host* @dev_to_shost(i32 %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %6, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @spi_host_class, i32 0, i32 0)
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %13
  store i32 0, i32* %3, align 4
  br label %63

32:                                               ; preds = %22
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = call %struct.spi_internal* @to_spi_internal(%struct.TYPE_13__* %35)
  store %struct.spi_internal* %36, %struct.spi_internal** %8, align 8
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call %struct.scsi_target* @to_scsi_target(%struct.device* %37)
  store %struct.scsi_target* %38, %struct.scsi_target** %7, align 8
  %39 = load %struct.spi_internal*, %struct.spi_internal** %8, align 8
  %40 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64 (%struct.scsi_target*)*, i64 (%struct.scsi_target*)** %42, align 8
  %44 = icmp ne i64 (%struct.scsi_target*)* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %32
  %46 = load %struct.spi_internal*, %struct.spi_internal** %8, align 8
  %47 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64 (%struct.scsi_target*)*, i64 (%struct.scsi_target*)** %49, align 8
  %51 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %52 = call i64 %50(%struct.scsi_target* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %63

55:                                               ; preds = %45, %32
  %56 = load %struct.spi_internal*, %struct.spi_internal** %8, align 8
  %57 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %61 = icmp eq %struct.attribute_container* %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %54, %31, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @scsi_is_target_device(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.spi_internal* @to_spi_internal(%struct.TYPE_13__*) #1

declare dso_local %struct.scsi_target* @to_scsi_target(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
