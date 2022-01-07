; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { i32, i32 }
%struct.comedi_insn = type { i32, i32 }

@AREF_DIFF = common dso_local global i32 0, align 4
@SDF_DIFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Differential inputs are not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Range must be bipolar when aref = diff\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Analog input is not available\0A\00", align 1
@ME4000_AI_LIST_INPUT_DIFFERENTIAL = common dso_local global i32 0, align 4
@ME4000_AI_LIST_LAST_ENTRY = common dso_local global i32 0, align 4
@ME4000_AI_CTRL_CHANNEL_FIFO = common dso_local global i32 0, align 4
@ME4000_AI_CTRL_DATA_FIFO = common dso_local global i32 0, align 4
@ME4000_AI_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_AI_CHANNEL_LIST_REG = common dso_local global i64 0, align 8
@ME4000_AI_MIN_TICKS = common dso_local global i32 0, align 4
@ME4000_AI_CHAN_TIMER_REG = common dso_local global i64 0, align 8
@ME4000_AI_CHAN_PRE_TIMER_REG = common dso_local global i64 0, align 8
@ME4000_AI_START_REG = common dso_local global i64 0, align 8
@me4000_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @me4000_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me4000_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
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
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_RANGE(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_AREF(i32 %27)
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @ME4000_AI_LIST_RANGE(i32 %30)
  %32 = or i32 %29, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @AREF_DIFF, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %4
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SDF_DIFF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %162

50:                                               ; preds = %36
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @comedi_range_is_bipolar(%struct.comedi_subdevice* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %162

62:                                               ; preds = %50
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 2
  %68 = icmp uge i32 %63, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %162

76:                                               ; preds = %62
  %77 = load i32, i32* @ME4000_AI_LIST_INPUT_DIFFERENTIAL, align 4
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %76, %4
  %81 = load i32, i32* @ME4000_AI_LIST_LAST_ENTRY, align 4
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* @ME4000_AI_CTRL_CHANNEL_FIFO, align 4
  %85 = load i32, i32* @ME4000_AI_CTRL_DATA_FIFO, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ME4000_AI_CTRL_REG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outl(i32 %86, i64 %91)
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ME4000_AI_CHANNEL_LIST_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outl(i32 %93, i64 %98)
  %100 = load i32, i32* @ME4000_AI_MIN_TICKS, align 4
  %101 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ME4000_AI_CHAN_TIMER_REG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outl(i32 %100, i64 %105)
  %107 = load i32, i32* @ME4000_AI_MIN_TICKS, align 4
  %108 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ME4000_AI_CHAN_PRE_TIMER_REG, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @outl(i32 %107, i64 %112)
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %146, %80
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %117 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %114
  %121 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ME4000_AI_START_REG, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @inl(i64 %125)
  %127 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %128 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %129 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %130 = load i32, i32* @me4000_ai_eoc, align 4
  %131 = call i32 @comedi_timeout(%struct.comedi_device* %127, %struct.comedi_subdevice* %128, %struct.comedi_insn* %129, i32 %130, i32 0)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  br label %149

135:                                              ; preds = %120
  %136 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %138 = call i32 @me4000_ai_get_sample(%struct.comedi_device* %136, %struct.comedi_subdevice* %137)
  store i32 %138, i32* %16, align 4
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %139, i32 %140)
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %135
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %114

149:                                              ; preds = %134, %114
  %150 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %151 = call i32 @me4000_ai_reset(%struct.comedi_device* %150)
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* %14, align 4
  br label %160

156:                                              ; preds = %149
  %157 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %158 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  br label %160

160:                                              ; preds = %156, %154
  %161 = phi i32 [ %155, %154 ], [ %159, %156 ]
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %69, %55, %43
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @ME4000_AI_LIST_RANGE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @me4000_ai_get_sample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @me4000_ai_reset(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
