; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_rh.c_wusbhc_rh_port_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_rh.c_wusbhc_rh_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.wusb_port = type { i32, i32, %struct.wusb_dev* }
%struct.wusb_dev = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@USB_PORT_STAT_RESET = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_RESET = common dso_local global i32 0, align 4
@WUSB_DEV_ADDR_UNAUTH = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusbhc*, i32)* @wusbhc_rh_port_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusbhc_rh_port_reset(%struct.wusbhc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wusb_port*, align 8
  %8 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc* %9, i32 %10)
  store %struct.wusb_port* %11, %struct.wusb_port** %7, align 8
  %12 = load %struct.wusb_port*, %struct.wusb_port** %7, align 8
  %13 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %12, i32 0, i32 2
  %14 = load %struct.wusb_dev*, %struct.wusb_dev** %13, align 8
  store %struct.wusb_dev* %14, %struct.wusb_dev** %8, align 8
  %15 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %16 = icmp eq %struct.wusb_dev* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTCONN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %22 = load %struct.wusb_port*, %struct.wusb_port** %7, align 8
  %23 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @USB_PORT_STAT_C_RESET, align 4
  %27 = load %struct.wusb_port*, %struct.wusb_port** %7, align 8
  %28 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %32 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WUSB_DEV_ADDR_UNAUTH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %42

38:                                               ; preds = %20
  %39 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %40 = load %struct.wusb_dev*, %struct.wusb_dev** %8, align 8
  %41 = call i32 @wusb_dev_update_address(%struct.wusbhc* %39, %struct.wusb_dev* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.wusb_port*, %struct.wusb_port** %7, align 8
  %46 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %50 = load %struct.wusb_port*, %struct.wusb_port** %7, align 8
  %51 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @USB_PORT_STAT_C_RESET, align 4
  %55 = load i32, i32* @USB_PORT_STAT_C_ENABLE, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.wusb_port*, %struct.wusb_port** %7, align 8
  %58 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %42, %17
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc*, i32) #1

declare dso_local i32 @wusb_dev_update_address(%struct.wusbhc*, %struct.wusb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
