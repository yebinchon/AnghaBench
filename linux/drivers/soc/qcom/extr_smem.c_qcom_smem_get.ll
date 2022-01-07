; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, i64, i32, %struct.smem_partition_header*, %struct.smem_partition_header** }
%struct.smem_partition_header = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@__smem = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@HWSPINLOCK_TIMEOUT = common dso_local global i32 0, align 4
@SMEM_HOST_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qcom_smem_get(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.smem_partition_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load i32, i32* @EPROBE_DEFER, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i8* @ERR_PTR(i32 %14)
  store i8* %15, i8** %12, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %12, align 8
  store i8* %19, i8** %4, align 8
  br label %108

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp uge i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i8* @ERR_PTR(i32 %31)
  store i8* %32, i8** %4, align 8
  br label %108

33:                                               ; preds = %20
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HWSPINLOCK_TIMEOUT, align 4
  %38 = call i32 @hwspin_lock_timeout_irqsave(i32 %36, i32 %37, i64* %9)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = call i8* @ERR_PTR(i32 %42)
  store i8* %43, i8** %4, align 8
  br label %108

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SMEM_HOST_COUNT, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load %struct.smem_partition_header**, %struct.smem_partition_header*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.smem_partition_header*, %struct.smem_partition_header** %51, i64 %53
  %55 = load %struct.smem_partition_header*, %struct.smem_partition_header** %54, align 8
  %56 = icmp ne %struct.smem_partition_header* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %48
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load %struct.smem_partition_header**, %struct.smem_partition_header*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.smem_partition_header*, %struct.smem_partition_header** %60, i64 %62
  %64 = load %struct.smem_partition_header*, %struct.smem_partition_header** %63, align 8
  store %struct.smem_partition_header* %64, %struct.smem_partition_header** %8, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %73 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i64*, i64** %7, align 8
  %77 = call i8* @qcom_smem_get_private(%struct.TYPE_4__* %72, %struct.smem_partition_header* %73, i64 %74, i32 %75, i64* %76)
  store i8* %77, i8** %12, align 8
  br label %102

78:                                               ; preds = %48, %44
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load %struct.smem_partition_header*, %struct.smem_partition_header** %80, align 8
  %82 = icmp ne %struct.smem_partition_header* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load %struct.smem_partition_header*, %struct.smem_partition_header** %85, align 8
  store %struct.smem_partition_header* %86, %struct.smem_partition_header** %8, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %10, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %91 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i64*, i64** %7, align 8
  %95 = call i8* @qcom_smem_get_private(%struct.TYPE_4__* %90, %struct.smem_partition_header* %91, i64 %92, i32 %93, i64* %94)
  store i8* %95, i8** %12, align 8
  br label %101

96:                                               ; preds = %78
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i64*, i64** %7, align 8
  %100 = call i8* @qcom_smem_get_global(%struct.TYPE_4__* %97, i32 %98, i64* %99)
  store i8* %100, i8** %12, align 8
  br label %101

101:                                              ; preds = %96, %83
  br label %102

102:                                              ; preds = %101, %57
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @hwspin_unlock_irqrestore(i32 %105, i64* %9)
  %107 = load i8*, i8** %12, align 8
  store i8* %107, i8** %4, align 8
  br label %108

108:                                              ; preds = %102, %41, %29, %18
  %109 = load i8*, i8** %4, align 8
  ret i8* %109
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hwspin_lock_timeout_irqsave(i32, i32, i64*) #1

declare dso_local i8* @qcom_smem_get_private(%struct.TYPE_4__*, %struct.smem_partition_header*, i64, i32, i64*) #1

declare dso_local i8* @qcom_smem_get_global(%struct.TYPE_4__*, i32, i64*) #1

declare dso_local i32 @hwspin_unlock_irqrestore(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
