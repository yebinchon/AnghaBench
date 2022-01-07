; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_handle_dn_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_handle_dn_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.wusb_dev = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"ignoring DN DISCONNECT from unconnected device %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"DN DISCONNECT: device 0x%02x going down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*, i32)* @wusbhc_handle_dn_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wusbhc_handle_dn_disconnect(%struct.wusbhc* %0, i32 %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %8 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %11 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.wusb_dev* @wusbhc_find_dev_by_addr(%struct.wusbhc* %13, i32 %14)
  store %struct.wusb_dev* %15, %struct.wusb_dev** %6, align 8
  %16 = load %struct.wusb_dev*, %struct.wusb_dev** %6, align 8
  %17 = icmp eq %struct.wusb_dev* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.wusb_dev*, %struct.wusb_dev** %6, align 8
  %25 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(%struct.device* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %29 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %30 = load %struct.wusb_dev*, %struct.wusb_dev** %6, align 8
  %31 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wusb_port_by_idx(%struct.wusbhc* %29, i32 %32)
  %34 = call i32 @__wusbhc_dev_disconnect(%struct.wusbhc* %28, i32 %33)
  br label %35

35:                                               ; preds = %22, %18
  %36 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %37 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wusb_dev* @wusbhc_find_dev_by_addr(%struct.wusbhc*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @__wusbhc_dev_disconnect(%struct.wusbhc*, i32) #1

declare dso_local i32 @wusb_port_by_idx(%struct.wusbhc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
