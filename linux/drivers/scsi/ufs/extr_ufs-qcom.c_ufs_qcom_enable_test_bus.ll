; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_enable_test_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_enable_test_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_qcom_host = type { i32, i32 }

@UFS_QCOM_DBG_PRINT_TEST_BUS_EN = common dso_local global i32 0, align 4
@UFS_REG_TEST_BUS_EN = common dso_local global i32 0, align 4
@REG_UFS_CFG1 = common dso_local global i32 0, align 4
@TEST_BUS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_qcom_host*)* @ufs_qcom_enable_test_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_qcom_enable_test_bus(%struct.ufs_qcom_host* %0) #0 {
  %2 = alloca %struct.ufs_qcom_host*, align 8
  store %struct.ufs_qcom_host* %0, %struct.ufs_qcom_host** %2, align 8
  %3 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %4 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @UFS_QCOM_DBG_PRINT_TEST_BUS_EN, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %11 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UFS_REG_TEST_BUS_EN, align 4
  %14 = load i32, i32* @UFS_REG_TEST_BUS_EN, align 4
  %15 = load i32, i32* @REG_UFS_CFG1, align 4
  %16 = call i32 @ufshcd_rmwl(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %18 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TEST_BUS_EN, align 4
  %21 = load i32, i32* @TEST_BUS_EN, align 4
  %22 = load i32, i32* @REG_UFS_CFG1, align 4
  %23 = call i32 @ufshcd_rmwl(i32 %19, i32 %20, i32 %21, i32 %22)
  br label %37

24:                                               ; preds = %1
  %25 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %26 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UFS_REG_TEST_BUS_EN, align 4
  %29 = load i32, i32* @REG_UFS_CFG1, align 4
  %30 = call i32 @ufshcd_rmwl(i32 %27, i32 %28, i32 0, i32 %29)
  %31 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %32 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TEST_BUS_EN, align 4
  %35 = load i32, i32* @REG_UFS_CFG1, align 4
  %36 = call i32 @ufshcd_rmwl(i32 %33, i32 %34, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %24, %9
  ret void
}

declare dso_local i32 @ufshcd_rmwl(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
