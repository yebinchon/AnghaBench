; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c___wusbhc_dev_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c___wusbhc_dev_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i64, i32 }
%struct.wusb_port = type { i32, i32, %struct.wusb_dev* }
%struct.wusb_dev = type { i32, i32 }

@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@USB_PORT_STAT_RESET = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"disconnecting device from port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*, %struct.wusb_port*)* @__wusbhc_dev_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wusbhc_dev_disconnect(%struct.wusbhc* %0, %struct.wusb_port* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_port*, align 8
  %5 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wusb_port* %1, %struct.wusb_port** %4, align 8
  %6 = load %struct.wusb_port*, %struct.wusb_port** %4, align 8
  %7 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %6, i32 0, i32 2
  %8 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  store %struct.wusb_dev* %8, %struct.wusb_dev** %5, align 8
  %9 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %10 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.wusb_port*, %struct.wusb_port** %4, align 8
  %22 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %26 = load i32, i32* @USB_PORT_STAT_C_ENABLE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.wusb_port*, %struct.wusb_port** %4, align 8
  %29 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %33 = icmp ne %struct.wusb_dev* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %2
  %35 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %36 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %39 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %43 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %42, i32 0, i32 0
  %44 = call i32 @list_empty(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %34
  %47 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %48 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %47, i32 0, i32 0
  %49 = call i32 @list_del_init(i32* %48)
  br label %50

50:                                               ; preds = %46, %34
  %51 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %52 = call i32 @wusb_dev_put(%struct.wusb_dev* %51)
  br label %53

53:                                               ; preds = %50, %2
  %54 = load %struct.wusb_port*, %struct.wusb_port** %4, align 8
  %55 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %54, i32 0, i32 2
  store %struct.wusb_dev* null, %struct.wusb_dev** %55, align 8
  %56 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %57 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %62 = call i32 @wusbhc_gtk_rekey(%struct.wusbhc* %61)
  br label %63

63:                                               ; preds = %60, %53
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @wusb_dev_put(%struct.wusb_dev*) #1

declare dso_local i32 @wusbhc_gtk_rekey(%struct.wusbhc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
