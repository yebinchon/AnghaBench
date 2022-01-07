; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_vport_cfgparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_vport_cfgparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }

@lpfc_log_verbose = common dso_local global i32 0, align 4
@lpfc_lun_queue_depth = common dso_local global i32 0, align 4
@lpfc_tgt_queue_depth = common dso_local global i32 0, align 4
@lpfc_devloss_tmo = common dso_local global i32 0, align 4
@lpfc_nodev_tmo = common dso_local global i32 0, align 4
@lpfc_peer_port_login = common dso_local global i32 0, align 4
@lpfc_restrict_login = common dso_local global i32 0, align 4
@lpfc_fcp_class = common dso_local global i32 0, align 4
@lpfc_use_adisc = common dso_local global i32 0, align 4
@lpfc_first_burst_size = common dso_local global i32 0, align 4
@lpfc_max_scsicmpl_time = common dso_local global i32 0, align 4
@lpfc_discovery_threads = common dso_local global i32 0, align 4
@lpfc_max_luns = common dso_local global i32 0, align 4
@lpfc_scan_down = common dso_local global i32 0, align 4
@lpfc_enable_da_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_get_vport_cfgparam(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %3 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %4 = load i32, i32* @lpfc_log_verbose, align 4
  %5 = call i32 @lpfc_log_verbose_init(%struct.lpfc_vport* %3, i32 %4)
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %7 = load i32, i32* @lpfc_lun_queue_depth, align 4
  %8 = call i32 @lpfc_lun_queue_depth_init(%struct.lpfc_vport* %6, i32 %7)
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %10 = load i32, i32* @lpfc_tgt_queue_depth, align 4
  %11 = call i32 @lpfc_tgt_queue_depth_init(%struct.lpfc_vport* %9, i32 %10)
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %13 = load i32, i32* @lpfc_devloss_tmo, align 4
  %14 = call i32 @lpfc_devloss_tmo_init(%struct.lpfc_vport* %12, i32 %13)
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %16 = load i32, i32* @lpfc_nodev_tmo, align 4
  %17 = call i32 @lpfc_nodev_tmo_init(%struct.lpfc_vport* %15, i32 %16)
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %19 = load i32, i32* @lpfc_peer_port_login, align 4
  %20 = call i32 @lpfc_peer_port_login_init(%struct.lpfc_vport* %18, i32 %19)
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %22 = load i32, i32* @lpfc_restrict_login, align 4
  %23 = call i32 @lpfc_restrict_login_init(%struct.lpfc_vport* %21, i32 %22)
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %25 = load i32, i32* @lpfc_fcp_class, align 4
  %26 = call i32 @lpfc_fcp_class_init(%struct.lpfc_vport* %24, i32 %25)
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %28 = load i32, i32* @lpfc_use_adisc, align 4
  %29 = call i32 @lpfc_use_adisc_init(%struct.lpfc_vport* %27, i32 %28)
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %31 = load i32, i32* @lpfc_first_burst_size, align 4
  %32 = call i32 @lpfc_first_burst_size_init(%struct.lpfc_vport* %30, i32 %31)
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %34 = load i32, i32* @lpfc_max_scsicmpl_time, align 4
  %35 = call i32 @lpfc_max_scsicmpl_time_init(%struct.lpfc_vport* %33, i32 %34)
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %37 = load i32, i32* @lpfc_discovery_threads, align 4
  %38 = call i32 @lpfc_discovery_threads_init(%struct.lpfc_vport* %36, i32 %37)
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %40 = load i32, i32* @lpfc_max_luns, align 4
  %41 = call i32 @lpfc_max_luns_init(%struct.lpfc_vport* %39, i32 %40)
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %43 = load i32, i32* @lpfc_scan_down, align 4
  %44 = call i32 @lpfc_scan_down_init(%struct.lpfc_vport* %42, i32 %43)
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %46 = load i32, i32* @lpfc_enable_da_id, align 4
  %47 = call i32 @lpfc_enable_da_id_init(%struct.lpfc_vport* %45, i32 %46)
  ret void
}

declare dso_local i32 @lpfc_log_verbose_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_lun_queue_depth_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_tgt_queue_depth_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_devloss_tmo_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_nodev_tmo_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_peer_port_login_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_restrict_login_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_fcp_class_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_use_adisc_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_first_burst_size_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_max_scsicmpl_time_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_discovery_threads_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_max_luns_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_scan_down_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_enable_da_id_init(%struct.lpfc_vport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
