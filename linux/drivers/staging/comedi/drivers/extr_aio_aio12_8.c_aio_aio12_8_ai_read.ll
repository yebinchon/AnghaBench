; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_aio_aio12_8.c_aio_aio12_8_ai_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_aio_aio12_8.c_aio_aio12_8_ai_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@AIO12_8_ADC_MODE_NORMAL = common dso_local global i8 0, align 1
@AIO12_8_ADC_ACQ_3USEC = common dso_local global i8 0, align 1
@AIO12_8_STATUS_REG = common dso_local global i64 0, align 8
@AIO12_8_ADC_REG = common dso_local global i64 0, align 8
@aio_aio12_8_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @aio_aio12_8_ai_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_aio12_8_ai_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_RANGE(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i8, i8* @AIO12_8_ADC_MODE_NORMAL, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @AIO12_8_ADC_ACQ_3USEC, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = load i32, i32* %11, align 4
  %30 = call zeroext i8 @AIO12_8_ADC_RANGE(i32 %29)
  %31 = zext i8 %30 to i32
  %32 = or i32 %28, %31
  %33 = load i32, i32* %10, align 4
  %34 = call zeroext i8 @AIO12_8_ADC_CHAN(i32 %33)
  %35 = zext i8 %34 to i32
  %36 = or i32 %32, %35
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %13, align 1
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AIO12_8_STATUS_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inb(i64 %42)
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %92, %4
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %47 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %44
  %51 = load i8, i8* %13, align 1
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AIO12_8_ADC_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i8 zeroext %51, i64 %56)
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %61 = load i32, i32* @aio_aio12_8_ai_eoc, align 4
  %62 = call i32 @comedi_timeout(%struct.comedi_device* %58, %struct.comedi_subdevice* %59, %struct.comedi_insn* %60, i32 %61, i32 0)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %5, align 4
  br label %99

67:                                               ; preds = %50
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AIO12_8_ADC_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @inw(i64 %72)
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %73, %76
  store i32 %77, i32* %12, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %67
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %82, %67
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %44

95:                                               ; preds = %44
  %96 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %97 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %65
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local zeroext i8 @AIO12_8_ADC_RANGE(i32) #1

declare dso_local zeroext i8 @AIO12_8_ADC_CHAN(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
