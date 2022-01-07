; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_create_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_create_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pin_group = type { i32, i32*, i32 }
%struct.device = type { i32 }
%struct.samsung_pinctrl_drv_data = type { %struct.pinctrl_desc }
%struct.pinctrl_desc = type { i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.samsung_pin_group* (%struct.device*, %struct.samsung_pinctrl_drv_data*, i32*)* @samsung_pinctrl_create_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.samsung_pin_group* @samsung_pinctrl_create_groups(%struct.device* %0, %struct.samsung_pinctrl_drv_data* %1, i32* %2) #0 {
  %4 = alloca %struct.samsung_pin_group*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pinctrl_desc*, align 8
  %9 = alloca %struct.samsung_pin_group*, align 8
  %10 = alloca %struct.samsung_pin_group*, align 8
  %11 = alloca %struct.pinctrl_pin_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.samsung_pinctrl_drv_data* %1, %struct.samsung_pinctrl_drv_data** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %6, align 8
  %14 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %13, i32 0, i32 0
  store %struct.pinctrl_desc* %14, %struct.pinctrl_desc** %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %17 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.samsung_pin_group* @devm_kcalloc(%struct.device* %15, i32 %18, i32 24, i32 %19)
  store %struct.samsung_pin_group* %20, %struct.samsung_pin_group** %9, align 8
  %21 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %9, align 8
  %22 = icmp ne %struct.samsung_pin_group* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.samsung_pin_group* @ERR_PTR(i32 %25)
  store %struct.samsung_pin_group* %26, %struct.samsung_pin_group** %4, align 8
  br label %63

27:                                               ; preds = %3
  %28 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %9, align 8
  store %struct.samsung_pin_group* %28, %struct.samsung_pin_group** %10, align 8
  %29 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %30 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %29, i32 0, i32 1
  %31 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %30, align 8
  store %struct.pinctrl_pin_desc* %31, %struct.pinctrl_pin_desc** %11, align 8
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %50, %27
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %35 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %11, align 8
  %40 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %10, align 8
  %43 = getelementptr inbounds %struct.samsung_pin_group, %struct.samsung_pin_group* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %11, align 8
  %45 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %44, i32 0, i32 0
  %46 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %10, align 8
  %47 = getelementptr inbounds %struct.samsung_pin_group, %struct.samsung_pin_group* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %10, align 8
  %49 = getelementptr inbounds %struct.samsung_pin_group, %struct.samsung_pin_group* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %11, align 8
  %54 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %53, i32 1
  store %struct.pinctrl_pin_desc* %54, %struct.pinctrl_pin_desc** %11, align 8
  %55 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %10, align 8
  %56 = getelementptr inbounds %struct.samsung_pin_group, %struct.samsung_pin_group* %55, i32 1
  store %struct.samsung_pin_group* %56, %struct.samsung_pin_group** %10, align 8
  br label %32

57:                                               ; preds = %32
  %58 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %59 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %9, align 8
  store %struct.samsung_pin_group* %62, %struct.samsung_pin_group** %4, align 8
  br label %63

63:                                               ; preds = %57, %23
  %64 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %4, align 8
  ret %struct.samsung_pin_group* %64
}

declare dso_local %struct.samsung_pin_group* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.samsung_pin_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
