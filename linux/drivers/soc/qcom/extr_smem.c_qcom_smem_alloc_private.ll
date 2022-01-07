; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_alloc_private.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_alloc_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem = type { i32 }
%struct.smem_partition_header = type { i8*, i8*, i32 }
%struct.smem_private_entry = type { i64, i64, i32, i8*, i8* }

@SMEM_PRIVATE_CANARY = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Found invalid canary in hosts %hu:%hu partition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smem*, %struct.smem_partition_header*, i32, i64)* @qcom_smem_alloc_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smem_alloc_private(%struct.qcom_smem* %0, %struct.smem_partition_header* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_smem*, align 8
  %7 = alloca %struct.smem_partition_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.smem_private_entry*, align 8
  %11 = alloca %struct.smem_private_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.qcom_smem* %0, %struct.qcom_smem** %6, align 8
  store %struct.smem_partition_header* %1, %struct.smem_partition_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.smem_partition_header*, %struct.smem_partition_header** %7, align 8
  %15 = call %struct.smem_private_entry* @phdr_to_first_uncached_entry(%struct.smem_partition_header* %14)
  store %struct.smem_private_entry* %15, %struct.smem_private_entry** %10, align 8
  %16 = load %struct.smem_partition_header*, %struct.smem_partition_header** %7, align 8
  %17 = call %struct.smem_private_entry* @phdr_to_last_uncached_entry(%struct.smem_partition_header* %16)
  store %struct.smem_private_entry* %17, %struct.smem_private_entry** %11, align 8
  %18 = load %struct.smem_partition_header*, %struct.smem_partition_header** %7, align 8
  %19 = call i8* @phdr_to_last_cached_entry(%struct.smem_partition_header* %18)
  store i8* %19, i8** %13, align 8
  br label %20

20:                                               ; preds = %41, %4
  %21 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %22 = load %struct.smem_private_entry*, %struct.smem_private_entry** %11, align 8
  %23 = icmp ult %struct.smem_private_entry* %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %26 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SMEM_PRIVATE_CANARY, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %93

31:                                               ; preds = %24
  %32 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %33 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @le16_to_cpu(i8* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %108

41:                                               ; preds = %31
  %42 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %43 = call %struct.smem_private_entry* @uncached_entry_next(%struct.smem_private_entry* %42)
  store %struct.smem_private_entry* %43, %struct.smem_private_entry** %10, align 8
  br label %20

44:                                               ; preds = %20
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @ALIGN(i64 %45, i32 8)
  %47 = sext i32 %46 to i64
  %48 = add i64 40, %47
  store i64 %48, i64* %12, align 8
  %49 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %50 = bitcast %struct.smem_private_entry* %49 to i8*
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr i8, i8* %50, i64 %51
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %57 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ENOSPC, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %108

62:                                               ; preds = %44
  %63 = load i64, i64* @SMEM_PRIVATE_CANARY, align 8
  %64 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %65 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %69 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @ALIGN(i64 %70, i32 8)
  %72 = call i32 @cpu_to_le32(i32 %71)
  %73 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %74 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %76 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %85 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.smem_private_entry*, %struct.smem_private_entry** %10, align 8
  %87 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = call i32 (...) @wmb()
  %89 = load %struct.smem_partition_header*, %struct.smem_partition_header** %7, align 8
  %90 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %89, i32 0, i32 2
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @le32_add_cpu(i32* %90, i64 %91)
  store i32 0, i32* %5, align 4
  br label %108

93:                                               ; preds = %30
  %94 = load %struct.qcom_smem*, %struct.qcom_smem** %6, align 8
  %95 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.smem_partition_header*, %struct.smem_partition_header** %7, align 8
  %98 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @le16_to_cpu(i8* %99)
  %101 = load %struct.smem_partition_header*, %struct.smem_partition_header** %7, align 8
  %102 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @le16_to_cpu(i8* %103)
  %105 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %93, %62, %55, %38
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.smem_private_entry* @phdr_to_first_uncached_entry(%struct.smem_partition_header*) #1

declare dso_local %struct.smem_private_entry* @phdr_to_last_uncached_entry(%struct.smem_partition_header*) #1

declare dso_local i8* @phdr_to_last_cached_entry(%struct.smem_partition_header*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local %struct.smem_private_entry* @uncached_entry_next(%struct.smem_private_entry*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
