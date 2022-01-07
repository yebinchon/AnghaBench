; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_partition_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_partition_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smem_partition_header = type { i32, i32, i32, i32, i32* }
%struct.qcom_smem = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smem_partition_header* }
%struct.smem_ptable_entry = type { i32, i32 }

@SMEM_PART_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bad partition magic %02x %02x %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"bad host0 (%hu != %hu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"bad host1 (%hu != %hu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"bad partition size (%u != %u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"bad partition free uncached (%u > %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smem_partition_header* (%struct.qcom_smem*, %struct.smem_ptable_entry*, i64, i64)* @qcom_smem_partition_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smem_partition_header* @qcom_smem_partition_header(%struct.qcom_smem* %0, %struct.smem_ptable_entry* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.smem_partition_header*, align 8
  %6 = alloca %struct.qcom_smem*, align 8
  %7 = alloca %struct.smem_ptable_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.smem_partition_header*, align 8
  %11 = alloca i64, align 8
  store %struct.qcom_smem* %0, %struct.qcom_smem** %6, align 8
  store %struct.smem_ptable_entry* %1, %struct.smem_ptable_entry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %13 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.smem_partition_header*, %struct.smem_partition_header** %16, align 8
  %18 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %7, align 8
  %19 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  %22 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %17, i64 %21
  store %struct.smem_partition_header* %22, %struct.smem_partition_header** %10, align 8
  %23 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %24 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @SMEM_PART_MAGIC, align 4
  %27 = call i64 @memcmp(i32* %25, i32 %26, i32 8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %4
  %30 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %31 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %34 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %40 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %46 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %51 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i64, i64, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %44, i32 %49, i32 %54)
  store %struct.smem_partition_header* null, %struct.smem_partition_header** %5, align 8
  br label %130

56:                                               ; preds = %4
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %59 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le16_to_cpu(i32 %60)
  %62 = icmp ne i64 %57, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %65 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %69 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le16_to_cpu(i32 %70)
  %72 = call i32 (i32, i8*, i64, i64, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %67, i64 %71)
  store %struct.smem_partition_header* null, %struct.smem_partition_header** %5, align 8
  br label %130

73:                                               ; preds = %56
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %76 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @le16_to_cpu(i32 %77)
  %79 = icmp ne i64 %74, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %82 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %86 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @le16_to_cpu(i32 %87)
  %89 = call i32 (i32, i8*, i64, i64, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %84, i64 %88)
  store %struct.smem_partition_header* null, %struct.smem_partition_header** %5, align 8
  br label %130

90:                                               ; preds = %73
  %91 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %92 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le32_to_cpu(i32 %93)
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %7, align 8
  %97 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le32_to_cpu(i32 %98)
  %100 = icmp ne i64 %95, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %90
  %102 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %103 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %7, align 8
  %107 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @le32_to_cpu(i32 %108)
  %110 = call i32 (i32, i8*, i64, i64, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %105, i64 %109)
  store %struct.smem_partition_header* null, %struct.smem_partition_header** %5, align 8
  br label %130

111:                                              ; preds = %90
  %112 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %113 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @le32_to_cpu(i32 %114)
  %116 = load i64, i64* %11, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %111
  %119 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %120 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %123 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @le32_to_cpu(i32 %124)
  %126 = load i64, i64* %11, align 8
  %127 = call i32 (i32, i8*, i64, i64, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %125, i64 %126)
  store %struct.smem_partition_header* null, %struct.smem_partition_header** %5, align 8
  br label %130

128:                                              ; preds = %111
  %129 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  store %struct.smem_partition_header* %129, %struct.smem_partition_header** %5, align 8
  br label %130

130:                                              ; preds = %128, %118, %101, %80, %63, %29
  %131 = load %struct.smem_partition_header*, %struct.smem_partition_header** %5, align 8
  ret %struct.smem_partition_header* %131
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
