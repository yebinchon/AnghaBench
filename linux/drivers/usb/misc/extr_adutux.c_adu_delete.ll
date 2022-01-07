; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_adutux.c_adu_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_adutux.c_adu_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adu_device = type { i32, %struct.adu_device*, %struct.adu_device*, %struct.adu_device*, %struct.adu_device*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adu_device*)* @adu_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adu_delete(%struct.adu_device* %0) #0 {
  %2 = alloca %struct.adu_device*, align 8
  store %struct.adu_device* %0, %struct.adu_device** %2, align 8
  %3 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %4 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @usb_free_urb(i32 %5)
  %7 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %8 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @usb_free_urb(i32 %9)
  %11 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %12 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %11, i32 0, i32 4
  %13 = load %struct.adu_device*, %struct.adu_device** %12, align 8
  %14 = call i32 @kfree(%struct.adu_device* %13)
  %15 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %16 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %15, i32 0, i32 3
  %17 = load %struct.adu_device*, %struct.adu_device** %16, align 8
  %18 = call i32 @kfree(%struct.adu_device* %17)
  %19 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %20 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %19, i32 0, i32 2
  %21 = load %struct.adu_device*, %struct.adu_device** %20, align 8
  %22 = call i32 @kfree(%struct.adu_device* %21)
  %23 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %24 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %23, i32 0, i32 1
  %25 = load %struct.adu_device*, %struct.adu_device** %24, align 8
  %26 = call i32 @kfree(%struct.adu_device* %25)
  %27 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %28 = getelementptr inbounds %struct.adu_device, %struct.adu_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usb_put_dev(i32 %29)
  %31 = load %struct.adu_device*, %struct.adu_device** %2, align 8
  %32 = call i32 @kfree(%struct.adu_device* %31)
  ret void
}

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.adu_device*) #1

declare dso_local i32 @usb_put_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
