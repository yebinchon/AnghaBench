; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_complete_r1_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_complete_r1_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i64, %struct.fusion_context* }
%struct.fusion_context = type { %struct.megasas_cmd_fusion** }
%struct.megasas_cmd_fusion = type { i64*, i32, %struct.TYPE_7__*, %struct.scsi_cmnd* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.RAID_CONTEXT_G35 }
%struct.RAID_CONTEXT_G35 = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@MFI_STAT_OK = common dso_local global i64 0, align 8
@READ_WRITE_LDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*, %struct.megasas_cmd_fusion*)* @megasas_complete_r1_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_complete_r1_command(%struct.megasas_instance* %0, %struct.megasas_cmd_fusion* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_cmd_fusion*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fusion_context*, align 8
  %11 = alloca %struct.megasas_cmd_fusion*, align 8
  %12 = alloca %struct.scsi_cmnd*, align 8
  %13 = alloca %struct.RAID_CONTEXT_G35*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.megasas_cmd_fusion* %1, %struct.megasas_cmd_fusion** %4, align 8
  store %struct.megasas_cmd_fusion* null, %struct.megasas_cmd_fusion** %11, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %12, align 8
  %14 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %15 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.RAID_CONTEXT_G35* %18, %struct.RAID_CONTEXT_G35** %13, align 8
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %20 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %19, i32 0, i32 2
  %21 = load %struct.fusion_context*, %struct.fusion_context** %20, align 8
  store %struct.fusion_context* %21, %struct.fusion_context** %10, align 8
  %22 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %13, align 8
  %23 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %28 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %27, i32 0, i32 0
  %29 = load %struct.megasas_cmd_fusion**, %struct.megasas_cmd_fusion*** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %29, i64 %32
  %34 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %33, align 8
  store %struct.megasas_cmd_fusion* %34, %struct.megasas_cmd_fusion** %11, align 8
  %35 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %36 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %35, i32 0, i32 3
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %36, align 8
  store %struct.scsi_cmnd* %37, %struct.scsi_cmnd** %12, align 8
  %38 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %13, align 8
  %39 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  %41 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %13, align 8
  %42 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %45 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %8, align 4
  %49 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %50 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  store i64* %51, i64** %5, align 8
  %52 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %53 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  %54 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %11, align 8
  %55 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %123

58:                                               ; preds = %2
  %59 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %11, align 8
  %60 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.RAID_CONTEXT_G35* %63, %struct.RAID_CONTEXT_G35** %13, align 8
  %64 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %13, align 8
  %65 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MFI_STAT_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %13, align 8
  %71 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  %73 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %13, align 8
  %74 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %7, align 8
  %76 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %11, align 8
  %77 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %8, align 4
  %81 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %11, align 8
  %82 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  store i64* %83, i64** %5, align 8
  br label %84

84:                                               ; preds = %69, %58
  %85 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %86 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %11, align 8
  %87 = call i32 @megasas_return_cmd_fusion(%struct.megasas_instance* %85, %struct.megasas_cmd_fusion* %86)
  %88 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  %94 = load i64*, i64** %5, align 8
  %95 = call i32 @map_cmd_status(%struct.fusion_context* %88, %struct.scsi_cmnd* %89, i64 %90, i64 %91, i32 %93, i64* %94)
  %96 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %97 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %84
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %102 = call i64 @megasas_cmd_type(%struct.scsi_cmnd* %101)
  %103 = load i64, i64* @READ_WRITE_LDIO, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %107 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %106, i32 0, i32 0
  %108 = call i32 @atomic_dec(i32* %107)
  br label %109

109:                                              ; preds = %105, %100, %84
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %114 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %115 = call i32 @megasas_return_cmd_fusion(%struct.megasas_instance* %113, %struct.megasas_cmd_fusion* %114)
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %117 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %116)
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %119 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %118, i32 0, i32 0
  %120 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %119, align 8
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %122 = call i32 %120(%struct.scsi_cmnd* %121)
  br label %123

123:                                              ; preds = %109, %2
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @megasas_return_cmd_fusion(%struct.megasas_instance*, %struct.megasas_cmd_fusion*) #1

declare dso_local i32 @map_cmd_status(%struct.fusion_context*, %struct.scsi_cmnd*, i64, i64, i32, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @megasas_cmd_type(%struct.scsi_cmnd*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
