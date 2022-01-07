; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_xfer_mem_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_xfer_mem_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32 }
%struct.qcom_scm_vmperm = type { i32, i32 }

@QCOM_SCM_VMID_MSS_MSA = common dso_local global i32 0, align 4
@QCOM_SCM_VMID_HLOS = common dso_local global i32 0, align 4
@QCOM_SCM_PERM_RW = common dso_local global i32 0, align 4
@QCOM_SCM_PERM_RWX = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*, i32*, i32, i32, i64)* @q6v5_xfer_mem_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.q6v5*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.qcom_scm_vmperm, align 4
  store %struct.q6v5* %0, %struct.q6v5** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.q6v5*, %struct.q6v5** %7, align 8
  %14 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %63

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @QCOM_SCM_VMID_MSS_MSA, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %63

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @QCOM_SCM_VMID_HLOS, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %63

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @QCOM_SCM_VMID_MSS_MSA, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @QCOM_SCM_VMID_HLOS, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %12, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @QCOM_SCM_PERM_RW, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @QCOM_SCM_PERM_RWX, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %12, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* @SZ_4K, align 4
  %60 = call i32 @ALIGN(i64 %58, i32 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @qcom_scm_assign_mem(i32 %57, i32 %60, i32* %61, %struct.qcom_scm_vmperm* %12, i32 1)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %54, %37, %27, %17
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qcom_scm_assign_mem(i32, i32, i32*, %struct.qcom_scm_vmperm*, i32) #1

declare dso_local i32 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
