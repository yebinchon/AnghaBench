; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@PCMMIO_AO_2ND_DAC_OFFSET = common dso_local global i64 0, align 8
@PCMMIO_AO_LSB_REG = common dso_local global i64 0, align 8
@PCMMIO_AO_MSB_REG = common dso_local global i64 0, align 8
@PCMMIO_AO_CMD_WR_SPAN_UPDATE = common dso_local global i8 0, align 1
@PCMMIO_AO_CMD_REG = common dso_local global i64 0, align 8
@pcmmio_ao_eoc = common dso_local global i32 0, align 4
@PCMMIO_AO_CMD_WR_CODE_UPDATE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pcmmio_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmmio_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_CHAN(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_RANGE(i32 %26)
  store i32 %27, i32* %12, align 4
  store i8 0, i8* %13, align 1
  %28 = load i32, i32* %11, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = sub i32 %31, 4
  %33 = call zeroext i8 @PCMMIO_AO_CMD_CHAN_SEL(i32 %32)
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %13, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %13, align 1
  %39 = load i64, i64* @PCMMIO_AO_2ND_DAC_OFFSET, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %10, align 8
  br label %50

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = call zeroext i8 @PCMMIO_AO_CMD_CHAN_SEL(i32 %43)
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %13, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %13, align 1
  br label %50

50:                                               ; preds = %42, %30
  %51 = load i32, i32* %12, align 4
  %52 = call zeroext i8 @PCMMIO_AO_LSB_SPAN(i32 %51)
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @PCMMIO_AO_LSB_REG, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @outb(i8 zeroext %52, i64 %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @PCMMIO_AO_MSB_REG, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @outb(i8 zeroext 0, i64 %59)
  %61 = load i8, i8* %13, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @PCMMIO_AO_CMD_WR_SPAN_UPDATE, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = trunc i32 %65 to i8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @PCMMIO_AO_CMD_REG, align 8
  %69 = add i64 %67, %68
  %70 = call i32 @outb(i8 zeroext %66, i64 %69)
  %71 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %73 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %74 = load i32, i32* @pcmmio_ao_eoc, align 4
  %75 = call i32 @comedi_timeout(%struct.comedi_device* %71, %struct.comedi_subdevice* %72, %struct.comedi_insn* %73, i32 %74, i32 0)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %50
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  br label %142

80:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %135, %80
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %84 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %138

87:                                               ; preds = %81
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = and i32 %93, 255
  %95 = trunc i32 %94 to i8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @PCMMIO_AO_LSB_REG, align 8
  %98 = add i64 %96, %97
  %99 = call i32 @outb(i8 zeroext %95, i64 %98)
  %100 = load i32, i32* %16, align 4
  %101 = lshr i32 %100, 8
  %102 = and i32 %101, 255
  %103 = trunc i32 %102 to i8
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @PCMMIO_AO_MSB_REG, align 8
  %106 = add i64 %104, %105
  %107 = call i32 @outb(i8 zeroext %103, i64 %106)
  %108 = load i8, i8* %13, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* @PCMMIO_AO_CMD_WR_CODE_UPDATE, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %109, %111
  %113 = trunc i32 %112 to i8
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* @PCMMIO_AO_CMD_REG, align 8
  %116 = add i64 %114, %115
  %117 = call i32 @outb(i8 zeroext %113, i64 %116)
  %118 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %120 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %121 = load i32, i32* @pcmmio_ao_eoc, align 4
  %122 = call i32 @comedi_timeout(%struct.comedi_device* %118, %struct.comedi_subdevice* %119, %struct.comedi_insn* %120, i32 %121, i32 0)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %87
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %5, align 4
  br label %142

127:                                              ; preds = %87
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %81

138:                                              ; preds = %81
  %139 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %140 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %138, %125, %78
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local zeroext i8 @PCMMIO_AO_CMD_CHAN_SEL(i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @PCMMIO_AO_LSB_SPAN(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
