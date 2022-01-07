; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_dynamic_target_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_dynamic_target_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64, i32, %struct.MR_PRIV_DEVICE*, %struct.TYPE_6__* }
%struct.MR_PRIV_DEVICE = type { i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.megasas_instance = type { i32, i64, i32, i8*, %struct.TYPE_10__*, i32, i64, %struct.fusion_context* }
%struct.TYPE_10__ = type { i64 }
%struct.fusion_context = type { i64*, %struct.MR_DRV_RAID_MAP_ALL** }
%struct.MR_DRV_RAID_MAP_ALL = type { i32 }
%struct.MR_PD_CFG_SEQ_NUM_SYNC = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.MR_LD_RAID = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@MEGASAS_MAX_DEV_PER_CHANNEL = common dso_local global i32 0, align 4
@MR_PROT_INFO_TYPE_CONTROLLER = common dso_local global i64 0, align 8
@u8 = common dso_local global i32 0, align 4
@MEGASAS_DEFAULT_TM_TIMEOUT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_set_dynamic_target_properties(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.megasas_instance*, align 8
  %9 = alloca %struct.fusion_context*, align 8
  %10 = alloca %struct.MR_PRIV_DEVICE*, align 8
  %11 = alloca %struct.MR_PD_CFG_SEQ_NUM_SYNC*, align 8
  %12 = alloca %struct.MR_LD_RAID*, align 8
  %13 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.megasas_instance* @megasas_lookup_instance(i32 %18)
  store %struct.megasas_instance* %19, %struct.megasas_instance** %8, align 8
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 7
  %22 = load %struct.fusion_context*, %struct.fusion_context** %21, align 8
  store %struct.fusion_context* %22, %struct.fusion_context** %9, align 8
  %23 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 3
  %25 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %24, align 8
  store %struct.MR_PRIV_DEVICE* %25, %struct.MR_PRIV_DEVICE** %10, align 8
  %26 = load %struct.fusion_context*, %struct.fusion_context** %9, align 8
  %27 = icmp ne %struct.fusion_context* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %10, align 8
  %30 = icmp ne %struct.MR_PRIV_DEVICE* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %2
  br label %164

32:                                               ; preds = %28
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = call i64 @MEGASAS_IS_LOGICAL(%struct.scsi_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %32
  %37 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %39, 2
  %41 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  store i64 %47, i64* %7, align 8
  %48 = load %struct.fusion_context*, %struct.fusion_context** %9, align 8
  %49 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %48, i32 0, i32 1
  %50 = load %struct.MR_DRV_RAID_MAP_ALL**, %struct.MR_DRV_RAID_MAP_ALL*** %49, align 8
  %51 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %52 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %50, i64 %55
  %57 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %56, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %57, %struct.MR_DRV_RAID_MAP_ALL** %13, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %13, align 8
  %60 = call i64 @MR_TargetIdToLdGet(i64 %58, %struct.MR_DRV_RAID_MAP_ALL* %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %63 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %36
  br label %164

67:                                               ; preds = %36
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %13, align 8
  %70 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %68, %struct.MR_DRV_RAID_MAP_ALL* %69)
  store %struct.MR_LD_RAID* %70, %struct.MR_LD_RAID** %12, align 8
  %71 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %12, align 8
  %72 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MR_PROT_INFO_TYPE_CONTROLLER, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %79 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @blk_queue_update_dma_alignment(i32 %80, i32 7)
  br label %82

82:                                               ; preds = %77, %67
  %83 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %12, align 8
  %84 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %10, align 8
  %88 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %129

89:                                               ; preds = %32
  %90 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %91 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %128

94:                                               ; preds = %89
  %95 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %96 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %102 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  store i64 %104, i64* %5, align 8
  %105 = load %struct.fusion_context*, %struct.fusion_context** %9, align 8
  %106 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %109 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %107, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = bitcast i8* %116 to %struct.MR_PD_CFG_SEQ_NUM_SYNC*
  store %struct.MR_PD_CFG_SEQ_NUM_SYNC* %117, %struct.MR_PD_CFG_SEQ_NUM_SYNC** %11, align 8
  %118 = load %struct.MR_PD_CFG_SEQ_NUM_SYNC*, %struct.MR_PD_CFG_SEQ_NUM_SYNC** %11, align 8
  %119 = getelementptr inbounds %struct.MR_PD_CFG_SEQ_NUM_SYNC, %struct.MR_PD_CFG_SEQ_NUM_SYNC* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %10, align 8
  %127 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %94, %89
  br label %129

129:                                              ; preds = %128, %82
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %157

132:                                              ; preds = %129
  %133 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %134 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %133, i32 0, i32 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %132
  %140 = load i32, i32* @u8, align 4
  %141 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %142 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %145 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %144, i32 0, i32 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @min_t(i32 %140, i32 %143, i64 %148)
  %150 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %10, align 8
  %151 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load %struct.megasas_instance*, %struct.megasas_instance** %8, align 8
  %153 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %152, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %10, align 8
  %156 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  br label %164

157:                                              ; preds = %132, %129
  %158 = load i8*, i8** @MEGASAS_DEFAULT_TM_TIMEOUT, align 8
  %159 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %10, align 8
  %160 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** @MEGASAS_DEFAULT_TM_TIMEOUT, align 8
  %162 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %10, align 8
  %163 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %31, %66, %157, %139
  ret void
}

declare dso_local %struct.megasas_instance* @megasas_lookup_instance(i32) #1

declare dso_local i64 @MEGASAS_IS_LOGICAL(%struct.scsi_device*) #1

declare dso_local i64 @MR_TargetIdToLdGet(i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @blk_queue_update_dma_alignment(i32, i32) #1

declare dso_local i8* @min_t(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
