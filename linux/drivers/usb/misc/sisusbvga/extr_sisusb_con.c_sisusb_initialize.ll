; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusb_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@SISCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sisusb_usb_data*)* @sisusb_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusb_initialize(%struct.sisusb_usb_data* %0) #0 {
  %2 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %2, align 8
  %3 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %4 = load i32, i32* @SISCR, align 4
  %5 = call i64 @sisusb_setidxreg(%struct.sisusb_usb_data* %3, i32 %4, i32 12, i32 0)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %10 = load i32, i32* @SISCR, align 4
  %11 = call i64 @sisusb_setidxreg(%struct.sisusb_usb_data* %9, i32 %10, i32 13, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %24

14:                                               ; preds = %8
  %15 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %16 = load i32, i32* @SISCR, align 4
  %17 = call i64 @sisusb_setidxreg(%struct.sisusb_usb_data* %15, i32 %16, i32 14, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  %21 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %22 = load i32, i32* @SISCR, align 4
  %23 = call i64 @sisusb_setidxreg(%struct.sisusb_usb_data* %21, i32 %22, i32 15, i32 0)
  br label %24

24:                                               ; preds = %20, %19, %13, %7
  ret void
}

declare dso_local i64 @sisusb_setidxreg(%struct.sisusb_usb_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
