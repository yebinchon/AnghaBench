; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_mtu3_gadget_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_gadget.c_mtu3_gadget_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32* }

@mtu3_gadget_ops = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@MTU3_DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to register udc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtu3_gadget_setup(%struct.mtu3* %0) #0 {
  %2 = alloca %struct.mtu3*, align 8
  %3 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %2, align 8
  %4 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %5 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  store i32* @mtu3_gadget_ops, i32** %6, align 8
  %7 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %8 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %11 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %14 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %15 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %18 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @MTU3_DRIVER_NAME, align 4
  %21 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %22 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %25 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %27 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %29 = call i32 @mtu3_gadget_init_eps(%struct.mtu3* %28)
  %30 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %31 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %34 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %33, i32 0, i32 2
  %35 = call i32 @usb_add_gadget_udc(i32 %32, %struct.TYPE_2__* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %40 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %1
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mtu3_gadget_init_eps(%struct.mtu3*) #1

declare dso_local i32 @usb_add_gadget_udc(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
