; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.fc_rport = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@FC_FCP_DFLT_QUEUE_DEPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = call i32 @scsi_target(%struct.scsi_device* %5)
  %7 = call %struct.fc_rport* @starget_to_rport(i32 %6)
  store %struct.fc_rport* %7, %struct.fc_rport** %4, align 8
  %8 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %9 = icmp ne %struct.fc_rport* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %12 = call i64 @fc_remote_port_chkready(%struct.fc_rport* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %10
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = load i32, i32* @FC_FCP_DFLT_QUEUE_DEPTH, align 4
  %20 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %18, i32 %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.scsi_device*) #1

declare dso_local i64 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
