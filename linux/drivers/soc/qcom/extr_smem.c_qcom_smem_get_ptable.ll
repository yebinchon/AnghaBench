; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_ptable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_ptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smem_ptable = type { i32, i32 }
%struct.qcom_smem = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SZ_4K = common dso_local global i32 0, align 4
@SMEM_PTABLE_MAGIC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unsupported partition header version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smem_ptable* (%struct.qcom_smem*)* @qcom_smem_get_ptable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smem_ptable* @qcom_smem_get_ptable(%struct.qcom_smem* %0) #0 {
  %2 = alloca %struct.smem_ptable*, align 8
  %3 = alloca %struct.qcom_smem*, align 8
  %4 = alloca %struct.smem_ptable*, align 8
  %5 = alloca i32, align 4
  store %struct.qcom_smem* %0, %struct.qcom_smem** %3, align 8
  %6 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %7 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %11, %17
  %19 = load i32, i32* @SZ_4K, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.smem_ptable*
  store %struct.smem_ptable* %22, %struct.smem_ptable** %4, align 8
  %23 = load %struct.smem_ptable*, %struct.smem_ptable** %4, align 8
  %24 = getelementptr inbounds %struct.smem_ptable, %struct.smem_ptable* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SMEM_PTABLE_MAGIC, align 4
  %27 = call i64 @memcmp(i32 %25, i32 %26, i32 4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.smem_ptable* @ERR_PTR(i32 %31)
  store %struct.smem_ptable* %32, %struct.smem_ptable** %2, align 8
  br label %51

33:                                               ; preds = %1
  %34 = load %struct.smem_ptable*, %struct.smem_ptable** %4, align 8
  %35 = getelementptr inbounds %struct.smem_ptable, %struct.smem_ptable* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %42 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.smem_ptable* @ERR_PTR(i32 %47)
  store %struct.smem_ptable* %48, %struct.smem_ptable** %2, align 8
  br label %51

49:                                               ; preds = %33
  %50 = load %struct.smem_ptable*, %struct.smem_ptable** %4, align 8
  store %struct.smem_ptable* %50, %struct.smem_ptable** %2, align 8
  br label %51

51:                                               ; preds = %49, %40, %29
  %52 = load %struct.smem_ptable*, %struct.smem_ptable** %2, align 8
  ret %struct.smem_ptable* %52
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local %struct.smem_ptable* @ERR_PTR(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
