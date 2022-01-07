; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_jz4740.c_jz4740_musb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_jz4740.c_jz4740_musb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No transceiver configured\0A\00", align 1
@jz4740_musb_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @jz4740_musb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_musb_init(%struct.musb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.musb* %0, %struct.musb** %3, align 8
  %5 = load %struct.musb*, %struct.musb** %3, align 8
  %6 = getelementptr inbounds %struct.musb, %struct.musb* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @devm_usb_get_phy_by_phandle(%struct.device* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %17 = load %struct.musb*, %struct.musb** %3, align 8
  %18 = getelementptr inbounds %struct.musb, %struct.musb* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %22 = call i32 @devm_usb_get_phy(%struct.device* %20, i32 %21)
  %23 = load %struct.musb*, %struct.musb** %3, align 8
  %24 = getelementptr inbounds %struct.musb, %struct.musb* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.musb*, %struct.musb** %3, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.musb*, %struct.musb** %3, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %25
  %39 = load %struct.musb*, %struct.musb** %3, align 8
  %40 = getelementptr inbounds %struct.musb, %struct.musb* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* @jz4740_musb_interrupt, align 4
  %42 = load %struct.musb*, %struct.musb** %3, align 8
  %43 = getelementptr inbounds %struct.musb, %struct.musb* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %38, %31
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @devm_usb_get_phy_by_phandle(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_usb_get_phy(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
