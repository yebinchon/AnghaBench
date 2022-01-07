; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_probe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_probe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { i32, %struct.TYPE_2__, %struct.device*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"No IRQ!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@net2272_ops = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net2272* (%struct.device*, i32)* @net2272_probe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net2272* @net2272_probe_init(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.net2272*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net2272*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.net2272* @ERR_PTR(i32 %13)
  store %struct.net2272* %14, %struct.net2272** %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.net2272* @kzalloc(i32 40, i32 %16)
  store %struct.net2272* %17, %struct.net2272** %6, align 8
  %18 = load %struct.net2272*, %struct.net2272** %6, align 8
  %19 = icmp ne %struct.net2272* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.net2272* @ERR_PTR(i32 %22)
  store %struct.net2272* %23, %struct.net2272** %3, align 8
  br label %46

24:                                               ; preds = %15
  %25 = load %struct.net2272*, %struct.net2272** %6, align 8
  %26 = getelementptr inbounds %struct.net2272, %struct.net2272* %25, i32 0, i32 3
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.net2272*, %struct.net2272** %6, align 8
  %30 = getelementptr inbounds %struct.net2272, %struct.net2272* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.net2272*, %struct.net2272** %6, align 8
  %33 = getelementptr inbounds %struct.net2272, %struct.net2272* %32, i32 0, i32 2
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.net2272*, %struct.net2272** %6, align 8
  %35 = getelementptr inbounds %struct.net2272, %struct.net2272* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32* @net2272_ops, i32** %36, align 8
  %37 = load i32, i32* @USB_SPEED_HIGH, align 4
  %38 = load %struct.net2272*, %struct.net2272** %6, align 8
  %39 = getelementptr inbounds %struct.net2272, %struct.net2272* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @driver_name, align 4
  %42 = load %struct.net2272*, %struct.net2272** %6, align 8
  %43 = getelementptr inbounds %struct.net2272, %struct.net2272* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.net2272*, %struct.net2272** %6, align 8
  store %struct.net2272* %45, %struct.net2272** %3, align 8
  br label %46

46:                                               ; preds = %24, %20, %9
  %47 = load %struct.net2272*, %struct.net2272** %3, align 8
  ret %struct.net2272* %47
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.net2272* @ERR_PTR(i32) #1

declare dso_local %struct.net2272* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
