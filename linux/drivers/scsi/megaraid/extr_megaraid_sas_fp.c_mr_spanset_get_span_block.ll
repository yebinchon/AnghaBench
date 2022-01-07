; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_spanset_get_span_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_spanset_get_span_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.fusion_context* }
%struct.fusion_context = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.MR_DRV_RAID_MAP_ALL = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.MR_QUAD_ELEMENT*, i32 }
%struct.MR_QUAD_ELEMENT = type { i32, i32, i32, i32 }
%struct.MR_LD_RAID = type { i64, i64 }

@MAX_QUAD_DEPTH = common dso_local global i64 0, align 8
@SPAN_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mr_spanset_get_span_block(%struct.megasas_instance* %0, i64 %1, i64 %2, i64* %3, %struct.MR_DRV_RAID_MAP_ALL* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.megasas_instance*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %12 = alloca %struct.fusion_context*, align 8
  %13 = alloca %struct.MR_LD_RAID*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.MR_QUAD_ELEMENT*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %4, %struct.MR_DRV_RAID_MAP_ALL** %11, align 8
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 0
  %22 = load %struct.fusion_context*, %struct.fusion_context** %21, align 8
  store %struct.fusion_context* %22, %struct.fusion_context** %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %11, align 8
  %25 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %23, %struct.MR_DRV_RAID_MAP_ALL* %24)
  store %struct.MR_LD_RAID* %25, %struct.MR_LD_RAID** %13, align 8
  %26 = load %struct.fusion_context*, %struct.fusion_context** %12, align 8
  %27 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %18, align 8
  store i64 0, i64* %17, align 8
  br label %29

29:                                               ; preds = %163, %5
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* @MAX_QUAD_DEPTH, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %166

33:                                               ; preds = %29
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i64, i64* %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %39
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %14, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %166

46:                                               ; preds = %33
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %163

53:                                               ; preds = %46
  store i64 0, i64* %16, align 8
  br label %54

54:                                               ; preds = %159, %53
  %55 = load i64, i64* %16, align 8
  %56 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %13, align 8
  %57 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %162

60:                                               ; preds = %54
  %61 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %11, align 8
  %62 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL, %struct.MR_DRV_RAID_MAP_ALL* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i64, i64* %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @le32_to_cpu(i32 %73)
  %75 = load i64, i64* %17, align 8
  %76 = add i64 %75, 1
  %77 = icmp uge i64 %74, %76
  br i1 %77, label %78, label %158

78:                                               ; preds = %60
  %79 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %11, align 8
  %80 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL, %struct.MR_DRV_RAID_MAP_ALL* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load i64, i64* %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %90, align 8
  %92 = load i64, i64* %17, align 8
  %93 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %91, i64 %92
  store %struct.MR_QUAD_ELEMENT* %93, %struct.MR_QUAD_ELEMENT** %15, align 8
  %94 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %95 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @le32_to_cpu(i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %78
  %100 = load i64, i64* @SPAN_INVALID, align 8
  store i64 %100, i64* %6, align 8
  br label %168

101:                                              ; preds = %78
  %102 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %103 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @le64_to_cpu(i32 %104)
  %106 = load i64, i64* %9, align 8
  %107 = icmp sle i64 %105, %106
  br i1 %107, label %108, label %157

108:                                              ; preds = %101
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %111 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @le64_to_cpu(i32 %112)
  %114 = icmp sle i64 %109, %113
  br i1 %114, label %115, label %157

115:                                              ; preds = %108
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %118 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @le64_to_cpu(i32 %119)
  %121 = sub nsw i64 %116, %120
  %122 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %123 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @le32_to_cpu(i32 %124)
  %126 = call i64 @mega_mod64(i64 %121, i64 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %157

128:                                              ; preds = %115
  %129 = load i64*, i64** %10, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %155

131:                                              ; preds = %128
  %132 = load i64, i64* %9, align 8
  %133 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %134 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @le64_to_cpu(i32 %135)
  %137 = sub nsw i64 %132, %136
  %138 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %139 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @le32_to_cpu(i32 %140)
  %142 = call i64 @mega_div64_32(i64 %137, i64 %141)
  store i64 %142, i64* %19, align 8
  %143 = load i64, i64* %19, align 8
  %144 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %15, align 8
  %145 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @le64_to_cpu(i32 %146)
  %148 = add nsw i64 %143, %147
  %149 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %13, align 8
  %150 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = shl i64 %148, %151
  store i64 %152, i64* %19, align 8
  %153 = load i64, i64* %19, align 8
  %154 = load i64*, i64** %10, align 8
  store i64 %153, i64* %154, align 8
  br label %155

155:                                              ; preds = %131, %128
  %156 = load i64, i64* %16, align 8
  store i64 %156, i64* %6, align 8
  br label %168

157:                                              ; preds = %115, %108, %101
  br label %158

158:                                              ; preds = %157, %60
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %16, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %16, align 8
  br label %54

162:                                              ; preds = %54
  br label %163

163:                                              ; preds = %162, %52
  %164 = load i64, i64* %17, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %17, align 8
  br label %29

166:                                              ; preds = %45, %29
  %167 = load i64, i64* @SPAN_INVALID, align 8
  store i64 %167, i64* %6, align 8
  br label %168

168:                                              ; preds = %166, %155, %99
  %169 = load i64, i64* %6, align 8
  ret i64 %169
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @mega_mod64(i64, i64) #1

declare dso_local i64 @mega_div64_32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
