; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_lport_register_npiv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_tcm_qla2xxx.c_tcm_qla2xxx_lport_register_npiv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.Scsi_Host*, %struct.TYPE_4__ }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_4__ = type { i8* }
%struct.fc_vport = type { i64 }
%struct.tcm_qla2xxx_lport = type { %struct.scsi_qla_host*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fc_vport_identifiers = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [46 x i8] c"qla2xxx base_vha not enabled for target mode\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"qla2xxx base_lport or tpg_1 not available\0A\00", align 1
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_PORTTYPE_NPIV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"fc_vport_create failed for qla2xxx_npiv\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i8*, i8*, i8*)* @tcm_qla2xxx_lport_register_npiv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_qla2xxx_lport_register_npiv_cb(%struct.scsi_qla_host* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fc_vport*, align 8
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca %struct.scsi_qla_host*, align 8
  %13 = alloca %struct.tcm_qla2xxx_lport*, align 8
  %14 = alloca %struct.tcm_qla2xxx_lport*, align 8
  %15 = alloca %struct.fc_vport_identifiers, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 0
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.tcm_qla2xxx_lport*
  store %struct.tcm_qla2xxx_lport* %20, %struct.tcm_qla2xxx_lport** %13, align 8
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.tcm_qla2xxx_lport*
  store %struct.tcm_qla2xxx_lport* %25, %struct.tcm_qla2xxx_lport** %14, align 8
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %27 = call i64 @qla_ini_mode_enabled(%struct.scsi_qla_host* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %87

33:                                               ; preds = %4
  %34 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %14, align 8
  %35 = icmp ne %struct.tcm_qla2xxx_lport* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %14, align 8
  %38 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %14, align 8
  %43 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @atomic_read(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41, %36, %33
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %87

52:                                               ; preds = %41
  %53 = call i32 @memset(%struct.fc_vport_identifiers* %15, i32 0, i32 32)
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %15, i32 0, i32 4
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %15, i32 0, i32 3
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* @FC_PORT_ROLE_FCP_INITIATOR, align 4
  %59 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %15, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* @FC_PORTTYPE_NPIV, align 4
  %61 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %15, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.fc_vport_identifiers, %struct.fc_vport_identifiers* %15, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %64 = call %struct.fc_vport* @fc_vport_create(%struct.Scsi_Host* %63, i32 0, %struct.fc_vport_identifiers* %15)
  store %struct.fc_vport* %64, %struct.fc_vport** %10, align 8
  %65 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %66 = icmp ne %struct.fc_vport* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %52
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %87

71:                                               ; preds = %52
  %72 = load %struct.fc_vport*, %struct.fc_vport** %10, align 8
  %73 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.scsi_qla_host*
  store %struct.scsi_qla_host* %75, %struct.scsi_qla_host** %12, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %78 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %81 = load %struct.tcm_qla2xxx_lport*, %struct.tcm_qla2xxx_lport** %13, align 8
  %82 = getelementptr inbounds %struct.tcm_qla2xxx_lport, %struct.tcm_qla2xxx_lport* %81, i32 0, i32 0
  store %struct.scsi_qla_host* %80, %struct.scsi_qla_host** %82, align 8
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %12, align 8
  %84 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %83, i32 0, i32 0
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %84, align 8
  %86 = call i32 @scsi_host_get(%struct.Scsi_Host* %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %71, %67, %48, %29
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @qla_ini_mode_enabled(%struct.scsi_qla_host*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @memset(%struct.fc_vport_identifiers*, i32, i32) #1

declare dso_local %struct.fc_vport* @fc_vport_create(%struct.Scsi_Host*, i32, %struct.fc_vport_identifiers*) #1

declare dso_local i32 @scsi_host_get(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
