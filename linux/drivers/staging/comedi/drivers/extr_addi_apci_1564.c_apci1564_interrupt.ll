; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1564.c_apci1564_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, %struct.apci1564_private* }
%struct.comedi_subdevice = type { i32 }
%struct.apci1564_private = type { i64, i64 }

@APCI1564_EVENT_MASK = common dso_local global i32 0, align 4
@APCI1564_DI_IRQ_REG = common dso_local global i64 0, align 8
@APCI1564_DI_IRQ_ENA = common dso_local global i32 0, align 4
@APCI1564_DI_INT_STATUS_REG = common dso_local global i64 0, align 8
@APCI1564_DI_INT_MODE_MASK = common dso_local global i32 0, align 4
@APCI1564_EVENT_COS = common dso_local global i32 0, align 4
@ADDI_TCW_IRQ_REG = common dso_local global i64 0, align 8
@ADDI_TCW_IRQ = common dso_local global i32 0, align 4
@APCI1564_EVENT_TIMER = common dso_local global i32 0, align 4
@ADDI_TCW_CTRL_REG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @apci1564_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1564_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.apci1564_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %5, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 2
  %16 = load %struct.apci1564_private*, %struct.apci1564_private** %15, align 8
  store %struct.apci1564_private* %16, %struct.apci1564_private** %6, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %18, align 8
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %7, align 8
  %20 = load i32, i32* @APCI1564_EVENT_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @APCI1564_DI_IRQ_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i8* @inl(i64 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @APCI1564_DI_IRQ_ENA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %2
  %38 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @APCI1564_DI_INT_STATUS_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i8* @inl(i64 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @APCI1564_DI_INT_MODE_MASK, align 4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @APCI1564_EVENT_COS, align 4
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @APCI1564_DI_IRQ_ENA, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @APCI1564_DI_IRQ_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outl(i32 %60, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @APCI1564_DI_IRQ_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outl(i32 %67, i64 %72)
  br label %74

74:                                               ; preds = %37, %2
  %75 = load %struct.apci1564_private*, %struct.apci1564_private** %6, align 8
  %76 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ADDI_TCW_IRQ_REG, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i8* @inl(i64 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @ADDI_TCW_IRQ, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %74
  %87 = load i32, i32* @APCI1564_EVENT_TIMER, align 4
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.apci1564_private*, %struct.apci1564_private** %6, align 8
  %93 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i8* @inl(i64 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load %struct.apci1564_private*, %struct.apci1564_private** %6, align 8
  %100 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outl(i32 0, i64 %103)
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.apci1564_private*, %struct.apci1564_private** %6, align 8
  %107 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outl(i32 %105, i64 %110)
  br label %112

112:                                              ; preds = %86, %74
  %113 = load %struct.apci1564_private*, %struct.apci1564_private** %6, align 8
  %114 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %163

117:                                              ; preds = %112
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %159, %117
  %119 = load i32, i32* %10, align 4
  %120 = icmp ult i32 %119, 3
  br i1 %120, label %121, label %162

121:                                              ; preds = %118
  %122 = load %struct.apci1564_private*, %struct.apci1564_private** %6, align 8
  %123 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i64 @APCI1564_COUNTER(i32 %125)
  %127 = add i64 %124, %126
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* @ADDI_TCW_IRQ_REG, align 8
  %130 = add i64 %128, %129
  %131 = call i8* @inl(i64 %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @ADDI_TCW_IRQ, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %121
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @APCI1564_EVENT_COUNTER(i32 %138)
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %146 = add i64 %144, %145
  %147 = call i8* @inl(i64 %146)
  %148 = ptrtoint i8* %147 to i32
  store i32 %148, i32* %9, align 4
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %151 = add i64 %149, %150
  %152 = call i32 @outl(i32 0, i64 %151)
  %153 = load i32, i32* %9, align 4
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* @ADDI_TCW_CTRL_REG, align 8
  %156 = add i64 %154, %155
  %157 = call i32 @outl(i32 %153, i64 %156)
  br label %158

158:                                              ; preds = %137, %121
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %118

162:                                              ; preds = %118
  br label %163

163:                                              ; preds = %162, %112
  %164 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %165 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @APCI1564_EVENT_MASK, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %163
  %171 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %172 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %172, i32 0, i32 0
  %174 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %171, i32* %173, i32 1)
  %175 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %176 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %177 = call i32 @comedi_handle_events(%struct.comedi_device* %175, %struct.comedi_subdevice* %176)
  br label %178

178:                                              ; preds = %170, %163
  %179 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %179
}

declare dso_local i8* @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i64 @APCI1564_COUNTER(i32) #1

declare dso_local i32 @APCI1564_EVENT_COUNTER(i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
