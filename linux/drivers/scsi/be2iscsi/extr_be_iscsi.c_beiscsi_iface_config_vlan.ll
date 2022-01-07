; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_iface_config_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_iface_config_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_iface_param_info = type { i32, i32* }
%struct.beiscsi_hba = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@ISCSI_VLAN_ENABLE = common dso_local global i32 0, align 4
@BEISCSI_VLAN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.iscsi_iface_param_info*)* @beiscsi_iface_config_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_iface_config_vlan(%struct.Scsi_Host* %0, %struct.iscsi_iface_param_info* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.iscsi_iface_param_info*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.iscsi_iface_param_info* %1, %struct.iscsi_iface_param_info** %4, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %7)
  store %struct.beiscsi_hba* %8, %struct.beiscsi_hba** %5, align 8
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %34 [
    i32 129, label %14
    i32 128, label %27
  ]

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %15 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ISCSI_VLAN_ENABLE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %24 = load i32, i32* @BEISCSI_VLAN_DISABLE, align 4
  %25 = call i32 @beiscsi_if_set_vlan(%struct.beiscsi_hba* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %14
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %29 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @beiscsi_if_set_vlan(%struct.beiscsi_hba* %28, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %2, %27, %26
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_if_set_vlan(%struct.beiscsi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
