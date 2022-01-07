; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_mode_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_mode_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i64, i32, i64, i32 }

@USB_ROLE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*, i32, i32)* @usb3_mode_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_mode_config(%struct.renesas_usb3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.renesas_usb3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %9 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %13 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %18 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB_ROLE_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16, %3
  %23 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @usb3_set_mode_by_role_sw(%struct.renesas_usb3* %23, i32 %24)
  %26 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @usb3_vbus_out(%struct.renesas_usb3* %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %37 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %32
  %41 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %42 = call i32 @usb3_connect(%struct.renesas_usb3* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %45 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %44, i32 0, i32 1
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb3_set_mode_by_role_sw(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_vbus_out(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_connect(%struct.renesas_usb3*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
