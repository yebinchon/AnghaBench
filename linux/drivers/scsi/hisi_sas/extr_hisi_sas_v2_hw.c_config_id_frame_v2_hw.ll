; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_config_id_frame_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_config_id_frame_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.sas_identify_frame = type { i32, i32, i32*, i32*, i32, i32, i64, i32 }

@SAS_END_DEVICE = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@SAS_PROTOCOL_NONE = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@TX_ID_DWORD0 = common dso_local global i32 0, align 4
@TX_ID_DWORD1 = common dso_local global i32 0, align 4
@TX_ID_DWORD2 = common dso_local global i32 0, align 4
@TX_ID_DWORD3 = common dso_local global i32 0, align 4
@TX_ID_DWORD4 = common dso_local global i32 0, align 4
@TX_ID_DWORD5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @config_id_frame_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_id_frame_v2_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_identify_frame, align 8
  %6 = alloca i32*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.sas_identify_frame* %5, i32 0, i32 48)
  %8 = load i32, i32* @SAS_END_DEVICE, align 4
  %9 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %5, i32 0, i32 7
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %5, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %5, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %13 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %5, i32 0, i32 5
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @SAS_PROTOCOL_NONE, align 4
  %15 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %5, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %5, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %20 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %23 = call i32 @memcpy(i32* %18, i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %5, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %28 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %31 = call i32 @memcpy(i32* %26, i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.sas_identify_frame* %5 to i32*
  store i32* %34, i32** %6, align 8
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TX_ID_DWORD0, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__swab32(i32 %40)
  %42 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %35, i32 %36, i32 %37, i32 %41)
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @TX_ID_DWORD1, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__swab32(i32 %48)
  %50 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %43, i32 %44, i32 %45, i32 %49)
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @TX_ID_DWORD2, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @__swab32(i32 %56)
  %58 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %51, i32 %52, i32 %53, i32 %57)
  %59 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @TX_ID_DWORD3, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__swab32(i32 %64)
  %66 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %59, i32 %60, i32 %61, i32 %65)
  %67 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @TX_ID_DWORD4, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__swab32(i32 %72)
  %74 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %67, i32 %68, i32 %69, i32 %73)
  %75 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @TX_ID_DWORD5, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @__swab32(i32 %80)
  %82 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %75, i32 %76, i32 %77, i32 %81)
  ret void
}

declare dso_local i32 @memset(%struct.sas_identify_frame*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @__swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
