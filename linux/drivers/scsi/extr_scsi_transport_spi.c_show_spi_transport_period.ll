; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_show_spi_transport_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_show_spi_transport_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_target = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.spi_internal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.scsi_target*)* }
%struct.spi_transport_attrs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_spi_transport_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_spi_transport_period(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsi_target*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.spi_internal*, align 8
  %10 = alloca %struct.spi_transport_attrs*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.scsi_target* @transport_class_to_starget(%struct.device* %11)
  store %struct.scsi_target* %12, %struct.scsi_target** %7, align 8
  %13 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %14 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.Scsi_Host* @dev_to_shost(i32 %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %8, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.spi_internal* @to_spi_internal(i32 %20)
  store %struct.spi_internal* %21, %struct.spi_internal** %9, align 8
  %22 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %23 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.spi_transport_attrs*
  store %struct.spi_transport_attrs* %24, %struct.spi_transport_attrs** %10, align 8
  %25 = load %struct.spi_internal*, %struct.spi_internal** %9, align 8
  %26 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.scsi_target*)*, i32 (%struct.scsi_target*)** %28, align 8
  %30 = icmp ne i32 (%struct.scsi_target*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.spi_internal*, %struct.spi_internal** %9, align 8
  %33 = getelementptr inbounds %struct.spi_internal, %struct.spi_internal* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.scsi_target*)*, i32 (%struct.scsi_target*)** %35, align 8
  %37 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %38 = call i32 %36(%struct.scsi_target* %37)
  br label %39

39:                                               ; preds = %31, %3
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.spi_transport_attrs*, %struct.spi_transport_attrs** %10, align 8
  %42 = getelementptr inbounds %struct.spi_transport_attrs, %struct.spi_transport_attrs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @show_spi_transport_period_helper(i8* %40, i32 %43)
  ret i32 %44
}

declare dso_local %struct.scsi_target* @transport_class_to_starget(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.spi_internal* @to_spi_internal(i32) #1

declare dso_local i32 @show_spi_transport_period_helper(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
