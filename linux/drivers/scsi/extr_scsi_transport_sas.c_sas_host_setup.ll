; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_host_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_host_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport_container = type { i32 }
%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_host_attrs = type { i64, i64, i64, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fail to a bsg device %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @sas_host_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_host_setup(%struct.transport_container* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.transport_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.sas_host_attrs*, align 8
  store %struct.transport_container* %0, %struct.transport_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %7, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %12 = call %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host* %11)
  store %struct.sas_host_attrs* %12, %struct.sas_host_attrs** %8, align 8
  %13 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %8, align 8
  %14 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %13, i32 0, i32 4
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %8, align 8
  %17 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %16, i32 0, i32 3
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %8, align 8
  %20 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %8, align 8
  %22 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %8, align 8
  %24 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %26 = call i64 @sas_bsg_initialize(%struct.Scsi_Host* %25, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_printk(i32 %29, %struct.device* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %3
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @sas_bsg_initialize(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @dev_printk(i32, %struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
