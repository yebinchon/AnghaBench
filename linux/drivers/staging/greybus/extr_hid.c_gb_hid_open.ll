; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.gb_hid* }
%struct.gb_hid = type { i32 }

@GB_HID_TYPE_PWR_ON = common dso_local global i32 0, align 4
@GB_HID_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @gb_hid_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_hid_open(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.gb_hid*, align 8
  %5 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 0
  %8 = load %struct.gb_hid*, %struct.gb_hid** %7, align 8
  store %struct.gb_hid* %8, %struct.gb_hid** %4, align 8
  %9 = load %struct.gb_hid*, %struct.gb_hid** %4, align 8
  %10 = load i32, i32* @GB_HID_TYPE_PWR_ON, align 4
  %11 = call i32 @gb_hid_set_power(%struct.gb_hid* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @GB_HID_STARTED, align 4
  %18 = load %struct.gb_hid*, %struct.gb_hid** %4, align 8
  %19 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @gb_hid_set_power(%struct.gb_hid*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
