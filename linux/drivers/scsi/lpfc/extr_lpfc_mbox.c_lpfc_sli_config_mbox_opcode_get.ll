; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli_config_mbox_opcode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli_config_mbox_opcode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.lpfc_mbx_sli4_config }
%struct.lpfc_mbx_sli4_config = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %union.lpfc_sli4_cfg_shdr, i32 }
%union.lpfc_sli4_cfg_shdr = type { i32 }
%struct.TYPE_9__ = type { i64 }

@MBX_SLI4_CONFIG = common dso_local global i64 0, align 8
@LPFC_MBOX_OPCODE_NA = common dso_local global i64 0, align 8
@lpfc_mbox_hdr_emb = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_opcode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lpfc_sli_config_mbox_opcode_get(%struct.lpfc_hba* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.lpfc_mbx_sli4_config*, align 8
  %7 = alloca %union.lpfc_sli4_cfg_shdr*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MBX_SLI4_CONFIG, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @LPFC_MBOX_OPCODE_NA, align 8
  store i64 %16, i64* %3, align 8
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store %struct.lpfc_mbx_sli4_config* %22, %struct.lpfc_mbx_sli4_config** %6, align 8
  %23 = load i32, i32* @lpfc_mbox_hdr_emb, align 4
  %24 = load %struct.lpfc_mbx_sli4_config*, %struct.lpfc_mbx_sli4_config** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_mbx_sli4_config, %struct.lpfc_mbx_sli4_config* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = call i64 @bf_get(i32 %23, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %17
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.lpfc_mbx_sli4_config, %struct.lpfc_mbx_sli4_config* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store %union.lpfc_sli4_cfg_shdr* %36, %union.lpfc_sli4_cfg_shdr** %7, align 8
  %37 = load i32, i32* @lpfc_mbox_hdr_opcode, align 4
  %38 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %7, align 8
  %39 = bitcast %union.lpfc_sli4_cfg_shdr* %38 to i32*
  %40 = call i64 @bf_get(i32 %37, i32* %39)
  store i64 %40, i64* %3, align 8
  br label %65

41:                                               ; preds = %17
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i64, i64* @LPFC_MBOX_OPCODE_NA, align 8
  store i64 %51, i64* %3, align 8
  br label %65

52:                                               ; preds = %41
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %union.lpfc_sli4_cfg_shdr*
  store %union.lpfc_sli4_cfg_shdr* %60, %union.lpfc_sli4_cfg_shdr** %7, align 8
  %61 = load i32, i32* @lpfc_mbox_hdr_opcode, align 4
  %62 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %7, align 8
  %63 = bitcast %union.lpfc_sli4_cfg_shdr* %62 to i32*
  %64 = call i64 @bf_get(i32 %61, i32* %63)
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %52, %50, %29, %15
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
