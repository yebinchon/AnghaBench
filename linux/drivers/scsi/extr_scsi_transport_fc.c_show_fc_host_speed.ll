; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_show_fc_host_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_show_fc_host_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.Scsi_Host*)* }

@FC_PORTSPEED_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_fc_host_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_fc_host_speed(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.fc_internal*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.Scsi_Host* @transport_class_to_shost(%struct.device* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %8, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fc_internal* @to_fc_internal(i32 %14)
  store %struct.fc_internal* %15, %struct.fc_internal** %9, align 8
  %16 = load %struct.fc_internal*, %struct.fc_internal** %9, align 8
  %17 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %19, align 8
  %21 = icmp ne i32 (%struct.Scsi_Host*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.fc_internal*, %struct.fc_internal** %9, align 8
  %24 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %26, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %29 = call i32 %27(%struct.Scsi_Host* %28)
  br label %30

30:                                               ; preds = %22, %3
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %32 = call i64 @fc_host_speed(%struct.Scsi_Host* %31)
  %33 = load i64, i64* @FC_PORTSPEED_UNKNOWN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @snprintf(i8* %36, i32 20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %40 = call i64 @fc_host_speed(%struct.Scsi_Host* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @get_fc_port_speed_names(i64 %40, i8* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.Scsi_Host* @transport_class_to_shost(%struct.device*) #1

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

declare dso_local i64 @fc_host_speed(%struct.Scsi_Host*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @get_fc_port_speed_names(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
