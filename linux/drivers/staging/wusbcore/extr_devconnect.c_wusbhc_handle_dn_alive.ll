; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_handle_dn_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_handle_dn_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32 }
%struct.wusb_dev = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"ignoring DN_Alive from unconnected device %02x\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*, i32)* @wusbhc_handle_dn_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wusbhc_handle_dn_alive(%struct.wusbhc* %0, i32 %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.wusb_dev* @wusbhc_find_dev_by_addr(%struct.wusbhc* %9, i32 %10)
  store %struct.wusb_dev* %11, %struct.wusb_dev** %5, align 8
  %12 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %13 = icmp eq %struct.wusb_dev* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %16 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @jiffies, align 4
  %22 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %23 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %25 = call i32 @__wusbhc_keep_alive(%struct.wusbhc* %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %28 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wusb_dev* @wusbhc_find_dev_by_addr(%struct.wusbhc*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @__wusbhc_keep_alive(%struct.wusbhc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
