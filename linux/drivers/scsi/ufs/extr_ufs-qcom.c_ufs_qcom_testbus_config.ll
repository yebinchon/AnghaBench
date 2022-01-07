; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_testbus_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_testbus_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_qcom_host = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@TEST_BUS_SUB_SEL_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@UFS_TEST_BUS_CTRL_0 = common dso_local global i32 0, align 4
@UFS_TEST_BUS_CTRL_1 = common dso_local global i32 0, align 4
@UFS_TEST_BUS_CTRL_2 = common dso_local global i32 0, align 4
@UFS_UNIPRO_CFG = common dso_local global i32 0, align 4
@TEST_BUS_SEL = common dso_local global i32 0, align 4
@REG_UFS_CFG1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_qcom_testbus_config(%struct.ufs_qcom_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_qcom_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ufs_qcom_host* %0, %struct.ufs_qcom_host** %3, align 8
  %7 = load i32, i32* @TEST_BUS_SUB_SEL_MASK, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %9 = icmp ne %struct.ufs_qcom_host* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %100

13:                                               ; preds = %1
  %14 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %15 = call i32 @ufs_qcom_testbus_cfg_is_ok(%struct.ufs_qcom_host* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %100

20:                                               ; preds = %13
  %21 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %22 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %49 [
    i32 131, label %25
    i32 132, label %27
    i32 133, label %29
    i32 136, label %31
    i32 138, label %33
    i32 134, label %35
    i32 135, label %37
    i32 137, label %39
    i32 128, label %41
    i32 139, label %43
    i32 129, label %45
    i32 130, label %47
  ]

25:                                               ; preds = %20
  %26 = load i32, i32* @UFS_TEST_BUS_CTRL_0, align 4
  store i32 %26, i32* %4, align 4
  store i32 24, i32* %5, align 4
  br label %49

27:                                               ; preds = %20
  %28 = load i32, i32* @UFS_TEST_BUS_CTRL_0, align 4
  store i32 %28, i32* %4, align 4
  store i32 16, i32* %5, align 4
  br label %49

29:                                               ; preds = %20
  %30 = load i32, i32* @UFS_TEST_BUS_CTRL_0, align 4
  store i32 %30, i32* %4, align 4
  store i32 8, i32* %5, align 4
  br label %49

31:                                               ; preds = %20
  %32 = load i32, i32* @UFS_TEST_BUS_CTRL_0, align 4
  store i32 %32, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %49

33:                                               ; preds = %20
  %34 = load i32, i32* @UFS_TEST_BUS_CTRL_1, align 4
  store i32 %34, i32* %4, align 4
  store i32 24, i32* %5, align 4
  br label %49

35:                                               ; preds = %20
  %36 = load i32, i32* @UFS_TEST_BUS_CTRL_1, align 4
  store i32 %36, i32* %4, align 4
  store i32 16, i32* %5, align 4
  br label %49

37:                                               ; preds = %20
  %38 = load i32, i32* @UFS_TEST_BUS_CTRL_1, align 4
  store i32 %38, i32* %4, align 4
  store i32 8, i32* %5, align 4
  br label %49

39:                                               ; preds = %20
  %40 = load i32, i32* @UFS_TEST_BUS_CTRL_1, align 4
  store i32 %40, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %49

41:                                               ; preds = %20
  %42 = load i32, i32* @UFS_TEST_BUS_CTRL_2, align 4
  store i32 %42, i32* %4, align 4
  store i32 16, i32* %5, align 4
  br label %49

43:                                               ; preds = %20
  %44 = load i32, i32* @UFS_TEST_BUS_CTRL_2, align 4
  store i32 %44, i32* %4, align 4
  store i32 8, i32* %5, align 4
  br label %49

45:                                               ; preds = %20
  %46 = load i32, i32* @UFS_TEST_BUS_CTRL_2, align 4
  store i32 %46, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %49

47:                                               ; preds = %20
  %48 = load i32, i32* @UFS_UNIPRO_CFG, align 4
  store i32 %48, i32* %4, align 4
  store i32 20, i32* %5, align 4
  store i32 4095, i32* %6, align 4
  br label %49

49:                                               ; preds = %20, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %54 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pm_runtime_get_sync(i32 %57)
  %59 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %60 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @ufshcd_hold(%struct.TYPE_6__* %61, i32 0)
  %63 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %64 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* @TEST_BUS_SEL, align 4
  %67 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %68 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %70, 19
  %72 = load i32, i32* @REG_UFS_CFG1, align 4
  %73 = call i32 @ufshcd_rmwl(%struct.TYPE_6__* %65, i32 %66, i32 %71, i32 %72)
  %74 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %75 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %79 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @ufshcd_rmwl(%struct.TYPE_6__* %76, i32 %77, i32 %84, i32 %85)
  %87 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %88 = call i32 @ufs_qcom_enable_test_bus(%struct.ufs_qcom_host* %87)
  %89 = call i32 (...) @mb()
  %90 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %91 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = call i32 @ufshcd_release(%struct.TYPE_6__* %92)
  %94 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %95 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pm_runtime_put_sync(i32 %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %49, %17, %10
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @ufs_qcom_testbus_cfg_is_ok(%struct.ufs_qcom_host*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @ufshcd_hold(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ufshcd_rmwl(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @ufs_qcom_enable_test_bus(%struct.ufs_qcom_host*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @ufshcd_release(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
