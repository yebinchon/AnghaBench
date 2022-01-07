; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_rpmsg.c_cros_ec_rpmsg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_rpmsg.c_cros_ec_rpmsg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { %struct.device }
%struct.device = type { i32 }
%struct.cros_ec_rpmsg = type { i32, i32, i32, %struct.rpmsg_device* }
%struct.cros_ec_device = type { i32, i32, i32, i32, i32, %struct.cros_ec_rpmsg*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cros_ec_cmd_xfer_rpmsg = common dso_local global i32 0, align 4
@cros_ec_pkt_xfer_rpmsg = common dso_local global i32 0, align 4
@cros_ec_rpmsg_host_event_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @cros_ec_rpmsg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_rpmsg_probe(%struct.rpmsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmsg_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cros_ec_rpmsg*, align 8
  %6 = alloca %struct.cros_ec_device*, align 8
  %7 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %3, align 8
  %8 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %9 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devm_kzalloc(%struct.device* %10, i32 40, i32 %11)
  %13 = bitcast i8* %12 to %struct.cros_ec_device*
  store %struct.cros_ec_device* %13, %struct.cros_ec_device** %6, align 8
  %14 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %15 = icmp ne %struct.cros_ec_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.device* %20, i32 24, i32 %21)
  %23 = bitcast i8* %22 to %struct.cros_ec_rpmsg*
  store %struct.cros_ec_rpmsg* %23, %struct.cros_ec_rpmsg** %5, align 8
  %24 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %5, align 8
  %25 = icmp ne %struct.cros_ec_rpmsg* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %90

29:                                               ; preds = %19
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %32 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %31, i32 0, i32 6
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %5, align 8
  %34 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %35 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %34, i32 0, i32 5
  store %struct.cros_ec_rpmsg* %33, %struct.cros_ec_rpmsg** %35, align 8
  %36 = load i32, i32* @cros_ec_cmd_xfer_rpmsg, align 4
  %37 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %38 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @cros_ec_pkt_xfer_rpmsg, align 4
  %40 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %41 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %43 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %42, i32 0, i32 0
  %44 = call i32 @dev_name(%struct.device* %43)
  %45 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %46 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %48 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %47, i32 0, i32 0
  store i32 8, i32* %48, align 8
  %49 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %50 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %49, i32 0, i32 1
  store i32 4, i32* %50, align 4
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %53 = call i32 @dev_set_drvdata(%struct.device* %51, %struct.cros_ec_device* %52)
  %54 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %55 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %5, align 8
  %56 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %55, i32 0, i32 3
  store %struct.rpmsg_device* %54, %struct.rpmsg_device** %56, align 8
  %57 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %5, align 8
  %58 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %57, i32 0, i32 2
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %5, align 8
  %61 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %60, i32 0, i32 0
  %62 = load i32, i32* @cros_ec_rpmsg_host_event_function, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %65 = call i32 @cros_ec_rpmsg_create_ept(%struct.rpmsg_device* %64)
  %66 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %5, align 8
  %67 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %5, align 8
  %69 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %29
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %90

75:                                               ; preds = %29
  %76 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  %77 = call i32 @cros_ec_register(%struct.cros_ec_device* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %5, align 8
  %82 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rpmsg_destroy_ept(i32 %83)
  %85 = load %struct.cros_ec_rpmsg*, %struct.cros_ec_rpmsg** %5, align 8
  %86 = getelementptr inbounds %struct.cros_ec_rpmsg, %struct.cros_ec_rpmsg* %85, i32 0, i32 0
  %87 = call i32 @cancel_work_sync(i32* %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %80, %72, %26, %16
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.cros_ec_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @cros_ec_rpmsg_create_ept(%struct.rpmsg_device*) #1

declare dso_local i32 @cros_ec_register(%struct.cros_ec_device*) #1

declare dso_local i32 @rpmsg_destroy_ept(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
