; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_stub_device_cleanup_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_stub_device_cleanup_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.stub_priv = type { i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"Stub device cleaning up urbs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stub_device_cleanup_urbs(%struct.stub_device* %0) #0 {
  %2 = alloca %struct.stub_device*, align 8
  %3 = alloca %struct.stub_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.stub_device* %0, %struct.stub_device** %2, align 8
  %5 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  %6 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %33, %1
  %11 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  %12 = call %struct.stub_priv* @stub_priv_pop(%struct.stub_device* %11)
  store %struct.stub_priv* %12, %struct.stub_priv** %3, align 8
  %13 = icmp ne %struct.stub_priv* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.stub_priv*, %struct.stub_priv** %3, align 8
  %18 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.stub_priv*, %struct.stub_priv** %3, align 8
  %23 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_kill_urb(i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.stub_priv*, %struct.stub_priv** %3, align 8
  %35 = call i32 @stub_free_priv_and_urb(%struct.stub_priv* %34)
  br label %10

36:                                               ; preds = %10
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.stub_priv* @stub_priv_pop(%struct.stub_device*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @stub_free_priv_and_urb(%struct.stub_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
