; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_num_disc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_num_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_fdmi_attr_def = type { i8*, i8*, i32 }
%struct.lpfc_fdmi_attr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FOURBYTES = common dso_local global i32 0, align 4
@RPRT_DISC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_fdmi_attr_def*)* @lpfc_fdmi_port_attr_num_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fdmi_port_attr_num_disc(%struct.lpfc_vport* %0, %struct.lpfc_fdmi_attr_def* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_fdmi_attr_def*, align 8
  %5 = alloca %struct.lpfc_fdmi_attr_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_fdmi_attr_def* %1, %struct.lpfc_fdmi_attr_def** %4, align 8
  %7 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %8 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %7, i32 0, i32 2
  %9 = bitcast i32* %8 to %struct.lpfc_fdmi_attr_entry*
  store %struct.lpfc_fdmi_attr_entry* %9, %struct.lpfc_fdmi_attr_entry** %5, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %11 = call i32 @lpfc_find_map_node(%struct.lpfc_vport* %10)
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cpu_to_be32(i32 %16)
  %18 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @FOURBYTES, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i8* @cpu_to_be16(i32 %25)
  %27 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @RPRT_DISC_PORT, align 4
  %30 = call i8* @cpu_to_be16(i32 %29)
  %31 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @lpfc_find_map_node(%struct.lpfc_vport*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
