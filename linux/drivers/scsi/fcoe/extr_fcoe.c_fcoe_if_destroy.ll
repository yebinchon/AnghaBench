; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_if_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_if_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i64 }
%struct.fcoe_port = type { i32, i32, %struct.fcoe_interface* }
%struct.fcoe_interface = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Destroying interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fcoe_if_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_if_destroy(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fcoe_port*, align 8
  %4 = alloca %struct.fcoe_interface*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %7 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %6)
  store %struct.fcoe_port* %7, %struct.fcoe_port** %3, align 8
  %8 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %9 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %8, i32 0, i32 2
  %10 = load %struct.fcoe_interface*, %struct.fcoe_interface** %9, align 8
  store %struct.fcoe_interface* %10, %struct.fcoe_interface** %4, align 8
  %11 = load %struct.fcoe_interface*, %struct.fcoe_interface** %4, align 8
  %12 = getelementptr inbounds %struct.fcoe_interface, %struct.fcoe_interface* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @FCOE_NETDEV_DBG(%struct.net_device* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %17 = call i32 @fc_fabric_logoff(%struct.fc_lport* %16)
  %18 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %19 = call i32 @fc_lport_destroy(%struct.fc_lport* %18)
  %20 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %21 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %20, i32 0, i32 1
  %22 = call i32 @del_timer_sync(i32* %21)
  %23 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %24 = call i32 @fcoe_clean_pending_queue(%struct.fc_lport* %23)
  %25 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %26 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @is_zero_ether_addr(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %33 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_uc_del(%struct.net_device* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %1
  %37 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %38 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (...) @synchronize_net()
  br label %46

43:                                               ; preds = %36
  %44 = load %struct.fcoe_interface*, %struct.fcoe_interface** %4, align 8
  %45 = call i32 @fcoe_interface_remove(%struct.fcoe_interface* %44)
  br label %46

46:                                               ; preds = %43, %41
  %47 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %48 = call i32 @fcoe_percpu_clean(%struct.fc_lport* %47)
  %49 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %50 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @fc_remove_host(i32 %51)
  %53 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %54 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @scsi_remove_host(i32 %55)
  %57 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %58 = call i32 @fc_fcp_destroy(%struct.fc_lport* %57)
  %59 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %60 = call i32 @fc_exch_mgr_free(%struct.fc_lport* %59)
  %61 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %62 = call i32 @fc_lport_free_stats(%struct.fc_lport* %61)
  %63 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %64 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %46
  %68 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %69 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @scsi_host_put(i32 %70)
  br label %72

72:                                               ; preds = %67, %46
  ret void
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @FCOE_NETDEV_DBG(%struct.net_device*, i8*) #1

declare dso_local i32 @fc_fabric_logoff(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_destroy(%struct.fc_lport*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @fcoe_clean_pending_queue(%struct.fc_lport*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i32) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @fcoe_interface_remove(%struct.fcoe_interface*) #1

declare dso_local i32 @fcoe_percpu_clean(%struct.fc_lport*) #1

declare dso_local i32 @fc_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @fc_fcp_destroy(%struct.fc_lport*) #1

declare dso_local i32 @fc_exch_mgr_free(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_free_stats(%struct.fc_lport*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
