; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.smem_partition_header*, %struct.smem_partition_header**, i32 }
%struct.smem_partition_header = type { i32 }

@__smem = common dso_local global %struct.TYPE_4__* null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@SMEM_ITEM_LAST_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Rejecting allocation of static entry %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HWSPINLOCK_TIMEOUT = common dso_local global i32 0, align 4
@SMEM_HOST_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_smem_alloc(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.smem_partition_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EPROBE_DEFER, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %102

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SMEM_ITEM_LAST_FIXED, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %102

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp uge i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %102

40:                                               ; preds = %28
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HWSPINLOCK_TIMEOUT, align 4
  %45 = call i32 @hwspin_lock_timeout_irqsave(i32 %43, i32 %44, i64* %9)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %102

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SMEM_HOST_COUNT, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load %struct.smem_partition_header**, %struct.smem_partition_header*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.smem_partition_header*, %struct.smem_partition_header** %57, i64 %59
  %61 = load %struct.smem_partition_header*, %struct.smem_partition_header** %60, align 8
  %62 = icmp ne %struct.smem_partition_header* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %54
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load %struct.smem_partition_header**, %struct.smem_partition_header*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.smem_partition_header*, %struct.smem_partition_header** %66, i64 %68
  %70 = load %struct.smem_partition_header*, %struct.smem_partition_header** %69, align 8
  store %struct.smem_partition_header* %70, %struct.smem_partition_header** %8, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %72 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @qcom_smem_alloc_private(%struct.TYPE_4__* %71, %struct.smem_partition_header* %72, i32 %73, i64 %74)
  store i32 %75, i32* %10, align 4
  br label %96

76:                                               ; preds = %54, %50
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.smem_partition_header*, %struct.smem_partition_header** %78, align 8
  %80 = icmp ne %struct.smem_partition_header* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load %struct.smem_partition_header*, %struct.smem_partition_header** %83, align 8
  store %struct.smem_partition_header* %84, %struct.smem_partition_header** %8, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %86 = load %struct.smem_partition_header*, %struct.smem_partition_header** %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @qcom_smem_alloc_private(%struct.TYPE_4__* %85, %struct.smem_partition_header* %86, i32 %87, i64 %88)
  store i32 %89, i32* %10, align 4
  br label %95

90:                                               ; preds = %76
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @qcom_smem_alloc_global(%struct.TYPE_4__* %91, i32 %92, i64 %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %90, %81
  br label %96

96:                                               ; preds = %95, %63
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__smem, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @hwspin_unlock_irqrestore(i32 %99, i64* %9)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %96, %48, %37, %20, %13
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hwspin_lock_timeout_irqsave(i32, i32, i64*) #1

declare dso_local i32 @qcom_smem_alloc_private(%struct.TYPE_4__*, %struct.smem_partition_header*, i32, i64) #1

declare dso_local i32 @qcom_smem_alloc_global(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @hwspin_unlock_irqrestore(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
