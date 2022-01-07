; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.gb_hid* }
%struct.gb_hid = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GB_HID_STARTED = common dso_local global i32 0, align 4
@GB_HID_TYPE_PWR_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to power off (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @gb_hid_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_hid_close(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.gb_hid*, align 8
  %4 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 0
  %7 = load %struct.gb_hid*, %struct.gb_hid** %6, align 8
  store %struct.gb_hid* %7, %struct.gb_hid** %3, align 8
  %8 = load i32, i32* @GB_HID_STARTED, align 4
  %9 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %10 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %9, i32 0, i32 1
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %13 = load i32, i32* @GB_HID_TYPE_PWR_OFF, align 4
  %14 = call i32 @gb_hid_set_power(%struct.gb_hid* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %19 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gb_hid_set_power(%struct.gb_hid*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
