; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_port_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_port_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64 }
%struct.lpfc_fdmi_attr_def = type { i8*, i8*, i32 }
%struct.lpfc_fdmi_attr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@LPFC_FDMI_PORTTYPE_NLPORT = common dso_local global i32 0, align 4
@LPFC_FDMI_PORTTYPE_NPORT = common dso_local global i32 0, align 4
@FOURBYTES = common dso_local global i32 0, align 4
@RPRT_PORT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_fdmi_attr_def*)* @lpfc_fdmi_port_attr_port_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fdmi_port_attr_port_type(%struct.lpfc_vport* %0, %struct.lpfc_fdmi_attr_def* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_fdmi_attr_def*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_fdmi_attr_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_fdmi_attr_def* %1, %struct.lpfc_fdmi_attr_def** %4, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 0
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_hba* %10, %struct.lpfc_hba** %5, align 8
  %11 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %11, i32 0, i32 2
  %13 = bitcast i32* %12 to %struct.lpfc_fdmi_attr_entry*
  store %struct.lpfc_fdmi_attr_entry* %13, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @LPFC_FDMI_PORTTYPE_NLPORT, align 4
  %21 = call i8* @cpu_to_be32(i32 %20)
  %22 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %23 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @LPFC_FDMI_PORTTYPE_NPORT, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %29 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32, i32* @FOURBYTES, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @cpu_to_be16(i32 %36)
  %38 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @RPRT_PORT_TYPE, align 4
  %41 = call i8* @cpu_to_be16(i32 %40)
  %42 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
