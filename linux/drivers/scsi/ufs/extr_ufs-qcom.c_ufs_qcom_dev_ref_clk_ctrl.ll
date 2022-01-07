; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_dev_ref_clk_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_dev_ref_clk_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_qcom_host = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_qcom_host*, i32)* @ufs_qcom_dev_ref_clk_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_qcom_dev_ref_clk_ctrl(%struct.ufs_qcom_host* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_qcom_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ufs_qcom_host* %0, %struct.ufs_qcom_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %13 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = xor i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %10
  %18 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %19 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %26 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %37

30:                                               ; preds = %17
  %31 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %32 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 @udelay(i32 1)
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %45 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @writel_relaxed(i32 %43, i64 %46)
  %48 = call i32 (...) @wmb()
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = call i32 @udelay(i32 1)
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %56 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %10, %2
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
