; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_rport_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_rport_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, %struct.fc_rport*, i32, i32, i64, %struct.TYPE_4__*, i32, i32 }
%struct.fc_rport = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fc_rport_identifiers = type { i32, i32, i64, i32 }

@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"scpaddy\00", align 1
@ZFCP_PSEUDO_ERP_ACTION_RPORT_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Registering port 0x%016Lx failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_port*)* @zfcp_scsi_rport_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_scsi_rport_register(%struct.zfcp_port* %0) #0 {
  %2 = alloca %struct.zfcp_port*, align 8
  %3 = alloca %struct.fc_rport_identifiers, align 8
  %4 = alloca %struct.fc_rport*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %2, align 8
  %5 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %5, i32 0, i32 1
  %7 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %8 = icmp ne %struct.fc_rport* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %72

10:                                               ; preds = %1
  %11 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %12 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %3, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %16 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %3, i32 0, i32 2
  store i64 %17, i64* %18, align 8
  %19 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %20 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %24 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %26 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %29 = load i32, i32* @ZFCP_PSEUDO_ERP_ACTION_RPORT_ADD, align 4
  %30 = load i32, i32* @ZFCP_PSEUDO_ERP_ACTION_RPORT_ADD, align 4
  %31 = call i32 @zfcp_dbf_rec_trig_lock(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %27, %struct.zfcp_port* %28, i32* null, i32 %29, i32 %30)
  %32 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %33 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %32, i32 0, i32 5
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.fc_rport* @fc_remote_port_add(i32 %36, i32 0, %struct.fc_rport_identifiers* %3)
  store %struct.fc_rport* %37, %struct.fc_rport** %4, align 8
  %38 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %39 = icmp ne %struct.fc_rport* %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %10
  %41 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %42 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %48 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %72

51:                                               ; preds = %10
  %52 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %53 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %56 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %58 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %61 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %63 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %64 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %63, i32 0, i32 1
  store %struct.fc_rport* %62, %struct.fc_rport** %64, align 8
  %65 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %66 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %69 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %71 = call i32 @zfcp_unit_queue_scsi_scan(%struct.zfcp_port* %70)
  br label %72

72:                                               ; preds = %51, %40, %9
  ret void
}

declare dso_local i32 @zfcp_dbf_rec_trig_lock(i8*, %struct.TYPE_4__*, %struct.zfcp_port*, i32*, i32, i32) #1

declare dso_local %struct.fc_rport* @fc_remote_port_add(i32, i32, %struct.fc_rport_identifiers*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @zfcp_unit_queue_scsi_scan(%struct.zfcp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
