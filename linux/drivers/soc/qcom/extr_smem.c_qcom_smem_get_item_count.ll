; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_item_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_item_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem = type { i32 }
%struct.smem_ptable = type { i64, i32* }
%struct.smem_info = type { i32, i32 }

@SMEM_ITEM_COUNT = common dso_local global i32 0, align 4
@SMEM_INFO_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smem*)* @qcom_smem_get_item_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smem_get_item_count(%struct.qcom_smem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_smem*, align 8
  %4 = alloca %struct.smem_ptable*, align 8
  %5 = alloca %struct.smem_info*, align 8
  store %struct.qcom_smem* %0, %struct.qcom_smem** %3, align 8
  %6 = load %struct.qcom_smem*, %struct.qcom_smem** %3, align 8
  %7 = call %struct.smem_ptable* @qcom_smem_get_ptable(%struct.qcom_smem* %6)
  store %struct.smem_ptable* %7, %struct.smem_ptable** %4, align 8
  %8 = load %struct.smem_ptable*, %struct.smem_ptable** %4, align 8
  %9 = call i64 @IS_ERR_OR_NULL(%struct.smem_ptable* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SMEM_ITEM_COUNT, align 4
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.smem_ptable*, %struct.smem_ptable** %4, align 8
  %15 = getelementptr inbounds %struct.smem_ptable, %struct.smem_ptable* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.smem_ptable*, %struct.smem_ptable** %4, align 8
  %18 = getelementptr inbounds %struct.smem_ptable, %struct.smem_ptable* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = bitcast i32* %20 to %struct.smem_info*
  store %struct.smem_info* %21, %struct.smem_info** %5, align 8
  %22 = load %struct.smem_info*, %struct.smem_info** %5, align 8
  %23 = getelementptr inbounds %struct.smem_info, %struct.smem_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SMEM_INFO_MAGIC, align 4
  %26 = call i64 @memcmp(i32 %24, i32 %25, i32 4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i32, i32* @SMEM_ITEM_COUNT, align 4
  store i32 %29, i32* %2, align 4
  br label %35

30:                                               ; preds = %13
  %31 = load %struct.smem_info*, %struct.smem_info** %5, align 8
  %32 = getelementptr inbounds %struct.smem_info, %struct.smem_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %28, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.smem_ptable* @qcom_smem_get_ptable(%struct.qcom_smem*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.smem_ptable*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
