; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ME4000_IRQ_STATUS_REG = common dso_local global i64 0, align 8
@ME4000_IRQ_STATUS_AI_HF = common dso_local global i32 0, align 4
@ME4000_AI_STATUS_REG = common dso_local global i64 0, align 8
@ME4000_AI_STATUS_FF_DATA = common dso_local global i32 0, align 4
@ME4000_AI_STATUS_HF_DATA = common dso_local global i32 0, align 4
@ME4000_AI_STATUS_EF_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"FIFO overflow\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@ME4000_AI_FIFO_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Undefined FIFO state\0A\00", align 1
@ME4000_AI_CTRL_HF_IRQ_RESET = common dso_local global i32 0, align 4
@ME4000_AI_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_IRQ_STATUS_SC = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@ME4000_AI_CTRL_SC_IRQ_RESET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @me4000_ai_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me4000_ai_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %7, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 3
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %207

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ME4000_IRQ_STATUS_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inl(i64 %28)
  %30 = load i32, i32* @ME4000_IRQ_STATUS_AI_HF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %137

33:                                               ; preds = %23
  %34 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ME4000_AI_STATUS_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @inl(i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ME4000_AI_STATUS_FF_DATA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ME4000_AI_STATUS_HF_DATA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ME4000_AI_STATUS_EF_DATA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @ME4000_AI_FIFO_COUNT, align 4
  store i32 %66, i32* %10, align 4
  br label %98

67:                                               ; preds = %49, %44, %33
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ME4000_AI_STATUS_FF_DATA, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ME4000_AI_STATUS_HF_DATA, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @ME4000_AI_STATUS_EF_DATA, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @ME4000_AI_FIFO_COUNT, align 4
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %10, align 4
  br label %97

85:                                               ; preds = %77, %72, %67
  %86 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %92 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %90
  store i32 %96, i32* %94, align 4
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %85, %82
  br label %98

98:                                               ; preds = %97, %54
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %112, %98
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %106 = call i32 @me4000_ai_get_sample(%struct.comedi_device* %104, %struct.comedi_subdevice* %105)
  store i32 %106, i32* %11, align 4
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %108 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %107, i32* %11, i32 1)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  br label %115

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %99

115:                                              ; preds = %110, %99
  %116 = load i32, i32* @ME4000_AI_CTRL_HF_IRQ_RESET, align 4
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ME4000_AI_CTRL_REG, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @outl(i32 %119, i64 %124)
  %126 = load i32, i32* @ME4000_AI_CTRL_HF_IRQ_RESET, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ME4000_AI_CTRL_REG, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @outl(i32 %130, i64 %135)
  br label %137

137:                                              ; preds = %115, %23
  %138 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ME4000_IRQ_STATUS_REG, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @inl(i64 %142)
  %144 = load i32, i32* @ME4000_IRQ_STATUS_SC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %202

147:                                              ; preds = %137
  %148 = load i32, i32* @COMEDI_CB_EOA, align 4
  %149 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %150 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %148
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %173, %147
  %156 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @ME4000_AI_STATUS_REG, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @inl(i64 %160)
  %162 = load i32, i32* @ME4000_AI_STATUS_EF_DATA, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %155
  %166 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %167 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %168 = call i32 @me4000_ai_get_sample(%struct.comedi_device* %166, %struct.comedi_subdevice* %167)
  store i32 %168, i32* %11, align 4
  %169 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %170 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %169, i32* %11, i32 1)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  br label %174

173:                                              ; preds = %165
  br label %155

174:                                              ; preds = %172, %155
  %175 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @ME4000_AI_CTRL_REG, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @inl(i64 %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* @ME4000_AI_CTRL_SC_IRQ_RESET, align 4
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %186 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @ME4000_AI_CTRL_REG, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @outl(i32 %184, i64 %189)
  %191 = load i32, i32* @ME4000_AI_CTRL_SC_IRQ_RESET, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %6, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %197 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @ME4000_AI_CTRL_REG, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @outl(i32 %195, i64 %200)
  br label %202

202:                                              ; preds = %174, %137
  %203 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %204 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %205 = call i32 @comedi_handle_events(%struct.comedi_device* %203, %struct.comedi_subdevice* %204)
  %206 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %202, %21
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @me4000_ai_get_sample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
