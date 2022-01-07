; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fnic = type { i32, i32, i32, %struct.fc_lport*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.fc_lport = type { i32 }
%struct.TYPE_2__ = type { i32 }

@VNIC_DEV_INTR_MODE_MSI = common dso_local global i64 0, align 8
@fnic_event_queue = common dso_local global i32 0, align 4
@VFCF_FIP_CAPABLE = common dso_local global i32 0, align 4
@fnic_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @fnic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.fnic* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.fnic* %7, %struct.fnic** %3, align 8
  %8 = load %struct.fnic*, %struct.fnic** %3, align 8
  %9 = getelementptr inbounds %struct.fnic, %struct.fnic* %8, i32 0, i32 3
  %10 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  store %struct.fc_lport* %10, %struct.fc_lport** %4, align 8
  %11 = load %struct.fnic*, %struct.fnic** %3, align 8
  %12 = getelementptr inbounds %struct.fnic, %struct.fnic* %11, i32 0, i32 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.fnic*, %struct.fnic** %3, align 8
  %16 = getelementptr inbounds %struct.fnic, %struct.fnic* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.fnic*, %struct.fnic** %3, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.fnic*, %struct.fnic** %3, align 8
  %22 = getelementptr inbounds %struct.fnic, %struct.fnic* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @vnic_dev_get_intr_mode(i32 %23)
  %25 = load i64, i64* @VNIC_DEV_INTR_MODE_MSI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.fnic*, %struct.fnic** %3, align 8
  %29 = getelementptr inbounds %struct.fnic, %struct.fnic* %28, i32 0, i32 12
  %30 = call i32 @del_timer_sync(i32* %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load i32, i32* @fnic_event_queue, align 4
  %33 = call i32 @flush_workqueue(i32 %32)
  %34 = load %struct.fnic*, %struct.fnic** %3, align 8
  %35 = getelementptr inbounds %struct.fnic, %struct.fnic* %34, i32 0, i32 6
  %36 = call i32 @skb_queue_purge(i32* %35)
  %37 = load %struct.fnic*, %struct.fnic** %3, align 8
  %38 = getelementptr inbounds %struct.fnic, %struct.fnic* %37, i32 0, i32 5
  %39 = call i32 @skb_queue_purge(i32* %38)
  %40 = load %struct.fnic*, %struct.fnic** %3, align 8
  %41 = getelementptr inbounds %struct.fnic, %struct.fnic* %40, i32 0, i32 11
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VFCF_FIP_CAPABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %31
  %48 = load %struct.fnic*, %struct.fnic** %3, align 8
  %49 = getelementptr inbounds %struct.fnic, %struct.fnic* %48, i32 0, i32 10
  %50 = call i32 @del_timer_sync(i32* %49)
  %51 = load %struct.fnic*, %struct.fnic** %3, align 8
  %52 = getelementptr inbounds %struct.fnic, %struct.fnic* %51, i32 0, i32 9
  %53 = call i32 @skb_queue_purge(i32* %52)
  %54 = load %struct.fnic*, %struct.fnic** %3, align 8
  %55 = call i32 @fnic_fcoe_reset_vlans(%struct.fnic* %54)
  %56 = load %struct.fnic*, %struct.fnic** %3, align 8
  %57 = call i32 @fnic_fcoe_evlist_free(%struct.fnic* %56)
  br label %58

58:                                               ; preds = %47, %31
  %59 = load %struct.fnic*, %struct.fnic** %3, align 8
  %60 = getelementptr inbounds %struct.fnic, %struct.fnic* %59, i32 0, i32 3
  %61 = load %struct.fc_lport*, %struct.fc_lport** %60, align 8
  %62 = call i32 @fc_fabric_logoff(%struct.fc_lport* %61)
  %63 = load %struct.fnic*, %struct.fnic** %3, align 8
  %64 = getelementptr inbounds %struct.fnic, %struct.fnic* %63, i32 0, i32 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.fnic*, %struct.fnic** %3, align 8
  %68 = getelementptr inbounds %struct.fnic, %struct.fnic* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.fnic*, %struct.fnic** %3, align 8
  %70 = getelementptr inbounds %struct.fnic, %struct.fnic* %69, i32 0, i32 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.fnic*, %struct.fnic** %3, align 8
  %74 = getelementptr inbounds %struct.fnic, %struct.fnic* %73, i32 0, i32 7
  %75 = call i32 @fcoe_ctlr_destroy(i32* %74)
  %76 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %77 = call i32 @fc_lport_destroy(%struct.fc_lport* %76)
  %78 = load %struct.fnic*, %struct.fnic** %3, align 8
  %79 = call i32 @fnic_stats_debugfs_remove(%struct.fnic* %78)
  %80 = load %struct.fnic*, %struct.fnic** %3, align 8
  %81 = call i32 @fnic_cleanup(%struct.fnic* %80)
  %82 = load %struct.fnic*, %struct.fnic** %3, align 8
  %83 = getelementptr inbounds %struct.fnic, %struct.fnic* %82, i32 0, i32 6
  %84 = call i32 @skb_queue_empty(i32* %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.fnic*, %struct.fnic** %3, align 8
  %90 = getelementptr inbounds %struct.fnic, %struct.fnic* %89, i32 0, i32 5
  %91 = call i32 @skb_queue_empty(i32* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @spin_lock_irqsave(i32* @fnic_list_lock, i64 %96)
  %98 = load %struct.fnic*, %struct.fnic** %3, align 8
  %99 = getelementptr inbounds %struct.fnic, %struct.fnic* %98, i32 0, i32 4
  %100 = call i32 @list_del(i32* %99)
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* @fnic_list_lock, i64 %101)
  %103 = load %struct.fnic*, %struct.fnic** %3, align 8
  %104 = getelementptr inbounds %struct.fnic, %struct.fnic* %103, i32 0, i32 3
  %105 = load %struct.fc_lport*, %struct.fc_lport** %104, align 8
  %106 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @fc_remove_host(i32 %107)
  %109 = load %struct.fnic*, %struct.fnic** %3, align 8
  %110 = getelementptr inbounds %struct.fnic, %struct.fnic* %109, i32 0, i32 3
  %111 = load %struct.fc_lport*, %struct.fc_lport** %110, align 8
  %112 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @scsi_remove_host(i32 %113)
  %115 = load %struct.fnic*, %struct.fnic** %3, align 8
  %116 = getelementptr inbounds %struct.fnic, %struct.fnic* %115, i32 0, i32 3
  %117 = load %struct.fc_lport*, %struct.fc_lport** %116, align 8
  %118 = call i32 @fc_exch_mgr_free(%struct.fc_lport* %117)
  %119 = load %struct.fnic*, %struct.fnic** %3, align 8
  %120 = getelementptr inbounds %struct.fnic, %struct.fnic* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @vnic_dev_notify_unset(i32 %121)
  %123 = load %struct.fnic*, %struct.fnic** %3, align 8
  %124 = call i32 @fnic_free_intr(%struct.fnic* %123)
  %125 = load %struct.fnic*, %struct.fnic** %3, align 8
  %126 = call i32 @fnic_free_vnic_resources(%struct.fnic* %125)
  %127 = load %struct.fnic*, %struct.fnic** %3, align 8
  %128 = call i32 @fnic_clear_intr_mode(%struct.fnic* %127)
  %129 = load %struct.fnic*, %struct.fnic** %3, align 8
  %130 = getelementptr inbounds %struct.fnic, %struct.fnic* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @vnic_dev_close(i32 %131)
  %133 = load %struct.fnic*, %struct.fnic** %3, align 8
  %134 = getelementptr inbounds %struct.fnic, %struct.fnic* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @vnic_dev_unregister(i32 %135)
  %137 = load %struct.fnic*, %struct.fnic** %3, align 8
  %138 = call i32 @fnic_iounmap(%struct.fnic* %137)
  %139 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %140 = call i32 @pci_release_regions(%struct.pci_dev* %139)
  %141 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %142 = call i32 @pci_disable_device(%struct.pci_dev* %141)
  %143 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %144 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @scsi_host_put(i32 %145)
  ret void
}

declare dso_local %struct.fnic* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @fnic_fcoe_reset_vlans(%struct.fnic*) #1

declare dso_local i32 @fnic_fcoe_evlist_free(%struct.fnic*) #1

declare dso_local i32 @fc_fabric_logoff(%struct.fc_lport*) #1

declare dso_local i32 @fcoe_ctlr_destroy(i32*) #1

declare dso_local i32 @fc_lport_destroy(%struct.fc_lport*) #1

declare dso_local i32 @fnic_stats_debugfs_remove(%struct.fnic*) #1

declare dso_local i32 @fnic_cleanup(%struct.fnic*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @fc_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @fc_exch_mgr_free(%struct.fc_lport*) #1

declare dso_local i32 @vnic_dev_notify_unset(i32) #1

declare dso_local i32 @fnic_free_intr(%struct.fnic*) #1

declare dso_local i32 @fnic_free_vnic_resources(%struct.fnic*) #1

declare dso_local i32 @fnic_clear_intr_mode(%struct.fnic*) #1

declare dso_local i32 @vnic_dev_close(i32) #1

declare dso_local i32 @vnic_dev_unregister(i32) #1

declare dso_local i32 @fnic_iounmap(%struct.fnic*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
