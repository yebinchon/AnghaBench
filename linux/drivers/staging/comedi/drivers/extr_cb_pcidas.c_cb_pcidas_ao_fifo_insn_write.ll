; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_fifo_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_fifo_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i32, i64, i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@PCIDAS_AO_FIFO_CLR_REG = common dso_local global i64 0, align 8
@PCIDAS_AO_CHAN_MASK = common dso_local global i32 0, align 4
@PCIDAS_AO_PACER_MASK = common dso_local global i32 0, align 4
@PCIDAS_AO_DACEN = common dso_local global i32 0, align 4
@PCIDAS_AO_START = common dso_local global i32 0, align 4
@PCIDAS_AO_REG = common dso_local global i64 0, align 8
@PCIDAS_AO_FIFO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcidas_ao_fifo_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ao_fifo_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cb_pcidas_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %16, align 8
  store %struct.cb_pcidas_private* %17, %struct.cb_pcidas_private** %9, align 8
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CR_CHAN(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CR_RANGE(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %34 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCIDAS_AO_FIFO_CLR_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outw(i32 0, i64 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load i32, i32* @PCIDAS_AO_CHAN_MASK, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @PCIDAS_AO_RANGE_MASK(i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* @PCIDAS_AO_PACER_MASK, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %51 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @PCIDAS_AO_DACEN, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @PCIDAS_AO_RANGE(i32 %55, i32 %56)
  %58 = or i32 %54, %57
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @PCIDAS_AO_CHAN_EN(i32 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* @PCIDAS_AO_START, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %65 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %69 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %72 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PCIDAS_AO_REG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outw(i32 %70, i64 %75)
  %77 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %100, %4
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %95 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCIDAS_AO_FIFO_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outw(i32 %93, i64 %98)
  br label %100

100:                                              ; preds = %87
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %81

103:                                              ; preds = %81
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  ret i32 %113
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PCIDAS_AO_RANGE_MASK(i32) #1

declare dso_local i32 @PCIDAS_AO_RANGE(i32, i32) #1

declare dso_local i32 @PCIDAS_AO_CHAN_EN(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
