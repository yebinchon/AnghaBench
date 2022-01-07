; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidda_private* }
%struct.cb_pcidda_private = type { i64 }

@SELECT_EEPROM_BIT = common dso_local global i32 0, align 4
@DESELECT_REF_DAC_BIT = common dso_local global i32 0, align 4
@DUMMY_BIT = common dso_local global i32 0, align 4
@DACALIBRATION2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @cb_pcidda_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidda_read_eeprom(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cb_pcidda_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %14, align 8
  store %struct.cb_pcidda_private* %15, %struct.cb_pcidda_private** %5, align 8
  store i32 4, i32* %9, align 4
  store i32 6, i32* %10, align 4
  store i32 3, i32* %11, align 4
  store i32 8, i32* %12, align 4
  %16 = load i32, i32* @SELECT_EEPROM_BIT, align 4
  %17 = load i32, i32* @DESELECT_REF_DAC_BIT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DUMMY_BIT, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %29, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DESELECT_CALDAC_BIT(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %21

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %5, align 8
  %35 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DACALIBRATION2, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outw_p(i32 %33, i64 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = call i32 @cb_pcidda_serial_out(%struct.comedi_device* %40, i32 6, i32 3)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @cb_pcidda_serial_out(%struct.comedi_device* %42, i32 %43, i32 8)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = call i32 @cb_pcidda_serial_in(%struct.comedi_device* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @SELECT_EEPROM_BIT, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %5, align 8
  %53 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DACALIBRATION2, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw_p(i32 %51, i64 %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @DESELECT_CALDAC_BIT(i32) #1

declare dso_local i32 @outw_p(i32, i64) #1

declare dso_local i32 @cb_pcidda_serial_out(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @cb_pcidda_serial_in(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
