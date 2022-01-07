; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-vt8500.c_vt8500_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-vt8500.c_vt8500_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wmt_pinctrl_data = type { i8*, i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vt8500_banks = common dso_local global i8* null, align 8
@vt8500_pins = common dso_local global i8* null, align 8
@vt8500_groups = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vt8500_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wmt_pinctrl_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wmt_pinctrl_data* @devm_kzalloc(i32* %6, i32 48, i32 %7)
  store %struct.wmt_pinctrl_data* %8, %struct.wmt_pinctrl_data** %4, align 8
  %9 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %4, align 8
  %10 = icmp ne %struct.wmt_pinctrl_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load i8*, i8** @vt8500_banks, align 8
  %16 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %4, align 8
  %17 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @vt8500_banks, align 8
  %19 = call i8* @ARRAY_SIZE(i8* %18)
  %20 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %4, align 8
  %21 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @vt8500_pins, align 8
  %23 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %4, align 8
  %24 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @vt8500_pins, align 8
  %26 = call i8* @ARRAY_SIZE(i8* %25)
  %27 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %4, align 8
  %28 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @vt8500_groups, align 8
  %30 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %4, align 8
  %31 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @vt8500_groups, align 8
  %33 = call i8* @ARRAY_SIZE(i8* %32)
  %34 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %4, align 8
  %35 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %4, align 8
  %38 = call i32 @wmt_pinctrl_probe(%struct.platform_device* %36, %struct.wmt_pinctrl_data* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %14, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.wmt_pinctrl_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @wmt_pinctrl_probe(%struct.platform_device*, %struct.wmt_pinctrl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
