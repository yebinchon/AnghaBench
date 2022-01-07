; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-omap.c_dwc3_omap_set_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-omap.c_dwc3_omap_set_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_omap = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"regulator enable failed\0A\00", align 1
@USBOTGSS_UTMI_OTG_CTRL_IDDIG = common dso_local global i32 0, align 4
@USBOTGSS_UTMI_OTG_CTRL_SESSEND = common dso_local global i32 0, align 4
@USBOTGSS_UTMI_OTG_CTRL_VBUSVALID = common dso_local global i32 0, align 4
@USBOTGSS_UTMI_OTG_CTRL_SESSVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_omap*, i32)* @dwc3_omap_set_mailbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_omap_set_mailbox(%struct.dwc3_omap* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc3_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc3_omap* %0, %struct.dwc3_omap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %85 [
    i32 130, label %8
    i32 128, label %36
    i32 131, label %51
    i32 129, label %70
  ]

8:                                                ; preds = %2
  %9 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %10 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %15 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regulator_enable(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %90

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %8
  %27 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %28 = call i32 @dwc3_omap_read_utmi_ctrl(%struct.dwc3_omap* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @USBOTGSS_UTMI_OTG_CTRL_IDDIG, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dwc3_omap_write_utmi_ctrl(%struct.dwc3_omap* %33, i32 %34)
  br label %90

36:                                               ; preds = %2
  %37 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %38 = call i32 @dwc3_omap_read_utmi_ctrl(%struct.dwc3_omap* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @USBOTGSS_UTMI_OTG_CTRL_SESSEND, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @USBOTGSS_UTMI_OTG_CTRL_VBUSVALID, align 4
  %44 = load i32, i32* @USBOTGSS_UTMI_OTG_CTRL_SESSVALID, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dwc3_omap_write_utmi_ctrl(%struct.dwc3_omap* %48, i32 %49)
  br label %90

51:                                               ; preds = %2
  %52 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %53 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %58 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regulator_disable(i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %63 = call i32 @dwc3_omap_read_utmi_ctrl(%struct.dwc3_omap* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @USBOTGSS_UTMI_OTG_CTRL_IDDIG, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dwc3_omap_write_utmi_ctrl(%struct.dwc3_omap* %67, i32 %68)
  br label %90

70:                                               ; preds = %2
  %71 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %72 = call i32 @dwc3_omap_read_utmi_ctrl(%struct.dwc3_omap* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @USBOTGSS_UTMI_OTG_CTRL_SESSVALID, align 4
  %74 = load i32, i32* @USBOTGSS_UTMI_OTG_CTRL_VBUSVALID, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @USBOTGSS_UTMI_OTG_CTRL_SESSEND, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @dwc3_omap_write_utmi_ctrl(%struct.dwc3_omap* %82, i32 %83)
  br label %90

85:                                               ; preds = %2
  %86 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %87 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_WARN(i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %20, %85, %70, %61, %36, %26
  ret void
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dwc3_omap_read_utmi_ctrl(%struct.dwc3_omap*) #1

declare dso_local i32 @dwc3_omap_write_utmi_ctrl(%struct.dwc3_omap*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
