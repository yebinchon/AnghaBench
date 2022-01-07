; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_add_sas_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_add_sas_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_sas_node = type { i32 }
%struct.pqi_scsi_dev = type { %struct.pqi_sas_port*, i32 }
%struct.pqi_sas_port = type { %struct.sas_rphy* }
%struct.sas_rphy = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqi_add_sas_device(%struct.pqi_sas_node* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_sas_node*, align 8
  %5 = alloca %struct.pqi_scsi_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pqi_sas_port*, align 8
  %8 = alloca %struct.sas_rphy*, align 8
  store %struct.pqi_sas_node* %0, %struct.pqi_sas_node** %4, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %5, align 8
  %9 = load %struct.pqi_sas_node*, %struct.pqi_sas_node** %4, align 8
  %10 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %14 = call %struct.pqi_sas_port* @pqi_alloc_sas_port(%struct.pqi_sas_node* %9, i32 %12, %struct.pqi_scsi_dev* %13)
  store %struct.pqi_sas_port* %14, %struct.pqi_sas_port** %7, align 8
  %15 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %7, align 8
  %16 = icmp ne %struct.pqi_sas_port* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %7, align 8
  %22 = call %struct.sas_rphy* @pqi_sas_rphy_alloc(%struct.pqi_sas_port* %21)
  store %struct.sas_rphy* %22, %struct.sas_rphy** %8, align 8
  %23 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %24 = icmp ne %struct.sas_rphy* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %30 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %7, align 8
  %31 = getelementptr inbounds %struct.pqi_sas_port, %struct.pqi_sas_port* %30, i32 0, i32 0
  store %struct.sas_rphy* %29, %struct.sas_rphy** %31, align 8
  %32 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %7, align 8
  %33 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %33, i32 0, i32 0
  store %struct.pqi_sas_port* %32, %struct.pqi_sas_port** %34, align 8
  %35 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %7, align 8
  %36 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %37 = call i32 @pqi_sas_port_add_rphy(%struct.pqi_sas_port* %35, %struct.sas_rphy* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %42

41:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %48

42:                                               ; preds = %40, %25
  %43 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %7, align 8
  %44 = call i32 @pqi_free_sas_port(%struct.pqi_sas_port* %43)
  %45 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %46 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %45, i32 0, i32 0
  store %struct.pqi_sas_port* null, %struct.pqi_sas_port** %46, align 8
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %41, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.pqi_sas_port* @pqi_alloc_sas_port(%struct.pqi_sas_node*, i32, %struct.pqi_scsi_dev*) #1

declare dso_local %struct.sas_rphy* @pqi_sas_rphy_alloc(%struct.pqi_sas_port*) #1

declare dso_local i32 @pqi_sas_port_add_rphy(%struct.pqi_sas_port*, %struct.sas_rphy*) #1

declare dso_local i32 @pqi_free_sas_port(%struct.pqi_sas_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
