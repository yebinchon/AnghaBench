; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_pxa25x_udc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_pxa25x_udc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxa25x_udc = type { i32*, i64, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@the_controller = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa25x_udc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa25x_udc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxa25x_udc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.pxa25x_udc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.pxa25x_udc* %6, %struct.pxa25x_udc** %4, align 8
  %7 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %8 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %16 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %15, i32 0, i32 2
  %17 = call i32 @usb_del_gadget_udc(i32* %16)
  %18 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %19 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %21 = call i32 @pullup(%struct.pxa25x_udc* %20)
  %22 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %23 = call i32 @remove_debug_files(%struct.pxa25x_udc* %22)
  %24 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %25 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @IS_ERR_OR_NULL(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %14
  %30 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %31 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %14
  store i32* null, i32** @the_controller, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.pxa25x_udc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @pullup(%struct.pxa25x_udc*) #1

declare dso_local i32 @remove_debug_files(%struct.pxa25x_udc*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
