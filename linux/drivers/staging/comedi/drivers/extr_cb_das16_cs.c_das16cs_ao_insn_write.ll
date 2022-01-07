; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.das16cs_private* }
%struct.das16cs_private = type { i16 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@DAS16CS_MISC1_REG = common dso_local global i64 0, align 8
@DAS16CS_MISC1_DAC_MASK = common dso_local global i16 0, align 2
@DAS16CS_MISC1_DAC0CS = common dso_local global i16 0, align 2
@DAS16CS_MISC1_DAC1CS = common dso_local global i16 0, align 2
@DAS16CS_MISC1_DACSD = common dso_local global i16 0, align 2
@DAS16CS_MISC1_DACCLK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das16cs_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16cs_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.das16cs_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.das16cs_private*, %struct.das16cs_private** %16, align 8
  store %struct.das16cs_private* %17, %struct.das16cs_private** %9, align 8
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CR_CHAN(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %150, %4
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %153

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.das16cs_private*, %struct.das16cs_private** %9, align 8
  %42 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %41, i32 0, i32 0
  %43 = load i16, i16* %42, align 2
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DAS16CS_MISC1_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outw(i16 zeroext %43, i64 %48)
  %50 = call i32 @udelay(i32 1)
  %51 = load %struct.das16cs_private*, %struct.das16cs_private** %9, align 8
  %52 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %51, i32 0, i32 0
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @DAS16CS_MISC1_DAC_MASK, align 2
  %56 = zext i16 %55 to i32
  %57 = xor i32 %56, -1
  %58 = and i32 %54, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %12, align 2
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %35
  %63 = load i16, i16* @DAS16CS_MISC1_DAC0CS, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* %12, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %12, align 2
  br label %76

69:                                               ; preds = %35
  %70 = load i16, i16* @DAS16CS_MISC1_DAC1CS, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* %12, align 2
  %73 = zext i16 %72 to i32
  %74 = or i32 %73, %71
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %12, align 2
  br label %76

76:                                               ; preds = %69, %62
  %77 = load i16, i16* %12, align 2
  %78 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DAS16CS_MISC1_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outw(i16 zeroext %77, i64 %82)
  %84 = call i32 @udelay(i32 1)
  store i32 15, i32* %13, align 4
  br label %85

85:                                               ; preds = %131, %76
  %86 = load i32, i32* %13, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %134

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %13, align 4
  %91 = lshr i32 %89, %90
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i16, i16* @DAS16CS_MISC1_DACSD, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* %12, align 2
  %98 = zext i16 %97 to i32
  %99 = or i32 %98, %96
  %100 = trunc i32 %99 to i16
  store i16 %100, i16* %12, align 2
  br label %109

101:                                              ; preds = %88
  %102 = load i16, i16* @DAS16CS_MISC1_DACSD, align 2
  %103 = zext i16 %102 to i32
  %104 = xor i32 %103, -1
  %105 = load i16, i16* %12, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, %104
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %12, align 2
  br label %109

109:                                              ; preds = %101, %94
  %110 = load i16, i16* %12, align 2
  %111 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @DAS16CS_MISC1_REG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @outw(i16 zeroext %110, i64 %115)
  %117 = call i32 @udelay(i32 1)
  %118 = load i16, i16* %12, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* @DAS16CS_MISC1_DACCLK, align 2
  %121 = zext i16 %120 to i32
  %122 = or i32 %119, %121
  %123 = trunc i32 %122 to i16
  %124 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DAS16CS_MISC1_REG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @outw(i16 zeroext %123, i64 %128)
  %130 = call i32 @udelay(i32 1)
  br label %131

131:                                              ; preds = %109
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %13, align 4
  br label %85

134:                                              ; preds = %85
  %135 = load i16, i16* %12, align 2
  %136 = zext i16 %135 to i32
  %137 = load i16, i16* @DAS16CS_MISC1_DAC0CS, align 2
  %138 = zext i16 %137 to i32
  %139 = or i32 %136, %138
  %140 = load i16, i16* @DAS16CS_MISC1_DAC1CS, align 2
  %141 = zext i16 %140 to i32
  %142 = or i32 %139, %141
  %143 = trunc i32 %142 to i16
  %144 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %145 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DAS16CS_MISC1_REG, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @outw(i16 zeroext %143, i64 %148)
  br label %150

150:                                              ; preds = %134
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %14, align 4
  br label %29

153:                                              ; preds = %29
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %156 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %154, i32* %160, align 4
  %161 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %162 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  ret i32 %163
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
