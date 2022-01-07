; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_private.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem = type { i32 }
%struct.smem_partition_header = type { i32, i32 }
%struct.smem_private_entry = type { i64, i32, i32, i32 }

@SMEM_PRIVATE_CANARY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Found invalid canary in hosts %hu:%hu partition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qcom_smem*, %struct.smem_partition_header*, i64, i32, i64*)* @qcom_smem_get_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qcom_smem_get_private(%struct.qcom_smem* %0, %struct.smem_partition_header* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qcom_smem*, align 8
  %8 = alloca %struct.smem_partition_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.smem_private_entry*, align 8
  %13 = alloca %struct.smem_private_entry*, align 8
  store %struct.qcom_smem* %0, %struct.qcom_smem** %7, align 8
  store %struct.smem_partition_header* %1, %struct.smem_partition_header** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %15 = call %struct.smem_private_entry* @phdr_to_first_uncached_entry(%struct.smem_partition_header* %14)
  store %struct.smem_private_entry* %15, %struct.smem_private_entry** %12, align 8
  %16 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %17 = call %struct.smem_private_entry* @phdr_to_last_uncached_entry(%struct.smem_partition_header* %16)
  store %struct.smem_private_entry* %17, %struct.smem_private_entry** %13, align 8
  br label %18

18:                                               ; preds = %54, %5
  %19 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %20 = load %struct.smem_private_entry*, %struct.smem_private_entry** %13, align 8
  %21 = icmp ult %struct.smem_private_entry* %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %24 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SMEM_PRIVATE_CANARY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %107

29:                                               ; preds = %22
  %30 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %31 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load i64*, i64** %11, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %41 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %45 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = sub i32 %43, %47
  %49 = zext i32 %48 to i64
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %39, %36
  %52 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %53 = call i8* @uncached_entry_to_item(%struct.smem_private_entry* %52)
  store i8* %53, i8** %6, align 8
  br label %123

54:                                               ; preds = %29
  %55 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %56 = call %struct.smem_private_entry* @uncached_entry_next(%struct.smem_private_entry* %55)
  store %struct.smem_private_entry* %56, %struct.smem_private_entry** %12, align 8
  br label %18

57:                                               ; preds = %18
  %58 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call %struct.smem_private_entry* @phdr_to_first_cached_entry(%struct.smem_partition_header* %58, i64 %59)
  store %struct.smem_private_entry* %60, %struct.smem_private_entry** %12, align 8
  %61 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %62 = call %struct.smem_private_entry* @phdr_to_last_cached_entry(%struct.smem_partition_header* %61)
  store %struct.smem_private_entry* %62, %struct.smem_private_entry** %13, align 8
  br label %63

63:                                               ; preds = %99, %57
  %64 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %65 = load %struct.smem_private_entry*, %struct.smem_private_entry** %13, align 8
  %66 = icmp ugt %struct.smem_private_entry* %64, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %63
  %68 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %69 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SMEM_PRIVATE_CANARY, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %107

74:                                               ; preds = %67
  %75 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %76 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %74
  %82 = load i64*, i64** %11, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %86 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %90 = getelementptr inbounds %struct.smem_private_entry, %struct.smem_private_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = sub i32 %88, %92
  %94 = zext i32 %93 to i64
  %95 = load i64*, i64** %11, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %84, %81
  %97 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %98 = call i8* @cached_entry_to_item(%struct.smem_private_entry* %97)
  store i8* %98, i8** %6, align 8
  br label %123

99:                                               ; preds = %74
  %100 = load %struct.smem_private_entry*, %struct.smem_private_entry** %12, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call %struct.smem_private_entry* @cached_entry_next(%struct.smem_private_entry* %100, i64 %101)
  store %struct.smem_private_entry* %102, %struct.smem_private_entry** %12, align 8
  br label %63

103:                                              ; preds = %63
  %104 = load i32, i32* @ENOENT, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i8* @ERR_PTR(i32 %105)
  store i8* %106, i8** %6, align 8
  br label %123

107:                                              ; preds = %73, %28
  %108 = load %struct.qcom_smem*, %struct.qcom_smem** %7, align 8
  %109 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %112 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %116 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  %119 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  %122 = call i8* @ERR_PTR(i32 %121)
  store i8* %122, i8** %6, align 8
  br label %123

123:                                              ; preds = %107, %103, %96, %51
  %124 = load i8*, i8** %6, align 8
  ret i8* %124
}

declare dso_local %struct.smem_private_entry* @phdr_to_first_uncached_entry(%struct.smem_partition_header*) #1

declare dso_local %struct.smem_private_entry* @phdr_to_last_uncached_entry(%struct.smem_partition_header*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @uncached_entry_to_item(%struct.smem_private_entry*) #1

declare dso_local %struct.smem_private_entry* @uncached_entry_next(%struct.smem_private_entry*) #1

declare dso_local %struct.smem_private_entry* @phdr_to_first_cached_entry(%struct.smem_partition_header*, i64) #1

declare dso_local %struct.smem_private_entry* @phdr_to_last_cached_entry(%struct.smem_partition_header*) #1

declare dso_local i8* @cached_entry_to_item(%struct.smem_private_entry*) #1

declare dso_local %struct.smem_private_entry* @cached_entry_next(%struct.smem_private_entry*, i64) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
