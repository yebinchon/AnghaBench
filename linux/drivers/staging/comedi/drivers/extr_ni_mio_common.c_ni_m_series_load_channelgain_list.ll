; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_load_channelgain_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_load_channelgain_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { i32, i64* }
%struct.ni_board_struct = type { i64 }

@NISTC_CFG_MEM_CLR_REG = common dso_local global i32 0, align 4
@CR_ALT_SOURCE = common dso_local global i32 0, align 4
@ni_gainlkup = common dso_local global i32** null, align 8
@CR_ALT_FILTER = common dso_local global i32 0, align 4
@NI_M_CFG_BYPASS_FIFO = common dso_local global i32 0, align 4
@NI_M_CFG_BYPASS_AI_DITHER = common dso_local global i32 0, align 4
@NI_M_CFG_BYPASS_AI_POLARITY = common dso_local global i32 0, align 4
@NI_M_CFG_BYPASS_FIFO_REG = common dso_local global i32 0, align 4
@NI_M_AI_CFG_CHAN_TYPE_DIFF = common dso_local global i32 0, align 4
@NI_M_AI_CFG_CHAN_TYPE_COMMON = common dso_local global i32 0, align 4
@NI_M_AI_CFG_CHAN_TYPE_GROUND = common dso_local global i32 0, align 4
@NI_M_AI_CFG_LAST_CHAN = common dso_local global i32 0, align 4
@NI_M_AI_CFG_DITHER = common dso_local global i32 0, align 4
@NI_M_AI_CFG_POLARITY = common dso_local global i32 0, align 4
@NI_M_AI_CFG_FIFO_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32*)* @ni_m_series_load_channelgain_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_m_series_load_channelgain_list(%struct.comedi_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ni_board_struct*, align 8
  %8 = alloca %struct.ni_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load %struct.ni_board_struct*, %struct.ni_board_struct** %18, align 8
  store %struct.ni_board_struct* %19, %struct.ni_board_struct** %7, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load %struct.ni_private*, %struct.ni_private** %21, align 8
  store %struct.ni_private* %22, %struct.ni_private** %8, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = load i32, i32* @NISTC_CFG_MEM_CLR_REG, align 4
  %25 = call i32 @ni_stc_writew(%struct.comedi_device* %23, i32 1, i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CR_ALT_SOURCE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %3
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CR_CHAN(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CR_RANGE(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32**, i32*** @ni_gainlkup, align 8
  %42 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %43 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32*, i32** %41, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CR_ALT_FILTER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @NI_M_CFG_BYPASS_FIFO, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @NI_M_CFG_BYPASS_AI_CHAN(i32 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @NI_M_CFG_BYPASS_AI_GAIN(i32 %62)
  %64 = or i32 %61, %63
  %65 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %66 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %64, %67
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %32
  %72 = load i32, i32* @NI_M_CFG_BYPASS_AI_DITHER, align 4
  %73 = load i32, i32* %15, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %71, %32
  %76 = load i32, i32* @NI_M_CFG_BYPASS_AI_POLARITY, align 4
  %77 = load i32, i32* %15, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %15, align 4
  %79 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @NI_M_CFG_BYPASS_FIFO_REG, align 4
  %82 = call i32 @ni_writel(%struct.comedi_device* %79, i32 %80, i32 %81)
  br label %87

83:                                               ; preds = %3
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = load i32, i32* @NI_M_CFG_BYPASS_FIFO_REG, align 4
  %86 = call i32 @ni_writel(%struct.comedi_device* %84, i32 0, i32 %85)
  br label %87

87:                                               ; preds = %83, %75
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %186, %87
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %189

92:                                               ; preds = %88
  store i32 0, i32* %16, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @CR_CHAN(i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @CR_AREF(i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %12, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @CR_RANGE(i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CR_ALT_FILTER, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load i32**, i32*** @ni_gainlkup, align 8
  %121 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %122 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32*, i32** %120, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %14, align 4
  %130 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %131 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* %11, align 4
  switch i32 %136, label %150 [
    i32 130, label %137
    i32 131, label %141
    i32 129, label %145
    i32 128, label %149
  ]

137:                                              ; preds = %92
  %138 = load i32, i32* @NI_M_AI_CFG_CHAN_TYPE_DIFF, align 4
  %139 = load i32, i32* %16, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %16, align 4
  br label %150

141:                                              ; preds = %92
  %142 = load i32, i32* @NI_M_AI_CFG_CHAN_TYPE_COMMON, align 4
  %143 = load i32, i32* %16, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %16, align 4
  br label %150

145:                                              ; preds = %92
  %146 = load i32, i32* @NI_M_AI_CFG_CHAN_TYPE_GROUND, align 4
  %147 = load i32, i32* %16, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %16, align 4
  br label %150

149:                                              ; preds = %92
  br label %150

150:                                              ; preds = %92, %149, %145, %141, %137
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @NI_M_AI_CFG_CHAN_SEL(i32 %151)
  %153 = load i32, i32* %16, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @NI_M_AI_CFG_BANK_SEL(i32 %155)
  %157 = load i32, i32* %16, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @NI_M_AI_CFG_GAIN(i32 %159)
  %161 = load i32, i32* %16, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %5, align 4
  %165 = sub i32 %164, 1
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %150
  %168 = load i32, i32* @NI_M_AI_CFG_LAST_CHAN, align 4
  %169 = load i32, i32* %16, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %16, align 4
  br label %171

171:                                              ; preds = %167, %150
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32, i32* @NI_M_AI_CFG_DITHER, align 4
  %176 = load i32, i32* %16, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %16, align 4
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i32, i32* @NI_M_AI_CFG_POLARITY, align 4
  %180 = load i32, i32* %16, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %16, align 4
  %182 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* @NI_M_AI_CFG_FIFO_DATA_REG, align 4
  %185 = call i32 @ni_writew(%struct.comedi_device* %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %12, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %88

189:                                              ; preds = %88
  %190 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %191 = call i32 @ni_prime_channelgain_list(%struct.comedi_device* %190)
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @NI_M_CFG_BYPASS_AI_CHAN(i32) #1

declare dso_local i32 @NI_M_CFG_BYPASS_AI_GAIN(i32) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @NI_M_AI_CFG_CHAN_SEL(i32) #1

declare dso_local i32 @NI_M_AI_CFG_BANK_SEL(i32) #1

declare dso_local i32 @NI_M_AI_CFG_GAIN(i32) #1

declare dso_local i32 @ni_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_prime_channelgain_list(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
