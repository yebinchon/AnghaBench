; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_set_global_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_set_global_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem = type { i32, %struct.smem_partition_header*, i32 }
%struct.smem_partition_header = type { i32 }
%struct.smem_ptable_entry = type { i32, i32, i32, i32, i32 }
%struct.smem_ptable = type { %struct.smem_ptable_entry*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Already found the global partition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMEM_GLOBAL_HOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Missing entry for global partition\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smem*)* @qcom_smem_set_global_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smem_set_global_partition(%struct.qcom_smem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_smem*, align 8
  %4 = alloca %struct.smem_partition_header*, align 8
  %5 = alloca %struct.smem_ptable_entry*, align 8
  %6 = alloca %struct.smem_ptable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qcom_smem* %0, %struct.qcom_smem** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %9, i32 0, i32 1
  %11 = load %struct.smem_partition_header*, %struct.smem_partition_header** %10, align 8
  %12 = icmp ne %struct.smem_partition_header* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %15 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %108

20:                                               ; preds = %1
  %21 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %22 = call %struct.smem_ptable* @qcom_smem_get_ptable(%struct.qcom_smem* %21)
  store %struct.smem_ptable* %22, %struct.smem_ptable** %6, align 8
  %23 = load %struct.smem_ptable*, %struct.smem_ptable** %6, align 8
  %24 = call i64 @IS_ERR(%struct.smem_ptable* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.smem_ptable*, %struct.smem_ptable** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.smem_ptable* %27)
  store i32 %28, i32* %2, align 4
  br label %108

29:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %74, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.smem_ptable*, %struct.smem_ptable** %6, align 8
  %33 = getelementptr inbounds %struct.smem_ptable, %struct.smem_ptable* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %30
  %38 = load %struct.smem_ptable*, %struct.smem_ptable** %6, align 8
  %39 = getelementptr inbounds %struct.smem_ptable, %struct.smem_ptable* %38, i32 0, i32 0
  %40 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %40, i64 %42
  store %struct.smem_ptable_entry* %43, %struct.smem_ptable_entry** %5, align 8
  %44 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %5, align 8
  %45 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %74

50:                                               ; preds = %37
  %51 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %5, align 8
  %52 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %74

57:                                               ; preds = %50
  %58 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %5, align 8
  %59 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le16_to_cpu(i32 %60)
  %62 = load i64, i64* @SMEM_GLOBAL_HOST, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %74

65:                                               ; preds = %57
  %66 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %5, align 8
  %67 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le16_to_cpu(i32 %68)
  %70 = load i64, i64* @SMEM_GLOBAL_HOST, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  br label %77

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %64, %56, %49
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %30

77:                                               ; preds = %72, %30
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %82 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %108

87:                                               ; preds = %77
  %88 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %89 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %5, align 8
  %90 = load i64, i64* @SMEM_GLOBAL_HOST, align 8
  %91 = load i64, i64* @SMEM_GLOBAL_HOST, align 8
  %92 = call %struct.smem_partition_header* @qcom_smem_partition_header(%struct.qcom_smem* %88, %struct.smem_ptable_entry* %89, i64 %90, i64 %91)
  store %struct.smem_partition_header* %92, %struct.smem_partition_header** %4, align 8
  %93 = load %struct.smem_partition_header*, %struct.smem_partition_header** %4, align 8
  %94 = icmp ne %struct.smem_partition_header* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %108

98:                                               ; preds = %87
  %99 = load %struct.smem_partition_header*, %struct.smem_partition_header** %4, align 8
  %100 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %101 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %100, i32 0, i32 1
  store %struct.smem_partition_header* %99, %struct.smem_partition_header** %101, align 8
  %102 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %5, align 8
  %103 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %107 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %98, %95, %80, %26, %13
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.smem_ptable* @qcom_smem_get_ptable(%struct.qcom_smem*) #1

declare dso_local i64 @IS_ERR(%struct.smem_ptable*) #1

declare dso_local i32 @PTR_ERR(%struct.smem_ptable*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.smem_partition_header* @qcom_smem_partition_header(%struct.qcom_smem*, %struct.smem_ptable_entry*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
