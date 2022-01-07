; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_rport_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_rport_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { %struct.fc_rport*, i32 }
%struct.fc_rport = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"scpdely\00", align 1
@ZFCP_PSEUDO_ERP_ACTION_RPORT_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_port*)* @zfcp_scsi_rport_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_scsi_rport_block(%struct.zfcp_port* %0) #0 {
  %2 = alloca %struct.zfcp_port*, align 8
  %3 = alloca %struct.fc_rport*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %2, align 8
  %4 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %4, i32 0, i32 0
  %6 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  store %struct.fc_rport* %6, %struct.fc_rport** %3, align 8
  %7 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %8 = icmp ne %struct.fc_rport* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %11 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %14 = load i32, i32* @ZFCP_PSEUDO_ERP_ACTION_RPORT_DEL, align 4
  %15 = load i32, i32* @ZFCP_PSEUDO_ERP_ACTION_RPORT_DEL, align 4
  %16 = call i32 @zfcp_dbf_rec_trig_lock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.zfcp_port* %13, i32* null, i32 %14, i32 %15)
  %17 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %18 = call i32 @fc_remote_port_delete(%struct.fc_rport* %17)
  %19 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %20 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %19, i32 0, i32 0
  store %struct.fc_rport* null, %struct.fc_rport** %20, align 8
  br label %21

21:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @zfcp_dbf_rec_trig_lock(i8*, i32, %struct.zfcp_port*, i32*, i32, i32) #1

declare dso_local i32 @fc_remote_port_delete(%struct.fc_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
