; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_unit.c_zfcp_unit_scsi_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_unit.c_zfcp_unit_scsi_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_unit = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fc_rport* }
%struct.fc_rport = type { i64, i32, i32 }
%struct.scsi_lun = type { i32 }

@FC_PORTSTATE_ONLINE = common dso_local global i64 0, align 8
@SCSI_SCAN_MANUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_unit_scsi_scan(%struct.zfcp_unit* %0) #0 {
  %2 = alloca %struct.zfcp_unit*, align 8
  %3 = alloca %struct.fc_rport*, align 8
  %4 = alloca i32, align 4
  store %struct.zfcp_unit* %0, %struct.zfcp_unit** %2, align 8
  %5 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  store %struct.fc_rport* %9, %struct.fc_rport** %3, align 8
  %10 = load %struct.zfcp_unit*, %struct.zfcp_unit** %2, align 8
  %11 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.scsi_lun*
  %13 = call i32 @scsilun_to_int(%struct.scsi_lun* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %15 = icmp ne %struct.fc_rport* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %18 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FC_PORTSTATE_ONLINE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %24 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %23, i32 0, i32 2
  %25 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %26 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SCSI_SCAN_MANUAL, align 4
  %30 = call i32 @scsi_scan_target(i32* %24, i32 0, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %16, %1
  ret void
}

declare dso_local i32 @scsilun_to_int(%struct.scsi_lun*) #1

declare dso_local i32 @scsi_scan_target(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
