; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_check_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_check_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i64, i32, i32, i64, i32 }

@USB_ROLE_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_check_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_check_id(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %3 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %4 = call i64 @usb3_is_a_device(%struct.renesas_usb3* %3)
  %5 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %6 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %5, i32 0, i32 3
  store i64 %4, i64* %6, align 8
  %7 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %8 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %13 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %18 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16, %11, %1
  %22 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %23 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_ROLE_HOST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %16
  %28 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %29 = call i32 @usb3_mode_config(%struct.renesas_usb3* %28, i32 1, i32 1)
  br label %33

30:                                               ; preds = %21
  %31 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %32 = call i32 @usb3_mode_config(%struct.renesas_usb3* %31, i32 0, i32 0)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %35 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %34, i32 0, i32 1
  %36 = call i32 @schedule_work(i32* %35)
  ret void
}

declare dso_local i64 @usb3_is_a_device(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_mode_config(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
