; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_GetSpanBlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_MR_GetSpanBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MR_DRV_RAID_MAP_ALL = type { i32 }
%struct.MR_SPAN_BLOCK_INFO = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.MR_QUAD_ELEMENT*, i32 }
%struct.MR_QUAD_ELEMENT = type { i32, i32, i32, i32 }
%struct.MR_LD_RAID = type { i64, i32 }

@SPAN_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MR_GetSpanBlock(i64 %0, i32 %1, i32* %2, %struct.MR_DRV_RAID_MAP_ALL* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %10 = alloca %struct.MR_SPAN_BLOCK_INFO*, align 8
  %11 = alloca %struct.MR_QUAD_ELEMENT*, align 8
  %12 = alloca %struct.MR_LD_RAID*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %3, %struct.MR_DRV_RAID_MAP_ALL** %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %9, align 8
  %19 = call %struct.MR_SPAN_BLOCK_INFO* @MR_LdSpanInfoGet(i64 %17, %struct.MR_DRV_RAID_MAP_ALL* %18)
  store %struct.MR_SPAN_BLOCK_INFO* %19, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %9, align 8
  %22 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %20, %struct.MR_DRV_RAID_MAP_ALL* %21)
  store %struct.MR_LD_RAID* %22, %struct.MR_LD_RAID** %12, align 8
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %114, %4
  %24 = load i64, i64* %13, align 8
  %25 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %12, align 8
  %26 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %119

29:                                               ; preds = %23
  store i64 0, i64* %14, align 8
  br label %30

30:                                               ; preds = %110, %29
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.MR_SPAN_BLOCK_INFO*, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  %33 = getelementptr inbounds %struct.MR_SPAN_BLOCK_INFO, %struct.MR_SPAN_BLOCK_INFO* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @le32_to_cpu(i32 %35)
  %37 = icmp slt i64 %31, %36
  br i1 %37, label %38, label %113

38:                                               ; preds = %30
  %39 = load %struct.MR_SPAN_BLOCK_INFO*, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  %40 = getelementptr inbounds %struct.MR_SPAN_BLOCK_INFO, %struct.MR_SPAN_BLOCK_INFO* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %41, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %42, i64 %43
  store %struct.MR_QUAD_ELEMENT* %44, %struct.MR_QUAD_ELEMENT** %11, align 8
  %45 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %46 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i64, i64* @SPAN_INVALID, align 8
  store i64 %51, i64* %5, align 8
  br label %121

52:                                               ; preds = %38
  %53 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %54 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le64_to_cpu(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %109

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %62 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le64_to_cpu(i32 %63)
  %65 = icmp sle i32 %60, %64
  br i1 %65, label %66, label %109

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %69 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le64_to_cpu(i32 %70)
  %72 = sub nsw i32 %67, %71
  %73 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %74 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  %77 = call i64 @mega_mod64(i32 %72, i64 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %66
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %85 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le64_to_cpu(i32 %86)
  %88 = sub nsw i32 %83, %87
  %89 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %90 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  %93 = call i32 @mega_div64_32(i32 %88, i64 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %11, align 8
  %97 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le64_to_cpu(i32 %98)
  %100 = add nsw i32 %95, %99
  %101 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %12, align 8
  %102 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 %100, %103
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32*, i32** %8, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %82, %79
  %108 = load i64, i64* %13, align 8
  store i64 %108, i64* %5, align 8
  br label %121

109:                                              ; preds = %66, %59, %52
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %14, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %14, align 8
  br label %30

113:                                              ; preds = %30
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %13, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %13, align 8
  %117 = load %struct.MR_SPAN_BLOCK_INFO*, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  %118 = getelementptr inbounds %struct.MR_SPAN_BLOCK_INFO, %struct.MR_SPAN_BLOCK_INFO* %117, i32 1
  store %struct.MR_SPAN_BLOCK_INFO* %118, %struct.MR_SPAN_BLOCK_INFO** %10, align 8
  br label %23

119:                                              ; preds = %23
  %120 = load i64, i64* @SPAN_INVALID, align 8
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %119, %107, %50
  %122 = load i64, i64* %5, align 8
  ret i64 %122
}

declare dso_local %struct.MR_SPAN_BLOCK_INFO* @MR_LdSpanInfoGet(i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @mega_mod64(i32, i64) #1

declare dso_local i32 @mega_div64_32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
