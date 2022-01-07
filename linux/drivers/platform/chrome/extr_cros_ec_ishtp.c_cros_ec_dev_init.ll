; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ec_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_cros_ec_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_data = type { i32, %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32, i32, i32, i32, i32*, i32, %struct.device* }
%struct.device = type { %struct.cros_ec_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cros_ec_pkt_xfer_ish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_cl_data*)* @cros_ec_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_dev_init(%struct.ishtp_cl_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_cl_data*, align 8
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.ishtp_cl_data* %0, %struct.ishtp_cl_data** %3, align 8
  %6 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %7 = call %struct.device* @cl_data_to_dev(%struct.ishtp_cl_data* %6)
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cros_ec_device* @devm_kzalloc(%struct.device* %8, i32 40, i32 %9)
  store %struct.cros_ec_device* %10, %struct.cros_ec_device** %4, align 8
  %11 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %12 = icmp ne %struct.cros_ec_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %18 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %19 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %18, i32 0, i32 1
  store %struct.cros_ec_device* %17, %struct.cros_ec_device** %19, align 8
  %20 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  store %struct.cros_ec_device* %20, %struct.cros_ec_device** %22, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %25 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %24, i32 0, i32 6
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.ishtp_cl_data*, %struct.ishtp_cl_data** %3, align 8
  %27 = getelementptr inbounds %struct.ishtp_cl_data, %struct.ishtp_cl_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %30 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %32 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @cros_ec_pkt_xfer_ish, align 4
  %34 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %35 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @dev_name(%struct.device* %36)
  %38 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %39 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %41 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %40, i32 0, i32 0
  store i32 8, i32* %41, align 8
  %42 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %43 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %42, i32 0, i32 1
  store i32 4, i32* %43, align 4
  %44 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %45 = call i32 @cros_ec_register(%struct.cros_ec_device* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %16, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.device* @cl_data_to_dev(%struct.ishtp_cl_data*) #1

declare dso_local %struct.cros_ec_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @cros_ec_register(%struct.cros_ec_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
