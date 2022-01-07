; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_powerdomain_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_powerdomain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_xusb = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"xusb_host\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get host pm-domain: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"xusb_ss\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to get superspeed pm-domain: %d\0A\00", align 1
@DL_FLAG_PM_RUNTIME = common dso_local global i32 0, align 4
@DL_FLAG_STATELESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"adding host device link failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"adding superspeed device link failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tegra_xusb*)* @tegra_xusb_powerdomain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_powerdomain_init(%struct.device* %0, %struct.tegra_xusb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_xusb*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tegra_xusb* %1, %struct.tegra_xusb** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i8* @dev_pm_domain_attach_by_name(%struct.device* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @PTR_ERR(i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i8* @dev_pm_domain_attach_by_name(%struct.device* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %85

44:                                               ; preds = %25
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @DL_FLAG_PM_RUNTIME, align 4
  %50 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @device_link_add(%struct.device* %45, i8* %48, i32 %51)
  %53 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %54 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %56 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %44
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %85

64:                                               ; preds = %44
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %67 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @DL_FLAG_PM_RUNTIME, align 4
  %70 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %71 = or i32 %69, %70
  %72 = call i8* @device_link_add(%struct.device* %65, i8* %68, i32 %71)
  %73 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.tegra_xusb*, %struct.tegra_xusb** %5, align 8
  %76 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %64
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %79, %59, %35, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i8* @dev_pm_domain_attach_by_name(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @device_link_add(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
