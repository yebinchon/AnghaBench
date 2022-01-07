; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbin_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbin_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32 }
%union.hfa384x_usbin = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlandevice*, %union.hfa384x_usbin*)* @hfa384x_usbin_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfa384x_usbin_info(%struct.wlandevice* %0, %union.hfa384x_usbin* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %union.hfa384x_usbin*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %union.hfa384x_usbin* %1, %union.hfa384x_usbin** %4, align 8
  %5 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %4, align 8
  %6 = bitcast %union.hfa384x_usbin* %5 to %struct.TYPE_3__*
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @le16_to_cpus(i32* %8)
  %10 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %11 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %4, align 8
  %12 = bitcast %union.hfa384x_usbin* %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @prism2sta_ev_info(%struct.wlandevice* %10, %struct.TYPE_4__* %13)
  ret void
}

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @prism2sta_ev_info(%struct.wlandevice*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
