; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ad8402_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ad8402_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64 }

@ad8402_write.bitstream_length = internal constant i32 10, align 4
@ad8402_write.ad8402_udelay = internal constant i32 1, align 4
@SELECT_8402_64XX_BIT = common dso_local global i32 0, align 4
@CALIBRATION_REG = common dso_local global i64 0, align 8
@SERIAL_DATA_IN_BIT = common dso_local global i32 0, align 4
@SERIAL_CLOCK_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @ad8402_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad8402_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcidas64_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.pcidas64_private*, %struct.pcidas64_private** %12, align 8
  store %struct.pcidas64_private* %13, %struct.pcidas64_private** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 3
  %16 = shl i32 %15, 8
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 255
  %19 = or i32 %16, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @SELECT_8402_64XX_BIT, align 4
  store i32 %20, i32* %9, align 4
  %21 = call i32 @udelay(i32 1)
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %24 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CALIBRATION_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writew(i32 %22, i64 %27)
  store i32 512, i32* %8, align 4
  br label %29

29:                                               ; preds = %65, %3
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @SERIAL_DATA_IN_BIT, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* @SERIAL_DATA_IN_BIT, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = call i32 @udelay(i32 1)
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %50 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CALIBRATION_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writew(i32 %48, i64 %53)
  %55 = call i32 @udelay(i32 1)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SERIAL_CLOCK_BIT, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %60 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CALIBRATION_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writew(i32 %58, i64 %63)
  br label %65

65:                                               ; preds = %46
  %66 = load i32, i32* %8, align 4
  %67 = lshr i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %29

68:                                               ; preds = %29
  %69 = call i32 @udelay(i32 1)
  %70 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %71 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CALIBRATION_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writew(i32 0, i64 %74)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
