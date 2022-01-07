; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_da8xx.c_da8xx_musb_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_da8xx.c_da8xx_musb_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.da8xx_glue = type { i32 }

@PHY_MODE_USB_OTG = common dso_local global i32 0, align 4
@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*, i32)* @da8xx_musb_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_musb_set_mode(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.musb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da8xx_glue*, align 8
  %7 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.musb*, %struct.musb** %4, align 8
  %9 = getelementptr inbounds %struct.musb, %struct.musb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.da8xx_glue* @dev_get_drvdata(i32 %12)
  store %struct.da8xx_glue* %13, %struct.da8xx_glue** %6, align 8
  %14 = load %struct.musb*, %struct.musb** %4, align 8
  %15 = getelementptr inbounds %struct.musb, %struct.musb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %20 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PHY_MODE_USB_OTG, align 4
  %23 = call i32 @phy_set_mode(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %32 [
    i32 130, label %26
    i32 128, label %28
    i32 129, label %30
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  store i32 %27, i32* %7, align 4
  br label %35

28:                                               ; preds = %24
  %29 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  store i32 %29, i32* %7, align 4
  br label %35

30:                                               ; preds = %24
  %31 = load i32, i32* @PHY_MODE_USB_OTG, align 4
  store i32 %31, i32* %7, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %30, %28, %26
  %36 = load %struct.da8xx_glue*, %struct.da8xx_glue** %6, align 8
  %37 = getelementptr inbounds %struct.da8xx_glue, %struct.da8xx_glue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @phy_set_mode(i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %32, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.da8xx_glue* @dev_get_drvdata(i32) #1

declare dso_local i32 @phy_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
