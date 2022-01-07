; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_strip_from_row.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_strip_from_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_12__*, %struct.fusion_context* }
%struct.TYPE_12__ = type { i32 }
%struct.fusion_context = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, i64*, i64 }
%struct.MR_DRV_RAID_MAP_ALL = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.MR_QUAD_ELEMENT*, i32 }
%struct.MR_QUAD_ELEMENT = type { i32, i32, i32 }
%struct.MR_LD_RAID = type { i64 }

@MAX_QUAD_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"get_strip_from_rowreturns invalid strip for ld=%x, row=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.megasas_instance*, i64, i64, %struct.MR_DRV_RAID_MAP_ALL*)* @get_strip_from_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_strip_from_row(%struct.megasas_instance* %0, i64 %1, i64 %2, %struct.MR_DRV_RAID_MAP_ALL* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.megasas_instance*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %10 = alloca %struct.fusion_context*, align 8
  %11 = alloca %struct.MR_LD_RAID*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.MR_QUAD_ELEMENT*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %3, %struct.MR_DRV_RAID_MAP_ALL** %9, align 8
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 1
  %20 = load %struct.fusion_context*, %struct.fusion_context** %19, align 8
  store %struct.fusion_context* %20, %struct.fusion_context** %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %9, align 8
  %23 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %21, %struct.MR_DRV_RAID_MAP_ALL* %22)
  store %struct.MR_LD_RAID* %23, %struct.MR_LD_RAID** %11, align 8
  %24 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %25 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %14, align 8
  store i64 0, i64* %16, align 8
  br label %27

27:                                               ; preds = %159, %4
  %28 = load i64, i64* %16, align 8
  %29 = load i64, i64* @MAX_QUAD_DEPTH, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %162

31:                                               ; preds = %27
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = load i64, i64* %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i64 %37
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %12, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %162

44:                                               ; preds = %31
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %159

51:                                               ; preds = %44
  store i64 0, i64* %15, align 8
  br label %52

52:                                               ; preds = %155, %51
  %53 = load i64, i64* %15, align 8
  %54 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %11, align 8
  %55 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %158

58:                                               ; preds = %52
  %59 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %9, align 8
  %60 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL, %struct.MR_DRV_RAID_MAP_ALL* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @le32_to_cpu(i32 %71)
  %73 = load i64, i64* %16, align 8
  %74 = add i64 %73, 1
  %75 = icmp uge i64 %72, %74
  br i1 %75, label %76, label %154

76:                                               ; preds = %58
  %77 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %9, align 8
  %78 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL, %struct.MR_DRV_RAID_MAP_ALL* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %88, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %89, i64 %90
  store %struct.MR_QUAD_ELEMENT* %91, %struct.MR_QUAD_ELEMENT** %13, align 8
  %92 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %93 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @le64_to_cpu(i32 %94)
  %96 = load i64, i64* %8, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %153

98:                                               ; preds = %76
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %101 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @le64_to_cpu(i32 %102)
  %104 = icmp sle i64 %99, %103
  br i1 %104, label %105, label %153

105:                                              ; preds = %98
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %108 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @le64_to_cpu(i32 %109)
  %111 = sub nsw i64 %106, %110
  %112 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %113 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @le32_to_cpu(i32 %114)
  %116 = call i64 @mega_mod64(i64 %111, i64 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %153

118:                                              ; preds = %105
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  %124 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %125 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @le64_to_cpu(i32 %126)
  %128 = sub nsw i64 %123, %127
  %129 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %130 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @le32_to_cpu(i32 %131)
  %133 = call i64 @mega_div64_32(i64 %128, i64 %132)
  store i64 %133, i64* %17, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %17, align 8
  %138 = mul nsw i64 %137, %136
  store i64 %138, i64* %17, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %17, align 8
  %143 = add nsw i64 %142, %141
  store i64 %143, i64* %17, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 3
  %146 = load i64*, i64** %145, align 8
  %147 = load i64, i64* %15, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %17, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %17, align 8
  %152 = load i64, i64* %17, align 8
  store i64 %152, i64* %5, align 8
  br label %170

153:                                              ; preds = %105, %98, %76
  br label %154

154:                                              ; preds = %153, %58
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %15, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %15, align 8
  br label %52

158:                                              ; preds = %52
  br label %159

159:                                              ; preds = %158, %50
  %160 = load i64, i64* %16, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %16, align 8
  br label %27

162:                                              ; preds = %43, %27
  %163 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %164 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %163, i32 0, i32 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @dev_err(i32* %166, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %167, i64 %168)
  store i64 -1, i64* %5, align 8
  br label %170

170:                                              ; preds = %162, %118
  %171 = load i64, i64* %5, align 8
  ret i64 %171
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @mega_mod64(i64, i64) #1

declare dso_local i64 @mega_div64_32(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
