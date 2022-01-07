; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3501.c_apci3501_eeprom_get_ao_n_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3501.c_apci3501_eeprom_get_ao_n_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci3501_private* }
%struct.apci3501_private = type { i32 }

@EEPROM_ANALOGOUTPUT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @apci3501_eeprom_get_ao_n_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3501_eeprom_get_ao_n_chan(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.apci3501_private*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.apci3501_private*, %struct.apci3501_private** %12, align 8
  store %struct.apci3501_private* %13, %struct.apci3501_private** %4, align 8
  %14 = load %struct.apci3501_private*, %struct.apci3501_private** %4, align 8
  %15 = getelementptr inbounds %struct.apci3501_private, %struct.apci3501_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @apci3501_eeprom_readw(i32 %16, i16 zeroext 10)
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %68, %1
  %21 = load i32, i32* %6, align 4
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 4
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %7, align 2
  %29 = load %struct.apci3501_private*, %struct.apci3501_private** %4, align 8
  %30 = getelementptr inbounds %struct.apci3501_private, %struct.apci3501_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i32
  %34 = add nsw i32 12, %33
  %35 = trunc i32 %34 to i16
  %36 = call i32 @apci3501_eeprom_readw(i32 %31, i16 zeroext %35)
  %37 = and i32 %36, 63
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  %39 = load %struct.apci3501_private*, %struct.apci3501_private** %4, align 8
  %40 = getelementptr inbounds %struct.apci3501_private, %struct.apci3501_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i16, i16* %7, align 2
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 14, %43
  %45 = trunc i32 %44 to i16
  %46 = call i32 @apci3501_eeprom_readw(i32 %41, i16 zeroext %45)
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %8, align 2
  %48 = load i8, i8* %9, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @EEPROM_ANALOGOUTPUT, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %25
  %54 = load %struct.apci3501_private*, %struct.apci3501_private** %4, align 8
  %55 = getelementptr inbounds %struct.apci3501_private, %struct.apci3501_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i16, i16* %8, align 2
  %58 = zext i16 %57 to i32
  %59 = add nsw i32 %58, 10
  %60 = trunc i32 %59 to i16
  %61 = call i32 @apci3501_eeprom_readw(i32 %56, i16 zeroext %60)
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %10, align 2
  %63 = load i16, i16* %10, align 2
  %64 = zext i16 %63 to i32
  %65 = ashr i32 %64, 4
  %66 = and i32 %65, 1023
  store i32 %66, i32* %2, align 4
  br label %72

67:                                               ; preds = %25
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %20

71:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @apci3501_eeprom_readw(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
