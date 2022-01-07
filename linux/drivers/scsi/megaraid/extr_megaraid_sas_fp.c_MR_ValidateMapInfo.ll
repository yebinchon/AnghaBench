; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_ValidateMapInfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_ValidateMapInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, %struct.TYPE_2__*, i64, i64, %struct.fusion_context* }
%struct.TYPE_2__ = type { i32 }
%struct.fusion_context = type { i32, %struct.LD_LOAD_BALANCE_INFO*, %struct.MR_DRV_RAID_MAP_ALL** }
%struct.LD_LOAD_BALANCE_INFO = type { i32 }
%struct.MR_DRV_RAID_MAP_ALL = type { %struct.MR_DRV_RAID_MAP }
%struct.MR_DRV_RAID_MAP = type { i32, i32 }
%struct.MR_LD_RAID = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"megasas: map info structure size 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"is not matching expected size 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"megasas: span map %x, pDrvRaidMap->totalSize : %x\0A\00", align 1
@MAX_LOGICAL_DRIVES_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MR_ValidateMapInfo(%struct.megasas_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fusion_context*, align 8
  %7 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %8 = alloca %struct.MR_DRV_RAID_MAP*, align 8
  %9 = alloca %struct.LD_LOAD_BALANCE_INFO*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.MR_LD_RAID*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @MR_PopulateDrvRaidMap(%struct.megasas_instance* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

21:                                               ; preds = %2
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %23 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %22, i32 0, i32 4
  %24 = load %struct.fusion_context*, %struct.fusion_context** %23, align 8
  store %struct.fusion_context* %24, %struct.fusion_context** %6, align 8
  %25 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %26 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %25, i32 0, i32 2
  %27 = load %struct.MR_DRV_RAID_MAP_ALL**, %struct.MR_DRV_RAID_MAP_ALL*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %27, i64 %30
  %32 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %31, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %32, %struct.MR_DRV_RAID_MAP_ALL** %7, align 8
  %33 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %7, align 8
  %34 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL, %struct.MR_DRV_RAID_MAP_ALL* %33, i32 0, i32 0
  store %struct.MR_DRV_RAID_MAP* %34, %struct.MR_DRV_RAID_MAP** %8, align 8
  %35 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %36 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %35, i32 0, i32 1
  %37 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %36, align 8
  store %struct.LD_LOAD_BALANCE_INFO* %37, %struct.LD_LOAD_BALANCE_INFO** %9, align 8
  %38 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %39 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %21
  store i32 8, i32* %15, align 4
  br label %62

46:                                               ; preds = %21
  %47 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %48 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 4, i32* %15, align 4
  br label %61

52:                                               ; preds = %46
  %53 = load %struct.MR_DRV_RAID_MAP*, %struct.MR_DRV_RAID_MAP** %8, align 8
  %54 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, %struct.MR_DRV_RAID_MAP* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = add i64 0, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %52, %51
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.MR_DRV_RAID_MAP*, %struct.MR_DRV_RAID_MAP** %8, align 8
  %64 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, %struct.MR_DRV_RAID_MAP* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %62
  %70 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %71 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.MR_DRV_RAID_MAP*, %struct.MR_DRV_RAID_MAP** %8, align 8
  %75 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, %struct.MR_DRV_RAID_MAP* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %80 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %86 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.MR_DRV_RAID_MAP*, %struct.MR_DRV_RAID_MAP** %8, align 8
  %90 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, %struct.MR_DRV_RAID_MAP* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 %92)
  store i32 0, i32* %3, align 4
  br label %147

94:                                               ; preds = %62
  %95 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %96 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @mr_update_span_set(%struct.MR_DRV_RAID_MAP_ALL* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %9, align 8
  %105 = icmp ne %struct.LD_LOAD_BALANCE_INFO* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %7, align 8
  %108 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %9, align 8
  %109 = call i32 @mr_update_load_balance_params(%struct.MR_DRV_RAID_MAP_ALL* %107, %struct.LD_LOAD_BALANCE_INFO* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %7, align 8
  %112 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL, %struct.MR_DRV_RAID_MAP_ALL* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, %struct.MR_DRV_RAID_MAP* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16_to_cpu(i32 %114)
  store i32 %115, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %143, %110
  %117 = load i32, i32* %12, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %122 = icmp slt i32 %120, %121
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i1 [ false, %116 ], [ %122, %119 ]
  br i1 %124, label %125, label %146

125:                                              ; preds = %123
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %7, align 8
  %128 = call i32 @MR_TargetIdToLdGet(i32 %126, %struct.MR_DRV_RAID_MAP_ALL* %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %131 = sub nsw i32 %130, 1
  %132 = icmp sge i32 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %143

134:                                              ; preds = %125
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %7, align 8
  %137 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i32 %135, %struct.MR_DRV_RAID_MAP_ALL* %136)
  store %struct.MR_LD_RAID* %137, %struct.MR_LD_RAID** %11, align 8
  %138 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %11, align 8
  %139 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %138, i32 0, i32 0
  %140 = call i32 @le32_to_cpus(i32* %139)
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %134, %133
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %116

146:                                              ; preds = %123
  store i32 1, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %69, %20
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @MR_PopulateDrvRaidMap(%struct.megasas_instance*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @mr_update_span_set(%struct.MR_DRV_RAID_MAP_ALL*, i32) #1

declare dso_local i32 @mr_update_load_balance_params(%struct.MR_DRV_RAID_MAP_ALL*, %struct.LD_LOAD_BALANCE_INFO*) #1

declare dso_local i32 @MR_TargetIdToLdGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
