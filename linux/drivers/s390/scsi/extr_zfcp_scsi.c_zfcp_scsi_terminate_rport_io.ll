; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_terminate_rport_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_terminate_rport_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i32, i32 }
%struct.zfcp_port = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.zfcp_adapter = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sctrpi1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sctrpin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport*)* @zfcp_scsi_terminate_rport_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_scsi_terminate_rport_io(%struct.fc_rport* %0) #0 {
  %2 = alloca %struct.fc_rport*, align 8
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %2, align 8
  %6 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %7 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %4, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %13, %struct.zfcp_adapter** %5, align 8
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %15 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %16 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter* %14, i32 %17)
  store %struct.zfcp_port* %18, %struct.zfcp_port** %3, align 8
  %19 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %20 = icmp ne %struct.zfcp_port* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %23 = call i32 @zfcp_erp_port_forced_reopen(%struct.zfcp_port* %22, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %25 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %24, i32 0, i32 0
  %26 = call i32 @put_device(i32* %25)
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %29 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %30 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %33 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @zfcp_erp_port_forced_no_port_dbf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_adapter* %28, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %27, %21
  ret void
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_erp_port_forced_reopen(%struct.zfcp_port*, i32, i8*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @zfcp_erp_port_forced_no_port_dbf(i8*, %struct.zfcp_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
