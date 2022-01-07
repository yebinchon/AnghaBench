; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rmtfs_mem.c_qcom_rmtfs_mem_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rmtfs_mem.c_qcom_rmtfs_mem_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.qcom_rmtfs_mem = type { i32, i32, i64, i32, i32 }
%struct.qcom_scm_vmperm = type { i32, i32 }

@QCOM_SCM_VMID_HLOS = common dso_local global i32 0, align 4
@QCOM_SCM_PERM_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_rmtfs_mem_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_rmtfs_mem_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.qcom_rmtfs_mem*, align 8
  %4 = alloca %struct.qcom_scm_vmperm, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.qcom_rmtfs_mem* @dev_get_drvdata(i32* %6)
  store %struct.qcom_rmtfs_mem* %7, %struct.qcom_rmtfs_mem** %3, align 8
  %8 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @QCOM_SCM_VMID_HLOS, align 4
  %14 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @QCOM_SCM_PERM_RW, align 4
  %16 = getelementptr inbounds %struct.qcom_scm_vmperm, %struct.qcom_scm_vmperm* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %3, align 8
  %21 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %3, align 8
  %24 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %23, i32 0, i32 2
  %25 = call i32 @qcom_scm_assign_mem(i32 %19, i32 %22, i64* %24, %struct.qcom_scm_vmperm* %4, i32 1)
  br label %26

26:                                               ; preds = %12, %1
  %27 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %3, align 8
  %28 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %27, i32 0, i32 1
  %29 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %3, align 8
  %30 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %29, i32 0, i32 0
  %31 = call i32 @cdev_device_del(i32* %28, i32* %30)
  %32 = load %struct.qcom_rmtfs_mem*, %struct.qcom_rmtfs_mem** %3, align 8
  %33 = getelementptr inbounds %struct.qcom_rmtfs_mem, %struct.qcom_rmtfs_mem* %32, i32 0, i32 0
  %34 = call i32 @put_device(i32* %33)
  ret i32 0
}

declare dso_local %struct.qcom_rmtfs_mem* @dev_get_drvdata(i32*) #1

declare dso_local i32 @qcom_scm_assign_mem(i32, i32, i64*, %struct.qcom_scm_vmperm*, i32) #1

declare dso_local i32 @cdev_device_del(i32*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
