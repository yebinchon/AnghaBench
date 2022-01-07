; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_opd_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_opd_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rdp_opd_sfp_desc = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.lpfc_vport = type { i32 }

@RDP_OPD_DESC_TAG = common dso_local global i32 0, align 4
@SSF_VENDOR_NAME = common dso_local global i64 0, align 8
@SSF_VENDOR_PN = common dso_local global i64 0, align 8
@SSF_VENDOR_SN = common dso_local global i64 0, align 8
@SSF_VENDOR_REV = common dso_local global i64 0, align 8
@SSF_DATE_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rdp_opd_sfp_desc*, i32*, %struct.lpfc_vport*)* @lpfc_rdp_res_opd_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rdp_res_opd_desc(%struct.fc_rdp_opd_sfp_desc* %0, i32* %1, %struct.lpfc_vport* %2) #0 {
  %4 = alloca %struct.fc_rdp_opd_sfp_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lpfc_vport*, align 8
  store %struct.fc_rdp_opd_sfp_desc* %0, %struct.fc_rdp_opd_sfp_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.lpfc_vport* %2, %struct.lpfc_vport** %6, align 8
  %7 = load i32, i32* @RDP_OPD_DESC_TAG, align 4
  %8 = call i8* @cpu_to_be32(i32 %7)
  %9 = load %struct.fc_rdp_opd_sfp_desc*, %struct.fc_rdp_opd_sfp_desc** %4, align 8
  %10 = getelementptr inbounds %struct.fc_rdp_opd_sfp_desc, %struct.fc_rdp_opd_sfp_desc* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.fc_rdp_opd_sfp_desc*, %struct.fc_rdp_opd_sfp_desc** %4, align 8
  %12 = getelementptr inbounds %struct.fc_rdp_opd_sfp_desc, %struct.fc_rdp_opd_sfp_desc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* @SSF_VENDOR_NAME, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @memcpy(i32 %14, i32* %17, i32 16)
  %19 = load %struct.fc_rdp_opd_sfp_desc*, %struct.fc_rdp_opd_sfp_desc** %4, align 8
  %20 = getelementptr inbounds %struct.fc_rdp_opd_sfp_desc, %struct.fc_rdp_opd_sfp_desc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* @SSF_VENDOR_PN, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @memcpy(i32 %22, i32* %25, i32 16)
  %27 = load %struct.fc_rdp_opd_sfp_desc*, %struct.fc_rdp_opd_sfp_desc** %4, align 8
  %28 = getelementptr inbounds %struct.fc_rdp_opd_sfp_desc, %struct.fc_rdp_opd_sfp_desc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* @SSF_VENDOR_SN, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @memcpy(i32 %30, i32* %33, i32 16)
  %35 = load %struct.fc_rdp_opd_sfp_desc*, %struct.fc_rdp_opd_sfp_desc** %4, align 8
  %36 = getelementptr inbounds %struct.fc_rdp_opd_sfp_desc, %struct.fc_rdp_opd_sfp_desc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* @SSF_VENDOR_REV, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @memcpy(i32 %38, i32* %41, i32 4)
  %43 = load %struct.fc_rdp_opd_sfp_desc*, %struct.fc_rdp_opd_sfp_desc** %4, align 8
  %44 = getelementptr inbounds %struct.fc_rdp_opd_sfp_desc, %struct.fc_rdp_opd_sfp_desc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* @SSF_DATE_CODE, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @memcpy(i32 %46, i32* %49, i32 8)
  %51 = call i8* @cpu_to_be32(i32 20)
  %52 = load %struct.fc_rdp_opd_sfp_desc*, %struct.fc_rdp_opd_sfp_desc** %4, align 8
  %53 = getelementptr inbounds %struct.fc_rdp_opd_sfp_desc, %struct.fc_rdp_opd_sfp_desc* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  ret i32 40
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
