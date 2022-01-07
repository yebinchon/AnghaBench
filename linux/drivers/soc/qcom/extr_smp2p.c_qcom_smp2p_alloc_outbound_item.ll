; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smp2p.c_qcom_smp2p_alloc_outbound_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smp2p.c_qcom_smp2p_alloc_outbound_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smp2p = type { i32*, i32, %struct.smp2p_smem_item*, i32, i32 }
%struct.smp2p_smem_item = type { i32, i32, i64, i32, i32, i32 }

@SMP2P_OUTBOUND = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to allocate local smp2p item\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to acquire local smp2p item\0A\00", align 1
@SMP2P_MAGIC = common dso_local global i32 0, align 4
@SMP2P_MAX_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smp2p*)* @qcom_smp2p_alloc_outbound_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smp2p_alloc_outbound_item(%struct.qcom_smp2p* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_smp2p*, align 8
  %4 = alloca %struct.smp2p_smem_item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qcom_smp2p* %0, %struct.qcom_smp2p** %3, align 8
  %8 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @SMP2P_OUTBOUND, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %15 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @qcom_smem_alloc(i32 %17, i32 %18, i32 32)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @EEXIST, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @EPROBE_DEFER, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %34 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %82

39:                                               ; preds = %22, %1
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.smp2p_smem_item* @qcom_smem_get(i32 %40, i32 %41, i32* null)
  store %struct.smp2p_smem_item* %42, %struct.smp2p_smem_item** %4, align 8
  %43 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %44 = call i64 @IS_ERR(%struct.smp2p_smem_item* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %48 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %52 = call i32 @PTR_ERR(%struct.smp2p_smem_item* %51)
  store i32 %52, i32* %2, align 4
  br label %82

53:                                               ; preds = %39
  %54 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %55 = call i32 @memset(%struct.smp2p_smem_item* %54, i32 0, i32 32)
  %56 = load i32, i32* @SMP2P_MAGIC, align 4
  %57 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %58 = getelementptr inbounds %struct.smp2p_smem_item, %struct.smp2p_smem_item* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %60 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %63 = getelementptr inbounds %struct.smp2p_smem_item, %struct.smp2p_smem_item* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %65 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %68 = getelementptr inbounds %struct.smp2p_smem_item, %struct.smp2p_smem_item* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @SMP2P_MAX_ENTRY, align 4
  %70 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %71 = getelementptr inbounds %struct.smp2p_smem_item, %struct.smp2p_smem_item* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %73 = getelementptr inbounds %struct.smp2p_smem_item, %struct.smp2p_smem_item* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = call i32 (...) @wmb()
  %75 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %76 = getelementptr inbounds %struct.smp2p_smem_item, %struct.smp2p_smem_item* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %78 = call i32 @qcom_smp2p_kick(%struct.qcom_smp2p* %77)
  %79 = load %struct.smp2p_smem_item*, %struct.smp2p_smem_item** %4, align 8
  %80 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %3, align 8
  %81 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %80, i32 0, i32 2
  store %struct.smp2p_smem_item* %79, %struct.smp2p_smem_item** %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %53, %46, %37
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @qcom_smem_alloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.smp2p_smem_item* @qcom_smem_get(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.smp2p_smem_item*) #1

declare dso_local i32 @PTR_ERR(%struct.smp2p_smem_item*) #1

declare dso_local i32 @memset(%struct.smp2p_smem_item*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qcom_smp2p_kick(%struct.qcom_smp2p*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
