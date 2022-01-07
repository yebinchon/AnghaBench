; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_pinctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_pinctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ocelot_pinctrl = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Unable to create group func map.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ocelot_pinctrl*)* @ocelot_pinctrl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_pinctrl_register(%struct.platform_device* %0, %struct.ocelot_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ocelot_pinctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ocelot_pinctrl* %1, %struct.ocelot_pinctrl** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %10 = call i32 @ocelot_create_group_func_map(i32* %8, %struct.ocelot_pinctrl* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %22 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %25 = call i32 @devm_pinctrl_register(i32* %20, i32 %23, %struct.ocelot_pinctrl* %24)
  %26 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %27 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %29 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %38 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %33, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ocelot_create_group_func_map(i32*, %struct.ocelot_pinctrl*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, i32, %struct.ocelot_pinctrl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
