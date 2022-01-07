; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_get_sisusb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_get_sisusb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@mysisusbs = common dso_local global %struct.sisusb_usb_data** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sisusb_usb_data* (i16)* @sisusb_get_sisusb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sisusb_usb_data* @sisusb_get_sisusb(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load %struct.sisusb_usb_data**, %struct.sisusb_usb_data*** @mysisusbs, align 8
  %4 = load i16, i16* %2, align 2
  %5 = zext i16 %4 to i64
  %6 = getelementptr inbounds %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, i64 %5
  %7 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %6, align 8
  ret %struct.sisusb_usb_data* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
