; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_vbus_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_vbus_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_charger_ddata = type { i32, %struct.iio_channel** }
%struct.iio_channel = type { i32 }

@CPCAP_CHARGER_IIO_VBUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"error reading VBUS: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_charger_ddata*)* @cpcap_charger_vbus_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_charger_vbus_valid(%struct.cpcap_charger_ddata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpcap_charger_ddata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_channel*, align 8
  store %struct.cpcap_charger_ddata* %0, %struct.cpcap_charger_ddata** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %3, align 8
  %8 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %7, i32 0, i32 1
  %9 = load %struct.iio_channel**, %struct.iio_channel*** %8, align 8
  %10 = load i64, i64* @CPCAP_CHARGER_IIO_VBUS, align 8
  %11 = getelementptr inbounds %struct.iio_channel*, %struct.iio_channel** %9, i64 %10
  %12 = load %struct.iio_channel*, %struct.iio_channel** %11, align 8
  store %struct.iio_channel* %12, %struct.iio_channel** %6, align 8
  %13 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %14 = call i32 @iio_read_channel_processed(%struct.iio_channel* %13, i32* %5)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 3900
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %3, align 8
  %24 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @iio_read_channel_processed(%struct.iio_channel*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
