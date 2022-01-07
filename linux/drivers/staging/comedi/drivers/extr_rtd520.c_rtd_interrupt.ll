; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.rtd_private*, %struct.comedi_subdevice* }
%struct.rtd_private = type { i32, i64, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@LAS0_ADC = common dso_local global i64 0, align 8
@FS_ADC_NOT_FULL = common dso_local global i32 0, align 4
@LAS0_IT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQM_ADC_ABOUT_CNT = common dso_local global i32 0, align 4
@FS_ADC_HEMPTY = common dso_local global i32 0, align 4
@FS_ADC_NOT_EMPTY = common dso_local global i32 0, align 4
@LAS0_OVERRUN = common dso_local global i64 0, align 8
@LAS0_CLEAR = common dso_local global i64 0, align 8
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.rtd_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 3
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 2
  %19 = load %struct.rtd_private*, %struct.rtd_private** %18, align 8
  store %struct.rtd_private* %19, %struct.rtd_private** %8, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %186

26:                                               ; preds = %2
  %27 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LAS0_ADC, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @FS_ADC_NOT_FULL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %134

38:                                               ; preds = %26
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LAS0_IT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readw(i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %3, align 4
  br label %186

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @IRQM_ADC_ABOUT_CNT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %105

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @FS_ADC_HEMPTY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %54
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %62 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %63 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sdiv i32 %64, 2
  %66 = call i64 @ai_read_n(%struct.comedi_device* %60, %struct.comedi_subdevice* %61, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %134

69:                                               ; preds = %59
  %70 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %71 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %142

75:                                               ; preds = %69
  br label %104

76:                                               ; preds = %54
  %77 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %78 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @FS_ADC_NOT_EMPTY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %89 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %90 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @ai_read_n(%struct.comedi_device* %87, %struct.comedi_subdevice* %88, i32 %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %134

95:                                               ; preds = %86
  %96 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %97 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %142

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %81
  br label %103

103:                                              ; preds = %102, %76
  br label %104

104:                                              ; preds = %103, %75
  br label %105

105:                                              ; preds = %104, %49
  %106 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @LAS0_OVERRUN, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @readl(i64 %110)
  %112 = and i32 %111, 65535
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %134

116:                                              ; preds = %105
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @LAS0_CLEAR, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writew(i32 %117, i64 %122)
  %124 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @LAS0_CLEAR, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @readw(i64 %128)
  %130 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %132 = call i32 @comedi_handle_events(%struct.comedi_device* %130, %struct.comedi_subdevice* %131)
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %133, i32* %3, align 4
  br label %186

134:                                              ; preds = %115, %94, %68, %37
  %135 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %135
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %134, %100, %74
  %143 = load i32, i32* @COMEDI_CB_EOA, align 4
  %144 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %145 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 4
  %150 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %151 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @LAS0_IT, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @readw(i64 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %158 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @LAS0_CLEAR, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writew(i32 %156, i64 %161)
  %163 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %164 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @LAS0_CLEAR, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @readw(i64 %167)
  %169 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %170 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @LAS0_ADC, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @readl(i64 %173)
  store i32 %174, i32* %11, align 4
  %175 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @LAS0_OVERRUN, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @readl(i64 %179)
  %181 = and i32 %180, 65535
  store i32 %181, i32* %9, align 4
  %182 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %183 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %184 = call i32 @comedi_handle_events(%struct.comedi_device* %182, %struct.comedi_subdevice* %183)
  %185 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %142, %116, %47, %24
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i64 @ai_read_n(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
