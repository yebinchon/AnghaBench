; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1390.c_ds1390_trickle_of_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1390.c_ds1390_trickle_of_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"trickle-resistor-ohms\00", align 1
@DS1390_TRICKLE_CHARGER_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"trickle-diode-disable\00", align 1
@DS1390_TRICKLE_CHARGER_NO_DIODE = common dso_local global i32 0, align 4
@DS1390_TRICKLE_CHARGER_DIODE = common dso_local global i32 0, align 4
@DS1390_TRICKLE_CHARGER_250_OHM = common dso_local global i32 0, align 4
@DS1390_TRICKLE_CHARGER_2K_OHM = common dso_local global i32 0, align 4
@DS1390_TRICKLE_CHARGER_4K_OHM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unsupported ohm value %02ux in dt\0A\00", align 1
@DS1390_REG_TRICKLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @ds1390_trickle_of_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1390_trickle_of_init(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @of_property_read_u32(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load i32, i32* @DS1390_TRICKLE_CHARGER_ENABLE, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @of_property_read_bool(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @DS1390_TRICKLE_CHARGER_NO_DIODE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %12
  %25 = load i32, i32* @DS1390_TRICKLE_CHARGER_DIODE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %3, align 4
  switch i32 %29, label %42 [
    i32 250, label %30
    i32 2000, label %34
    i32 4000, label %38
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @DS1390_TRICKLE_CHARGER_250_OHM, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %28
  %35 = load i32, i32* @DS1390_TRICKLE_CHARGER_2K_OHM, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %28
  %39 = load i32, i32* @DS1390_TRICKLE_CHARGER_4K_OHM, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %28
  %43 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @dev_warn(%struct.TYPE_3__* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %54

47:                                               ; preds = %38, %34, %30
  %48 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load i32, i32* @DS1390_REG_TRICKLE, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ds1390_set_reg(%struct.TYPE_3__* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %11
  br label %54

54:                                               ; preds = %53, %42
  ret void
}

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @ds1390_set_reg(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
