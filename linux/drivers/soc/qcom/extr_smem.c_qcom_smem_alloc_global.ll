; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_alloc_global.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_alloc_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smem_header* }
%struct.smem_header = type { i32, i32, %struct.smem_global_entry* }
%struct.smem_global_entry = type { i8*, i8*, i32 }

@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smem*, i32, i64)* @qcom_smem_alloc_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smem_alloc_global(%struct.qcom_smem* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_smem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.smem_global_entry*, align 8
  %9 = alloca %struct.smem_header*, align 8
  store %struct.qcom_smem* %0, %struct.qcom_smem** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.qcom_smem*, %struct.qcom_smem** %5, align 8
  %11 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.smem_header*, %struct.smem_header** %14, align 8
  store %struct.smem_header* %15, %struct.smem_header** %9, align 8
  %16 = load %struct.smem_header*, %struct.smem_header** %9, align 8
  %17 = getelementptr inbounds %struct.smem_header, %struct.smem_header* %16, i32 0, i32 2
  %18 = load %struct.smem_global_entry*, %struct.smem_global_entry** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.smem_global_entry, %struct.smem_global_entry* %18, i64 %20
  store %struct.smem_global_entry* %21, %struct.smem_global_entry** %8, align 8
  %22 = load %struct.smem_global_entry*, %struct.smem_global_entry** %8, align 8
  %23 = getelementptr inbounds %struct.smem_global_entry, %struct.smem_global_entry* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %68

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @ALIGN(i64 %30, i32 8)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.smem_header*, %struct.smem_header** %9, align 8
  %34 = getelementptr inbounds %struct.smem_header, %struct.smem_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @le32_to_cpu(i32 %35)
  %37 = icmp ugt i64 %32, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %68

44:                                               ; preds = %29
  %45 = load %struct.smem_header*, %struct.smem_header** %9, align 8
  %46 = getelementptr inbounds %struct.smem_header, %struct.smem_header* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.smem_global_entry*, %struct.smem_global_entry** %8, align 8
  %49 = getelementptr inbounds %struct.smem_global_entry, %struct.smem_global_entry* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.smem_global_entry*, %struct.smem_global_entry** %8, align 8
  %54 = getelementptr inbounds %struct.smem_global_entry, %struct.smem_global_entry* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = call i32 (...) @wmb()
  %56 = call i8* @cpu_to_le32(i32 1)
  %57 = load %struct.smem_global_entry*, %struct.smem_global_entry** %8, align 8
  %58 = getelementptr inbounds %struct.smem_global_entry, %struct.smem_global_entry* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.smem_header*, %struct.smem_header** %9, align 8
  %60 = getelementptr inbounds %struct.smem_header, %struct.smem_header* %59, i32 0, i32 1
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @le32_add_cpu(i32* %60, i64 %61)
  %63 = load %struct.smem_header*, %struct.smem_header** %9, align 8
  %64 = getelementptr inbounds %struct.smem_header, %struct.smem_header* %63, i32 0, i32 0
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 0, %65
  %67 = call i32 @le32_add_cpu(i32* %64, i64 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %44, %41, %26
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
