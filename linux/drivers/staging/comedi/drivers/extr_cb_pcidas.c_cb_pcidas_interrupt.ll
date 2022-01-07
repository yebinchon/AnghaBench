; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i32, i32, i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@INTCSR_INTR_ASSERTED = common dso_local global i32 0, align 4
@AMCC_OP_REG_IMB4 = common dso_local global i64 0, align 8
@INTCSR_INBOX_INTR_STATUS = common dso_local global i32 0, align 4
@PCIDAS_CTRL_REG = common dso_local global i64 0, align 8
@PCIDAS_CTRL_AO_INT = common dso_local global i32 0, align 4
@PCIDAS_CTRL_AI_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cb_pcidas_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.cb_pcidas_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 2
  %16 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %15, align 8
  store %struct.cb_pcidas_private* %16, %struct.cb_pcidas_private** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %106

23:                                               ; preds = %2
  %24 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %7, align 8
  %25 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inl(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @INTCSR_INTR_ASSERTED, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %106

36:                                               ; preds = %23
  %37 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %7, align 8
  %38 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AMCC_OP_REG_IMB4, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @inl_p(i64 %41)
  %43 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %7, align 8
  %44 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @INTCSR_INBOX_INTR_STATUS, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %7, align 8
  %49 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outl(i32 %47, i64 %52)
  %54 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %7, align 8
  %55 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCIDAS_CTRL_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @inw(i64 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @PCIDAS_CTRL_AO_INT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %36
  %65 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @cb_pcidas_ao_interrupt(%struct.comedi_device* %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %64, %36
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @PCIDAS_CTRL_AI_INT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @cb_pcidas_ai_interrupt(%struct.comedi_device* %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %7, align 8
  %90 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %7, align 8
  %95 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCIDAS_CTRL_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outw(i32 %93, i64 %98)
  %100 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %84, %81
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %34, %21
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @inl_p(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @cb_pcidas_ao_interrupt(%struct.comedi_device*, i32) #1

declare dso_local i32 @cb_pcidas_ai_interrupt(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
