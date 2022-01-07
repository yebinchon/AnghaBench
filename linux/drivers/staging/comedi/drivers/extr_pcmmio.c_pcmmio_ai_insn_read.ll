; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@PCMMIO_AI_2ND_ADC_OFFSET = common dso_local global i64 0, align 8
@AREF_GROUND = common dso_local global i32 0, align 4
@PCMMIO_AI_CMD_SE = common dso_local global i8 0, align 1
@PCMMIO_AI_CMD_ODD_CHAN = common dso_local global i8 0, align 1
@PCMMIO_AI_CMD_REG = common dso_local global i64 0, align 8
@pcmmio_ai_eoc = common dso_local global i32 0, align 4
@PCMMIO_AI_LSB_REG = common dso_local global i64 0, align 8
@PCMMIO_AI_MSB_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pcmmio_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmmio_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_CHAN(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_RANGE(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CR_AREF(i32 %31)
  store i32 %32, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %33 = load i32, i32* %11, align 4
  %34 = icmp ugt i32 %33, 7
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  %37 = sub i32 %36, 8
  store i32 %37, i32* %11, align 4
  %38 = load i64, i64* @PCMMIO_AI_2ND_ADC_OFFSET, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %35, %4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @AREF_GROUND, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8, i8* @PCMMIO_AI_CMD_SE, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %14, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %14, align 1
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i32, i32* %11, align 4
  %54 = urem i32 %53, 2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i8, i8* @PCMMIO_AI_CMD_ODD_CHAN, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %14, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %60, %58
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %14, align 1
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i32, i32* %11, align 4
  %65 = udiv i32 %64, 2
  %66 = call zeroext i8 @PCMMIO_AI_CMD_CHAN_SEL(i32 %65)
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %14, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %69, %67
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %14, align 1
  %72 = load i32, i32* %12, align 4
  %73 = call zeroext i8 @PCMMIO_AI_CMD_RANGE(i32 %72)
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %14, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %14, align 1
  %79 = load i8, i8* %14, align 1
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @PCMMIO_AI_CMD_REG, align 8
  %82 = add i64 %80, %81
  %83 = call i32 @outb(i8 zeroext %79, i64 %82)
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %86 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %87 = load i32, i32* @pcmmio_ai_eoc, align 4
  %88 = call i32 @comedi_timeout(%struct.comedi_device* %84, %struct.comedi_subdevice* %85, %struct.comedi_insn* %86, i32 %87, i32 0)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %63
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %5, align 4
  br label %159

93:                                               ; preds = %63
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @PCMMIO_AI_LSB_REG, align 8
  %96 = add i64 %94, %95
  %97 = call i32 @inb(i64 %96)
  store i32 %97, i32* %15, align 4
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @PCMMIO_AI_MSB_REG, align 8
  %100 = add i64 %98, %99
  %101 = call i32 @inb(i64 %100)
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %15, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %105

105:                                              ; preds = %152, %93
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %108 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %155

111:                                              ; preds = %105
  %112 = load i8, i8* %14, align 1
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @PCMMIO_AI_CMD_REG, align 8
  %115 = add i64 %113, %114
  %116 = call i32 @outb(i8 zeroext %112, i64 %115)
  %117 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %119 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %120 = load i32, i32* @pcmmio_ai_eoc, align 4
  %121 = call i32 @comedi_timeout(%struct.comedi_device* %117, %struct.comedi_subdevice* %118, %struct.comedi_insn* %119, i32 %120, i32 0)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %5, align 4
  br label %159

126:                                              ; preds = %111
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @PCMMIO_AI_LSB_REG, align 8
  %129 = add i64 %127, %128
  %130 = call i32 @inb(i64 %129)
  store i32 %130, i32* %15, align 4
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* @PCMMIO_AI_MSB_REG, align 8
  %133 = add i64 %131, %132
  %134 = call i32 @inb(i64 %133)
  %135 = shl i32 %134, 8
  %136 = load i32, i32* %15, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %15, align 4
  %138 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %126
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %143, i32 %144)
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %142, %126
  %147 = load i32, i32* %15, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %17, align 4
  br label %105

155:                                              ; preds = %105
  %156 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %157 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %124, %91
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local zeroext i8 @PCMMIO_AI_CMD_CHAN_SEL(i32) #1

declare dso_local zeroext i8 @PCMMIO_AI_CMD_RANGE(i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
