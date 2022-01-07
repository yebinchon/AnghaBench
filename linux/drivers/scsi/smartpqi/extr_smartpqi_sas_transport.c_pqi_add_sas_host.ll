; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_add_sas_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_add_sas_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.device }
%struct.device = type { i32 }
%struct.pqi_ctrl_info = type { %struct.pqi_sas_node*, i32 }
%struct.pqi_sas_node = type { i32 }
%struct.pqi_sas_port = type { i32 }
%struct.pqi_sas_phy = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqi_add_sas_host(%struct.Scsi_Host* %0, %struct.pqi_ctrl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.pqi_ctrl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.pqi_sas_node*, align 8
  %9 = alloca %struct.pqi_sas_port*, align 8
  %10 = alloca %struct.pqi_sas_phy*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.pqi_ctrl_info* %1, %struct.pqi_ctrl_info** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.pqi_sas_node* @pqi_alloc_sas_node(%struct.device* %13)
  store %struct.pqi_sas_node* %14, %struct.pqi_sas_node** %8, align 8
  %15 = load %struct.pqi_sas_node*, %struct.pqi_sas_node** %8, align 8
  %16 = icmp ne %struct.pqi_sas_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.pqi_sas_node*, %struct.pqi_sas_node** %8, align 8
  %22 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %23 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.pqi_sas_port* @pqi_alloc_sas_port(%struct.pqi_sas_node* %21, i32 %24, i32* null)
  store %struct.pqi_sas_port* %25, %struct.pqi_sas_port** %9, align 8
  %26 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %27 = icmp ne %struct.pqi_sas_port* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %55

31:                                               ; preds = %20
  %32 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %33 = call %struct.pqi_sas_phy* @pqi_alloc_sas_phy(%struct.pqi_sas_port* %32)
  store %struct.pqi_sas_phy* %33, %struct.pqi_sas_phy** %10, align 8
  %34 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %10, align 8
  %35 = icmp ne %struct.pqi_sas_phy* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %52

39:                                               ; preds = %31
  %40 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %10, align 8
  %41 = call i32 @pqi_sas_port_add_phy(%struct.pqi_sas_phy* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %49

45:                                               ; preds = %39
  %46 = load %struct.pqi_sas_node*, %struct.pqi_sas_node** %8, align 8
  %47 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %48 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %47, i32 0, i32 0
  store %struct.pqi_sas_node* %46, %struct.pqi_sas_node** %48, align 8
  store i32 0, i32* %3, align 4
  br label %59

49:                                               ; preds = %44
  %50 = load %struct.pqi_sas_phy*, %struct.pqi_sas_phy** %10, align 8
  %51 = call i32 @pqi_free_sas_phy(%struct.pqi_sas_phy* %50)
  br label %52

52:                                               ; preds = %49, %36
  %53 = load %struct.pqi_sas_port*, %struct.pqi_sas_port** %9, align 8
  %54 = call i32 @pqi_free_sas_port(%struct.pqi_sas_port* %53)
  br label %55

55:                                               ; preds = %52, %28
  %56 = load %struct.pqi_sas_node*, %struct.pqi_sas_node** %8, align 8
  %57 = call i32 @pqi_free_sas_node(%struct.pqi_sas_node* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %45, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.pqi_sas_node* @pqi_alloc_sas_node(%struct.device*) #1

declare dso_local %struct.pqi_sas_port* @pqi_alloc_sas_port(%struct.pqi_sas_node*, i32, i32*) #1

declare dso_local %struct.pqi_sas_phy* @pqi_alloc_sas_phy(%struct.pqi_sas_port*) #1

declare dso_local i32 @pqi_sas_port_add_phy(%struct.pqi_sas_phy*) #1

declare dso_local i32 @pqi_free_sas_phy(%struct.pqi_sas_phy*) #1

declare dso_local i32 @pqi_free_sas_port(%struct.pqi_sas_port*) #1

declare dso_local i32 @pqi_free_sas_node(%struct.pqi_sas_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
