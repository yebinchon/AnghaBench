; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me_daq.c_me_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me_daq.c_me_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.me_private_data* }
%struct.me_private_data = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@AREF_DIFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ME_CTRL2_ADFIFO_ENA = common dso_local global i32 0, align 4
@ME_CTRL2_CHANLIST_ENA = common dso_local global i32 0, align 4
@ME_CTRL2_REG = common dso_local global i64 0, align 8
@ME_STATUS_REG = common dso_local global i64 0, align 8
@ME_AI_FIFO_CHANLIST_UNIPOLAR = common dso_local global i32 0, align 4
@ME_AI_FIFO_CHANLIST_DIFF = common dso_local global i32 0, align 4
@ME_AI_FIFO_REG = common dso_local global i64 0, align 8
@ME_CTRL1_ADC_MODE_SOFT_TRIG = common dso_local global i32 0, align 4
@ME_CTRL1_REG = common dso_local global i64 0, align 8
@me_ai_eoc = common dso_local global i32 0, align 4
@ME_CTRL1_ADC_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @me_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.me_private_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load %struct.me_private_data*, %struct.me_private_data** %18, align 8
  store %struct.me_private_data* %19, %struct.me_private_data** %10, align 8
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
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %29 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CR_AREF(i32 %30)
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @AREF_DIFF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ugt i32 %37, 7
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @comedi_range_is_unipolar(%struct.comedi_subdevice* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %200

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %4
  %49 = load i32, i32* @ME_CTRL2_ADFIFO_ENA, align 4
  %50 = load i32, i32* @ME_CTRL2_CHANLIST_ENA, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %54 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %58 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ME_CTRL2_REG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writew(i32 %59, i64 %64)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ME_STATUS_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writew(i32 0, i64 %70)
  %72 = load i32, i32* @ME_CTRL2_ADFIFO_ENA, align 4
  %73 = load i32, i32* @ME_CTRL2_CHANLIST_ENA, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %76 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %80 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ME_CTRL2_REG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writew(i32 %81, i64 %86)
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @ME_AI_FIFO_CHANLIST_CHAN(i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @ME_AI_FIFO_CHANLIST_GAIN(i32 %90)
  %92 = or i32 %89, %91
  store i32 %92, i32* %14, align 4
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @comedi_range_is_unipolar(%struct.comedi_subdevice* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %48
  %98 = load i32, i32* @ME_AI_FIFO_CHANLIST_UNIPOLAR, align 4
  %99 = load i32, i32* %14, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %97, %48
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @AREF_DIFF, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @ME_AI_FIFO_CHANLIST_DIFF, align 4
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ME_AI_FIFO_REG, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writew(i32 %111, i64 %116)
  %118 = load i32, i32* @ME_CTRL1_ADC_MODE_SOFT_TRIG, align 4
  %119 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %120 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %124 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ME_CTRL1_REG, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writew(i32 %125, i64 %130)
  store i32 0, i32* %16, align 4
  br label %132

132:                                              ; preds = %171, %110
  %133 = load i32, i32* %16, align 4
  %134 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %135 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %174

138:                                              ; preds = %132
  %139 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @ME_CTRL1_REG, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @readw(i64 %143)
  %145 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %146 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %147 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %148 = load i32, i32* @me_ai_eoc, align 4
  %149 = call i32 @comedi_timeout(%struct.comedi_device* %145, %struct.comedi_subdevice* %146, %struct.comedi_insn* %147, i32 %148, i32 0)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  br label %174

153:                                              ; preds = %138
  %154 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %155 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @ME_AI_FIFO_REG, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @readw(i64 %158)
  %160 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %159, %162
  store i32 %163, i32* %14, align 4
  %164 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %164, i32 %165)
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %153
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %132

174:                                              ; preds = %152, %132
  %175 = load i32, i32* @ME_CTRL1_ADC_MODE_MASK, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %178 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %182 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %185 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @ME_CTRL1_REG, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @writew(i32 %183, i64 %188)
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %174
  %193 = load i32, i32* %15, align 4
  br label %198

194:                                              ; preds = %174
  %195 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %196 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  br label %198

198:                                              ; preds = %194, %192
  %199 = phi i32 [ %193, %192 ], [ %197, %194 ]
  store i32 %199, i32* %5, align 4
  br label %200

200:                                              ; preds = %198, %44
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i64 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @ME_AI_FIFO_CHANLIST_CHAN(i32) #1

declare dso_local i32 @ME_AI_FIFO_CHANLIST_GAIN(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
