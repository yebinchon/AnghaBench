; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice*, %struct.apci3120_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64 }
%struct.apci3120_private = type { i32, i32, i64 }

@APCI3120_STATUS_REG = common dso_local global i64 0, align 8
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@APCI3120_STATUS_INT_MASK = common dso_local global i32 0, align 4
@ANY_S593X_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"IRQ from unknown source\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@AINT_INT_MASK = common dso_local global i32 0, align 4
@APCI3120_CTRL_EXT_TRIG = common dso_local global i32 0, align 4
@MASTER_ABORT_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"AMCC IRQ - MASTER DMA ABORT!\0A\00", align 1
@TARGET_ABORT_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"AMCC IRQ - TARGET DMA ABORT!\0A\00", align 1
@APCI3120_STATUS_EOS_INT = common dso_local global i32 0, align 4
@APCI3120_MODE_EOS_IRQ_ENA = common dso_local global i32 0, align 4
@APCI3120_AI_FIFO_REG = common dso_local global i64 0, align 8
@APCI3120_MODE_REG = common dso_local global i64 0, align 8
@APCI3120_STATUS_TIMER2_INT = common dso_local global i32 0, align 4
@APCI3120_STATUS_AMCC_INT = common dso_local global i32 0, align 4
@AINT_WT_COMPLETE = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @apci3120_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3120_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.apci3120_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca %struct.comedi_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.comedi_device*
  store %struct.comedi_device* %16, %struct.comedi_device** %6, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 3
  %19 = load %struct.apci3120_private*, %struct.apci3120_private** %18, align 8
  store %struct.apci3120_private* %19, %struct.apci3120_private** %7, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 2
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %21, align 8
  store %struct.comedi_subdevice* %22, %struct.comedi_subdevice** %8, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 0
  %25 = load %struct.comedi_async*, %struct.comedi_async** %24, align 8
  store %struct.comedi_async* %25, %struct.comedi_async** %9, align 8
  %26 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %27 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 2
  store %struct.comedi_cmd* %27, %struct.comedi_cmd** %10, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @APCI3120_STATUS_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i8* @inw(i64 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %36 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @inl(i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @APCI3120_STATUS_INT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @ANY_S593X_INT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @IRQ_NONE, align 4
  store i32 %55, i32* %3, align 4
  br label %191

56:                                               ; preds = %45, %2
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @AINT_INT_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %61 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outl(i32 %59, i64 %64)
  %66 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %67 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @APCI3120_CTRL_EXT_TRIG, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %56
  %73 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %74 = call i32 @apci3120_exttrig_enable(%struct.comedi_device* %73, i32 0)
  br label %75

75:                                               ; preds = %72, %56
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @MASTER_ABORT_INT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @TARGET_ABORT_INT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @APCI3120_STATUS_EOS_INT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %95
  %101 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %102 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @APCI3120_MODE_EOS_IRQ_ENA, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %142

107:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %124, %107
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @APCI3120_AI_FIFO_REG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i8* @inw(i64 %119)
  %121 = ptrtoint i8* %120 to i16
  store i16 %121, i16* %13, align 2
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %123 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %122, i16* %13, i32 1)
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %108

127:                                              ; preds = %108
  %128 = load i32, i32* @APCI3120_MODE_EOS_IRQ_ENA, align 4
  %129 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %130 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %134 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %137 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @APCI3120_MODE_REG, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @outb(i32 %135, i64 %140)
  br label %142

142:                                              ; preds = %127, %100, %95
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @APCI3120_STATUS_TIMER2_INT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %149 = call i32 @apci3120_clr_timer2_interrupt(%struct.comedi_device* %148)
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @APCI3120_STATUS_AMCC_INT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load i32, i32* @AINT_WT_COMPLETE, align 4
  %157 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %158 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @outl(i32 %156, i64 %161)
  %163 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %164 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %165 = call i32 @apci3120_interrupt_dma(%struct.comedi_device* %163, %struct.comedi_subdevice* %164)
  br label %166

166:                                              ; preds = %155, %150
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %168 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @TRIG_COUNT, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %166
  %173 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %174 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %177 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp sge i64 %175, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %172
  %181 = load i32, i32* @COMEDI_CB_EOA, align 4
  %182 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %183 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %180, %172, %166
  %187 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %188 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %189 = call i32 @comedi_handle_events(%struct.comedi_device* %187, %struct.comedi_subdevice* %188)
  %190 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %186, %50
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i8* @inw(i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @apci3120_exttrig_enable(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @apci3120_clr_timer2_interrupt(%struct.comedi_device*) #1

declare dso_local i32 @apci3120_interrupt_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
