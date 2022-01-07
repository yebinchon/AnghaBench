; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_attach_port_names.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_attach_port_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rdp_port_name_desc = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lpfc_vport = type { i32, i32, i32 }
%struct.lpfc_nodelist = type { i32, i32 }

@RDP_PORT_NAMES_DESC_TAG = common dso_local global i32 0, align 4
@FC_FABRIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rdp_port_name_desc*, %struct.lpfc_vport*, %struct.lpfc_nodelist*)* @lpfc_rdp_res_attach_port_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rdp_res_attach_port_names(%struct.fc_rdp_port_name_desc* %0, %struct.lpfc_vport* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca %struct.fc_rdp_port_name_desc*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.fc_rdp_port_name_desc* %0, %struct.fc_rdp_port_name_desc** %4, align 8
  store %struct.lpfc_vport* %1, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %6, align 8
  %7 = load i32, i32* @RDP_PORT_NAMES_DESC_TAG, align 4
  %8 = call i8* @cpu_to_be32(i32 %7)
  %9 = load %struct.fc_rdp_port_name_desc*, %struct.fc_rdp_port_name_desc** %4, align 8
  %10 = getelementptr inbounds %struct.fc_rdp_port_name_desc, %struct.fc_rdp_port_name_desc* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FC_FABRIC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.fc_rdp_port_name_desc*, %struct.fc_rdp_port_name_desc** %4, align 8
  %19 = getelementptr inbounds %struct.fc_rdp_port_name_desc, %struct.fc_rdp_port_name_desc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 2
  %24 = call i32 @memcpy(i32 %21, i32* %23, i32 4)
  %25 = load %struct.fc_rdp_port_name_desc*, %struct.fc_rdp_port_name_desc** %4, align 8
  %26 = getelementptr inbounds %struct.fc_rdp_port_name_desc, %struct.fc_rdp_port_name_desc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %29, i32 0, i32 1
  %31 = call i32 @memcpy(i32 %28, i32* %30, i32 4)
  br label %47

32:                                               ; preds = %3
  %33 = load %struct.fc_rdp_port_name_desc*, %struct.fc_rdp_port_name_desc** %4, align 8
  %34 = getelementptr inbounds %struct.fc_rdp_port_name_desc, %struct.fc_rdp_port_name_desc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %38 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %37, i32 0, i32 1
  %39 = call i32 @memcpy(i32 %36, i32* %38, i32 4)
  %40 = load %struct.fc_rdp_port_name_desc*, %struct.fc_rdp_port_name_desc** %4, align 8
  %41 = getelementptr inbounds %struct.fc_rdp_port_name_desc, %struct.fc_rdp_port_name_desc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %44, i32 0, i32 0
  %46 = call i32 @memcpy(i32 %43, i32* %45, i32 4)
  br label %47

47:                                               ; preds = %32, %17
  %48 = call i8* @cpu_to_be32(i32 8)
  %49 = load %struct.fc_rdp_port_name_desc*, %struct.fc_rdp_port_name_desc** %4, align 8
  %50 = getelementptr inbounds %struct.fc_rdp_port_name_desc, %struct.fc_rdp_port_name_desc* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  ret i32 24
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
