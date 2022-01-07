; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unregister_remote_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unregister_remote_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32, i32, i32, %struct.lpfc_vport*, %struct.fc_rport* }
%struct.lpfc_vport = type { i64 }
%struct.fc_rport = type { i32 }

@LPFC_ENABLE_NVME = common dso_local global i64 0, align 8
@LPFC_DISC_TRC_RPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rport delete:    did:x%x flg:x%x type x%x\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"3184 rport unregister x%06x, rport x%px\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_nodelist*)* @lpfc_unregister_remote_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_unregister_remote_port(%struct.lpfc_nodelist* %0) #0 {
  %2 = alloca %struct.lpfc_nodelist*, align 8
  %3 = alloca %struct.fc_rport*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_nodelist* %0, %struct.lpfc_nodelist** %2, align 8
  %5 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %5, i32 0, i32 4
  %7 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  store %struct.fc_rport* %7, %struct.fc_rport** %3, align 8
  %8 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %8, i32 0, i32 3
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %4, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LPFC_ENABLE_NVME, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %19 = load i32, i32* @LPFC_DISC_TRC_RPORT, align 4
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %18, i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %31 = load i32, i32* @KERN_INFO, align 4
  %32 = load i32, i32* @LOG_NODE, align 4
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %37 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %35, %struct.fc_rport* %36)
  %38 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %39 = call i32 @fc_remote_port_delete(%struct.fc_rport* %38)
  br label %40

40:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, %struct.fc_rport*) #1

declare dso_local i32 @fc_remote_port_delete(%struct.fc_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
