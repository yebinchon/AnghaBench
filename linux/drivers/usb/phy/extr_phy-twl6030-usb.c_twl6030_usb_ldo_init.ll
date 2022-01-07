; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_usb_ldo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-twl6030-usb.c_twl6030_usb_ldo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6030_usb = type { i32, i32 }

@TWL6030_MODULE_ID0 = common dso_local global i32 0, align 4
@TWL6030_BACKUP_REG = common dso_local global i32 0, align 4
@TWL6030_CFG_LDO_PD2 = common dso_local global i32 0, align 4
@TWL6030_MISC2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TWL_MODULE_USB = common dso_local global i32 0, align 4
@USB_VBUS_CTRL_SET = common dso_local global i32 0, align 4
@USB_ID_CTRL_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl6030_usb*)* @twl6030_usb_ldo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_usb_ldo_init(%struct.twl6030_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl6030_usb*, align 8
  store %struct.twl6030_usb* %0, %struct.twl6030_usb** %3, align 8
  %4 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %5 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %6 = load i32, i32* @TWL6030_BACKUP_REG, align 4
  %7 = call i32 @twl6030_writeb(%struct.twl6030_usb* %4, i32 %5, i32 1, i32 %6)
  %8 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %9 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %10 = load i32, i32* @TWL6030_CFG_LDO_PD2, align 4
  %11 = call i32 @twl6030_writeb(%struct.twl6030_usb* %8, i32 %9, i32 1, i32 %10)
  %12 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %13 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %14 = load i32, i32* @TWL6030_MISC2, align 4
  %15 = call i32 @twl6030_writeb(%struct.twl6030_usb* %12, i32 %13, i32 16, i32 %14)
  %16 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %17 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regulator_get(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %21 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %23 = getelementptr inbounds %struct.twl6030_usb, %struct.twl6030_usb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %32 = load i32, i32* @TWL_MODULE_USB, align 4
  %33 = load i32, i32* @USB_VBUS_CTRL_SET, align 4
  %34 = call i32 @twl6030_writeb(%struct.twl6030_usb* %31, i32 %32, i32 4, i32 %33)
  %35 = load %struct.twl6030_usb*, %struct.twl6030_usb** %3, align 8
  %36 = load i32, i32* @TWL_MODULE_USB, align 4
  %37 = load i32, i32* @USB_ID_CTRL_SET, align 4
  %38 = call i32 @twl6030_writeb(%struct.twl6030_usb* %35, i32 %36, i32 20, i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @twl6030_writeb(%struct.twl6030_usb*, i32, i32, i32) #1

declare dso_local i32 @regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
