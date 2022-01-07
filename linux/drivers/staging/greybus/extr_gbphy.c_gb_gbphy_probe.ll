; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gb_gbphy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gb_gbphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, i32* }
%struct.greybus_bundle_id = type { i32 }
%struct.gbphy_host = type { i32, %struct.gb_bundle* }
%struct.gbphy_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_gbphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_gbphy_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.gbphy_host*, align 8
  %7 = alloca %struct.gbphy_device*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %9 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %10 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.gbphy_host* @kzalloc(i32 16, i32 %17)
  store %struct.gbphy_host* %18, %struct.gbphy_host** %6, align 8
  %19 = load %struct.gbphy_host*, %struct.gbphy_host** %6, align 8
  %20 = icmp ne %struct.gbphy_host* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %69

24:                                               ; preds = %16
  %25 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %26 = load %struct.gbphy_host*, %struct.gbphy_host** %6, align 8
  %27 = getelementptr inbounds %struct.gbphy_host, %struct.gbphy_host* %26, i32 0, i32 1
  store %struct.gb_bundle* %25, %struct.gb_bundle** %27, align 8
  %28 = load %struct.gbphy_host*, %struct.gbphy_host** %6, align 8
  %29 = getelementptr inbounds %struct.gbphy_host, %struct.gbphy_host* %28, i32 0, i32 0
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %32 = load %struct.gbphy_host*, %struct.gbphy_host** %6, align 8
  %33 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %31, %struct.gbphy_host* %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %63, %24
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %37 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  %41 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %42 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %43 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call %struct.gbphy_device* @gb_gbphy_create_dev(%struct.gb_bundle* %41, i32* %47)
  store %struct.gbphy_device* %48, %struct.gbphy_device** %7, align 8
  %49 = load %struct.gbphy_device*, %struct.gbphy_device** %7, align 8
  %50 = call i64 @IS_ERR(%struct.gbphy_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %54 = call i32 @gb_gbphy_disconnect(%struct.gb_bundle* %53)
  %55 = load %struct.gbphy_device*, %struct.gbphy_device** %7, align 8
  %56 = call i32 @PTR_ERR(%struct.gbphy_device* %55)
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %40
  %58 = load %struct.gbphy_device*, %struct.gbphy_device** %7, align 8
  %59 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %58, i32 0, i32 0
  %60 = load %struct.gbphy_host*, %struct.gbphy_host** %6, align 8
  %61 = getelementptr inbounds %struct.gbphy_host, %struct.gbphy_host* %60, i32 0, i32 0
  %62 = call i32 @list_add(i32* %59, i32* %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %34

66:                                               ; preds = %34
  %67 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %68 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %52, %21, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.gbphy_host* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gbphy_host*) #1

declare dso_local %struct.gbphy_device* @gb_gbphy_create_dev(%struct.gb_bundle*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.gbphy_device*) #1

declare dso_local i32 @gb_gbphy_disconnect(%struct.gb_bundle*) #1

declare dso_local i32 @PTR_ERR(%struct.gbphy_device*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
