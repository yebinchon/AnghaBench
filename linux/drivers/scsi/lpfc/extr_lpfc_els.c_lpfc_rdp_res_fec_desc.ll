; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_fec_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_fec_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fec_rdp_desc = type { i8*, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i32 }

@lpfc_read_link_stat_gec2 = common dso_local global i32 0, align 4
@RDP_FEC_DESC_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_fec_rdp_desc*, %struct.TYPE_6__*)* @lpfc_rdp_res_fec_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rdp_res_fec_desc(%struct.fc_fec_rdp_desc* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_fec_rdp_desc*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.fc_fec_rdp_desc* %0, %struct.fc_fec_rdp_desc** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* @lpfc_read_link_stat_gec2, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = call i64 @bf_get(i32 %6, %struct.TYPE_6__* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* @RDP_FEC_DESC_TAG, align 4
  %13 = call i8* @cpu_to_be32(i32 %12)
  %14 = load %struct.fc_fec_rdp_desc*, %struct.fc_fec_rdp_desc** %4, align 8
  %15 = getelementptr inbounds %struct.fc_fec_rdp_desc, %struct.fc_fec_rdp_desc* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load %struct.fc_fec_rdp_desc*, %struct.fc_fec_rdp_desc** %4, align 8
  %21 = getelementptr inbounds %struct.fc_fec_rdp_desc, %struct.fc_fec_rdp_desc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.fc_fec_rdp_desc*, %struct.fc_fec_rdp_desc** %4, align 8
  %28 = getelementptr inbounds %struct.fc_fec_rdp_desc, %struct.fc_fec_rdp_desc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = call i8* @cpu_to_be32(i32 16)
  %31 = load %struct.fc_fec_rdp_desc*, %struct.fc_fec_rdp_desc** %4, align 8
  %32 = getelementptr inbounds %struct.fc_fec_rdp_desc, %struct.fc_fec_rdp_desc* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  store i32 32, i32* %3, align 4
  br label %33

33:                                               ; preds = %11, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @bf_get(i32, %struct.TYPE_6__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
