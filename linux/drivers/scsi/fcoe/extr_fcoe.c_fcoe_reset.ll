; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fcoe_port = type { %struct.fcoe_interface* }
%struct.fcoe_interface = type { i32 }
%struct.fcoe_ctlr = type { i32 }
%struct.fcoe_ctlr_device = type { i64 }

@FCOE_CTLR_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @fcoe_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_reset(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fcoe_port*, align 8
  %5 = alloca %struct.fcoe_interface*, align 8
  %6 = alloca %struct.fcoe_ctlr*, align 8
  %7 = alloca %struct.fcoe_ctlr_device*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %8)
  store %struct.fc_lport* %9, %struct.fc_lport** %3, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %11 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %10)
  store %struct.fcoe_port* %11, %struct.fcoe_port** %4, align 8
  %12 = load %struct.fcoe_port*, %struct.fcoe_port** %4, align 8
  %13 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %12, i32 0, i32 0
  %14 = load %struct.fcoe_interface*, %struct.fcoe_interface** %13, align 8
  store %struct.fcoe_interface* %14, %struct.fcoe_interface** %5, align 8
  %15 = load %struct.fcoe_interface*, %struct.fcoe_interface** %5, align 8
  %16 = call %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface* %15)
  store %struct.fcoe_ctlr* %16, %struct.fcoe_ctlr** %6, align 8
  %17 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %18 = call %struct.fcoe_ctlr_device* @fcoe_ctlr_to_ctlr_dev(%struct.fcoe_ctlr* %17)
  store %struct.fcoe_ctlr_device* %18, %struct.fcoe_ctlr_device** %7, align 8
  %19 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %20 = call i32 @fcoe_ctlr_link_down(%struct.fcoe_ctlr* %19)
  %21 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %22 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fcoe_clean_pending_queue(i32 %23)
  %25 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %7, align 8
  %26 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FCOE_CTLR_DISABLED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %32 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fcoe_link_ok(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %38 = call i32 @fcoe_ctlr_link_up(%struct.fcoe_ctlr* %37)
  br label %39

39:                                               ; preds = %36, %30, %1
  ret i32 0
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface*) #1

declare dso_local %struct.fcoe_ctlr_device* @fcoe_ctlr_to_ctlr_dev(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_ctlr_link_down(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_clean_pending_queue(i32) #1

declare dso_local i32 @fcoe_link_ok(i32) #1

declare dso_local i32 @fcoe_ctlr_link_up(%struct.fcoe_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
