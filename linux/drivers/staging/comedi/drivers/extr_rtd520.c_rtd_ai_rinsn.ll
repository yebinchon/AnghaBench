; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.rtd_private* }
%struct.rtd_private = type { i64 }
%struct.comedi_subdevice = type { i16 }
%struct.comedi_insn = type { i32, i32 }

@LAS0_ADC_FIFO_CLEAR = common dso_local global i64 0, align 8
@LAS0_ADC_CONVERSION = common dso_local global i64 0, align 8
@LAS0_ADC = common dso_local global i64 0, align 8
@rtd_ai_eoc = common dso_local global i32 0, align 4
@LAS1_ADC_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rtd_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rtd_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.rtd_private*, %struct.rtd_private** %16, align 8
  store %struct.rtd_private* %17, %struct.rtd_private** %10, align 8
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CR_RANGE(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LAS0_ADC_FIFO_CLEAR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 0, i64 %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 1
  %31 = call i32 @rtd_load_channelgain_list(%struct.comedi_device* %28, i32 1, i32* %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LAS0_ADC_CONVERSION, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %91, %4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %41 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %94

44:                                               ; preds = %38
  %45 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LAS0_ADC, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writew(i32 0, i64 %49)
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %53 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %54 = load i32, i32* @rtd_ai_eoc, align 4
  %55 = call i32 @comedi_timeout(%struct.comedi_device* %51, %struct.comedi_subdevice* %52, %struct.comedi_insn* %53, i32 %54, i32 0)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %96

60:                                               ; preds = %44
  %61 = load %struct.rtd_private*, %struct.rtd_private** %10, align 8
  %62 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LAS1_ADC_FIFO, align 8
  %65 = add nsw i64 %63, %64
  %66 = call zeroext i16 @readw(i64 %65)
  store i16 %66, i16* %14, align 2
  %67 = load i16, i16* %14, align 2
  %68 = zext i16 %67 to i32
  %69 = ashr i32 %68, 3
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %14, align 2
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %60
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %77 = load i16, i16* %14, align 2
  %78 = call zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice* %76, i16 zeroext %77)
  store i16 %78, i16* %14, align 2
  br label %79

79:                                               ; preds = %75, %60
  %80 = load i16, i16* %14, align 2
  %81 = zext i16 %80 to i32
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 0
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = and i32 %81, %85
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %38

94:                                               ; preds = %38
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %58
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @rtd_load_channelgain_list(%struct.comedi_device*, i32, i32*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
