; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_link_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_link_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rdp_link_service_desc = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }

@RDP_LINK_SERVICE_DESC_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rdp_link_service_desc*, i32)* @lpfc_rdp_res_link_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rdp_res_link_service(%struct.fc_rdp_link_service_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_rdp_link_service_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.fc_rdp_link_service_desc* %0, %struct.fc_rdp_link_service_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @RDP_LINK_SERVICE_DESC_TAG, align 4
  %6 = call i8* @cpu_to_be32(i32 %5)
  %7 = load %struct.fc_rdp_link_service_desc*, %struct.fc_rdp_link_service_desc** %3, align 8
  %8 = getelementptr inbounds %struct.fc_rdp_link_service_desc, %struct.fc_rdp_link_service_desc* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.fc_rdp_link_service_desc*, %struct.fc_rdp_link_service_desc** %3, align 8
  %11 = getelementptr inbounds %struct.fc_rdp_link_service_desc, %struct.fc_rdp_link_service_desc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = call i8* @cpu_to_be32(i32 4)
  %14 = load %struct.fc_rdp_link_service_desc*, %struct.fc_rdp_link_service_desc** %3, align 8
  %15 = getelementptr inbounds %struct.fc_rdp_link_service_desc, %struct.fc_rdp_link_service_desc* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  ret i32 24
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
