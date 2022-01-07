; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_haddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_haddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i64, i32, i64 }
%struct.vc_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sisusb_usb_data*, %struct.vc_data*, i32, i32)* @sisusb_haddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sisusb_haddr(%struct.sisusb_usb_data* %0, %struct.vc_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %5, align 8
  store %struct.vc_data* %1, %struct.vc_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %14 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %19 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = mul i32 %17, %20
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %21, %22
  %24 = mul i32 2, %23
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %29 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %30, %31
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
