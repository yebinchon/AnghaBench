; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_init_iio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_init_iio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_phy_ddata = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not initialize VBUS or ID IIO: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_phy_ddata*)* @cpcap_usb_init_iio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_usb_init_iio(%struct.cpcap_phy_ddata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpcap_phy_ddata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpcap_phy_ddata* %0, %struct.cpcap_phy_ddata** %3, align 8
  %6 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %7 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.TYPE_5__* @devm_iio_channel_get(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %11 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %10, i32 0, i32 1
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %11, align 8
  %12 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %13 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i64 @IS_ERR(%struct.TYPE_5__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %19 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @PTR_ERR(%struct.TYPE_5__* %20)
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %24 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %34 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @iio_get_channel_type(%struct.TYPE_5__* %35, i32* %4)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %48

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @IIO_VOLTAGE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %55

48:                                               ; preds = %44, %39, %29, %17
  %49 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %50 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %47
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_5__* @devm_iio_channel_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @iio_get_channel_type(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
