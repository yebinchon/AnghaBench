; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, i64, i32, %struct.comedi_subdevice*, %struct.hpdi_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }
%struct.hpdi_private = type { i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@PLX_REG_INTCSR = common dso_local global i64 0, align 8
@PLX_INTCSR_DMA0IA = common dso_local global i32 0, align 4
@PLX_INTCSR_DMA1IA = common dso_local global i32 0, align 4
@PLX_INTCSR_PLIA = common dso_local global i32 0, align 4
@INTERRUPT_STATUS_REG = common dso_local global i64 0, align 8
@BOARD_STATUS_REG = common dso_local global i64 0, align 8
@PLX_REG_DMACSR0 = common dso_local global i64 0, align 8
@PLX_DMACSR_ENABLE = common dso_local global i32 0, align 4
@PLX_DMACSR_CLEARINTR = common dso_local global i32 0, align 4
@PLX_REG_DMACSR1 = common dso_local global i64 0, align 8
@PLX_INTCSR_LDBIA = common dso_local global i32 0, align 4
@PLX_REG_L2PDBELL = common dso_local global i64 0, align 8
@RX_OVERRUN_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rx fifo overrun\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@RX_UNDERRUN_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rx fifo underrun\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gsc_hpdi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_hpdi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.hpdi_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.comedi_device*
  store %struct.comedi_device* %18, %struct.comedi_device** %6, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 5
  %21 = load %struct.hpdi_private*, %struct.hpdi_private** %20, align 8
  store %struct.hpdi_private* %21, %struct.hpdi_private** %7, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 4
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %23, align 8
  store %struct.comedi_subdevice* %24, %struct.comedi_subdevice** %8, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load %struct.comedi_async*, %struct.comedi_async** %26, align 8
  store %struct.comedi_async* %27, %struct.comedi_async** %9, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %209

34:                                               ; preds = %2
  %35 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %36 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PLX_REG_INTCSR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @PLX_INTCSR_DMA0IA, align 4
  %43 = load i32, i32* @PLX_INTCSR_DMA1IA, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PLX_INTCSR_PLIA, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @IRQ_NONE, align 4
  store i32 %50, i32* %3, align 4
  br label %209

51:                                               ; preds = %34
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INTERRUPT_STATUS_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BOARD_STATUS_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @readl(i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %51
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @INTERRUPT_STATUS_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  br label %74

74:                                               ; preds = %66, %51
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 1
  %77 = load i64, i64* %16, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %80 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PLX_REG_DMACSR0, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readb(i64 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @PLX_INTCSR_DMA0IA, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %74
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @PLX_DMACSR_ENABLE, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @PLX_DMACSR_CLEARINTR, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %96 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PLX_REG_DMACSR0, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writeb(i32 %94, i64 %99)
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @PLX_DMACSR_ENABLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %89
  %106 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %107 = call i32 @gsc_hpdi_drain_dma(%struct.comedi_device* %106, i32 0)
  br label %108

108:                                              ; preds = %105, %89
  br label %109

109:                                              ; preds = %108, %74
  %110 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %111 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %110, i32 0, i32 1
  %112 = load i64, i64* %16, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 1
  %116 = load i64, i64* %16, align 8
  %117 = call i32 @spin_lock_irqsave(i32* %115, i64 %116)
  %118 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %119 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PLX_REG_DMACSR1, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @readb(i64 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @PLX_INTCSR_DMA1IA, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %109
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @PLX_DMACSR_ENABLE, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @PLX_DMACSR_CLEARINTR, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %135 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PLX_REG_DMACSR1, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writeb(i32 %133, i64 %138)
  br label %140

140:                                              ; preds = %128, %109
  %141 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 1
  %143 = load i64, i64* %16, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @PLX_INTCSR_LDBIA, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %140
  %150 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %151 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PLX_REG_L2PDBELL, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @readl(i64 %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %158 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @PLX_REG_L2PDBELL, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writel(i32 %156, i64 %161)
  br label %163

163:                                              ; preds = %149, %140
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @RX_OVERRUN_BIT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %170 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %173 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %174 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %175 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %168, %163
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @RX_UNDERRUN_BIT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %185 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @dev_err(i32 %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %188 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %189 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %190 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %183, %178
  %194 = load %struct.hpdi_private*, %struct.hpdi_private** %7, align 8
  %195 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load i32, i32* @COMEDI_CB_EOA, align 4
  %200 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %201 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %198, %193
  %205 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %206 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %207 = call i32 @comedi_handle_events(%struct.comedi_device* %205, %struct.comedi_subdevice* %206)
  %208 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %204, %49, %32
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @gsc_hpdi_drain_dma(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
