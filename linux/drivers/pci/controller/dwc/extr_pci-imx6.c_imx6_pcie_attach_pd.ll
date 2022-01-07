; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_attach_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_attach_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.imx6_pcie = type { i8*, i8* }
%struct.device_link = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@DL_FLAG_STATELESS = common dso_local global i32 0, align 4
@DL_FLAG_PM_RUNTIME = common dso_local global i32 0, align 4
@DL_FLAG_RPM_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to add device_link to pcie pd.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pcie_phy\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to add device_link to pcie_phy pd.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @imx6_pcie_attach_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_pcie_attach_pd(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.imx6_pcie*, align 8
  %5 = alloca %struct.device_link*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.imx6_pcie* @dev_get_drvdata(%struct.device* %6)
  store %struct.imx6_pcie* %7, %struct.imx6_pcie** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i8* @dev_pm_domain_attach_by_name(%struct.device* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %17 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %19 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %25 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @PTR_ERR(i8* %26)
  store i32 %27, i32* %2, align 4
  br label %86

28:                                               ; preds = %13
  %29 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %30 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %86

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %37 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %40 = load i32, i32* @DL_FLAG_PM_RUNTIME, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @DL_FLAG_RPM_ACTIVE, align 4
  %43 = or i32 %41, %42
  %44 = call %struct.device_link* @device_link_add(%struct.device* %35, i8* %38, i32 %43)
  store %struct.device_link* %44, %struct.device_link** %5, align 8
  %45 = load %struct.device_link*, %struct.device_link** %5, align 8
  %46 = icmp ne %struct.device_link* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %34
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %34
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = call i8* @dev_pm_domain_attach_by_name(%struct.device* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %56 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %58 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %64 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @PTR_ERR(i8* %65)
  store i32 %66, i32* %2, align 4
  br label %86

67:                                               ; preds = %52
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %70 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %73 = load i32, i32* @DL_FLAG_PM_RUNTIME, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @DL_FLAG_RPM_ACTIVE, align 4
  %76 = or i32 %74, %75
  %77 = call %struct.device_link* @device_link_add(%struct.device* %68, i8* %71, i32 %76)
  store %struct.device_link* %77, %struct.device_link** %5, align 8
  %78 = load %struct.device_link*, %struct.device_link** %5, align 8
  %79 = icmp ne %struct.device_link* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %67
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %80, %62, %47, %33, %23, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.imx6_pcie* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @dev_pm_domain_attach_by_name(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.device_link* @device_link_add(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
