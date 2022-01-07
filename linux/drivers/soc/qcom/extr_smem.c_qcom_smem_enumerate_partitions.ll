; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_enumerate_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_enumerate_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem = type { i32*, %struct.smem_partition_header**, i32 }
%struct.smem_partition_header = type { i32 }
%struct.smem_ptable_entry = type { i32, i32, i32, i32, i32 }
%struct.smem_ptable = type { %struct.smem_ptable_entry*, i32 }

@SMEM_HOST_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bad host %hu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"duplicate host %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smem*, i32)* @qcom_smem_enumerate_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smem_enumerate_partitions(%struct.qcom_smem* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_smem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smem_partition_header*, align 8
  %7 = alloca %struct.smem_ptable_entry*, align 8
  %8 = alloca %struct.smem_ptable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qcom_smem* %0, %struct.qcom_smem** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.qcom_smem*, %struct.qcom_smem** %4, align 8
  %14 = call %struct.smem_ptable* @qcom_smem_get_ptable(%struct.qcom_smem* %13)
  store %struct.smem_ptable* %14, %struct.smem_ptable** %8, align 8
  %15 = load %struct.smem_ptable*, %struct.smem_ptable** %8, align 8
  %16 = call i64 @IS_ERR(%struct.smem_ptable* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.smem_ptable*, %struct.smem_ptable** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.smem_ptable* %19)
  store i32 %20, i32* %3, align 4
  br label %133

21:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %129, %21
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.smem_ptable*, %struct.smem_ptable** %8, align 8
  %25 = getelementptr inbounds %struct.smem_ptable, %struct.smem_ptable* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %132

29:                                               ; preds = %22
  %30 = load %struct.smem_ptable*, %struct.smem_ptable** %8, align 8
  %31 = getelementptr inbounds %struct.smem_ptable, %struct.smem_ptable* %30, i32 0, i32 0
  %32 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %32, i64 %34
  store %struct.smem_ptable_entry* %35, %struct.smem_ptable_entry** %7, align 8
  %36 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %7, align 8
  %37 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %129

42:                                               ; preds = %29
  %43 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %7, align 8
  %44 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %129

49:                                               ; preds = %42
  %50 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %7, align 8
  %51 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %7, align 8
  %55 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %9, align 4
  br label %71

63:                                               ; preds = %49
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %9, align 4
  br label %70

69:                                               ; preds = %63
  br label %129

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %61
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SMEM_HOST_COUNT, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.qcom_smem*, %struct.qcom_smem** %4, align 8
  %77 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %133

83:                                               ; preds = %71
  %84 = load %struct.qcom_smem*, %struct.qcom_smem** %4, align 8
  %85 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %84, i32 0, i32 1
  %86 = load %struct.smem_partition_header**, %struct.smem_partition_header*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.smem_partition_header*, %struct.smem_partition_header** %86, i64 %88
  %90 = load %struct.smem_partition_header*, %struct.smem_partition_header** %89, align 8
  %91 = icmp ne %struct.smem_partition_header* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.qcom_smem*, %struct.qcom_smem** %4, align 8
  %94 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %133

100:                                              ; preds = %83
  %101 = load %struct.qcom_smem*, %struct.qcom_smem** %4, align 8
  %102 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %7, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call %struct.smem_partition_header* @qcom_smem_partition_header(%struct.qcom_smem* %101, %struct.smem_ptable_entry* %102, i32 %103, i32 %104)
  store %struct.smem_partition_header* %105, %struct.smem_partition_header** %6, align 8
  %106 = load %struct.smem_partition_header*, %struct.smem_partition_header** %6, align 8
  %107 = icmp ne %struct.smem_partition_header* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %133

111:                                              ; preds = %100
  %112 = load %struct.smem_partition_header*, %struct.smem_partition_header** %6, align 8
  %113 = load %struct.qcom_smem*, %struct.qcom_smem** %4, align 8
  %114 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %113, i32 0, i32 1
  %115 = load %struct.smem_partition_header**, %struct.smem_partition_header*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.smem_partition_header*, %struct.smem_partition_header** %115, i64 %117
  store %struct.smem_partition_header* %112, %struct.smem_partition_header** %118, align 8
  %119 = load %struct.smem_ptable_entry*, %struct.smem_ptable_entry** %7, align 8
  %120 = getelementptr inbounds %struct.smem_ptable_entry, %struct.smem_ptable_entry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @le32_to_cpu(i32 %121)
  %123 = load %struct.qcom_smem*, %struct.qcom_smem** %4, align 8
  %124 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %111, %69, %48, %41
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %22

132:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %108, %92, %75, %18
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.smem_ptable* @qcom_smem_get_ptable(%struct.qcom_smem*) #1

declare dso_local i64 @IS_ERR(%struct.smem_ptable*) #1

declare dso_local i32 @PTR_ERR(%struct.smem_ptable*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.smem_partition_header* @qcom_smem_partition_header(%struct.qcom_smem*, %struct.smem_ptable_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
