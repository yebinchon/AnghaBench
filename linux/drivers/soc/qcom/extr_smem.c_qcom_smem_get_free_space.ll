; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.smem_partition_header*, %struct.smem_partition_header** }
%struct.TYPE_3__ = type { %struct.smem_header* }
%struct.smem_header = type { i32 }
%struct.smem_partition_header = type { i32, i32 }

@__smem = common dso_local global %struct.TYPE_4__* null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@SMEM_HOST_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_smem_get_free_space(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smem_partition_header*, align 8
  %5 = alloca %struct.smem_header*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EPROBE_DEFER, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %74

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SMEM_HOST_COUNT, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.smem_partition_header**, %struct.smem_partition_header*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.smem_partition_header*, %struct.smem_partition_header** %19, i64 %21
  %23 = load %struct.smem_partition_header*, %struct.smem_partition_header** %22, align 8
  %24 = icmp ne %struct.smem_partition_header* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.smem_partition_header**, %struct.smem_partition_header*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.smem_partition_header*, %struct.smem_partition_header** %28, i64 %30
  %32 = load %struct.smem_partition_header*, %struct.smem_partition_header** %31, align 8
  store %struct.smem_partition_header* %32, %struct.smem_partition_header** %4, align 8
  %33 = load %struct.smem_partition_header*, %struct.smem_partition_header** %4, align 8
  %34 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = load %struct.smem_partition_header*, %struct.smem_partition_header** %4, align 8
  %38 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = sub i32 %36, %40
  store i32 %41, i32* %6, align 4
  br label %72

42:                                               ; preds = %16, %12
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.smem_partition_header*, %struct.smem_partition_header** %44, align 8
  %46 = icmp ne %struct.smem_partition_header* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.smem_partition_header*, %struct.smem_partition_header** %49, align 8
  store %struct.smem_partition_header* %50, %struct.smem_partition_header** %4, align 8
  %51 = load %struct.smem_partition_header*, %struct.smem_partition_header** %4, align 8
  %52 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load %struct.smem_partition_header*, %struct.smem_partition_header** %4, align 8
  %56 = getelementptr inbounds %struct.smem_partition_header, %struct.smem_partition_header* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = sub i32 %54, %58
  store i32 %59, i32* %6, align 4
  br label %71

60:                                               ; preds = %42
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.smem_header*, %struct.smem_header** %65, align 8
  store %struct.smem_header* %66, %struct.smem_header** %5, align 8
  %67 = load %struct.smem_header*, %struct.smem_header** %5, align 8
  %68 = getelementptr inbounds %struct.smem_header, %struct.smem_header* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %60, %47
  br label %72

72:                                               ; preds = %71, %25
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %9
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
