; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_port_alloc_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_port_alloc_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_port = type { i32 }
%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_host_attrs = type { i32, i32 }
%struct.sas_rphy = type { i32 }
%struct.sas_expander_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sas_port* @sas_port_alloc_num(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_host_attrs*, align 8
  %6 = alloca %struct.sas_rphy*, align 8
  %7 = alloca %struct.sas_expander_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %4, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = call %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host* %10)
  store %struct.sas_host_attrs* %11, %struct.sas_host_attrs** %5, align 8
  %12 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %5, align 8
  %13 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = call i64 @scsi_is_sas_expander_device(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call %struct.sas_rphy* @dev_to_rphy(%struct.device* %19)
  store %struct.sas_rphy* %20, %struct.sas_rphy** %6, align 8
  %21 = load %struct.sas_rphy*, %struct.sas_rphy** %6, align 8
  %22 = call %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy* %21)
  store %struct.sas_expander_device* %22, %struct.sas_expander_device** %7, align 8
  %23 = load %struct.sas_expander_device*, %struct.sas_expander_device** %7, align 8
  %24 = getelementptr inbounds %struct.sas_expander_device, %struct.sas_expander_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %5, align 8
  %29 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %18
  %33 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %5, align 8
  %34 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.device*, %struct.device** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call %struct.sas_port* @sas_port_alloc(%struct.device* %36, i32 %37)
  ret %struct.sas_port* %38
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @scsi_is_sas_expander_device(%struct.device*) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(%struct.device*) #1

declare dso_local %struct.sas_expander_device* @rphy_to_expander_device(%struct.sas_rphy*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sas_port* @sas_port_alloc(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
