; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_nofifo_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_nofifo_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i32, i64, i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@PCIDAS_AO_UPDATE_BOTH = common dso_local global i32 0, align 4
@PCIDAS_AO_DACEN = common dso_local global i32 0, align 4
@PCIDAS_AO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcidas_ao_nofifo_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ao_nofifo_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %33 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i32, i32* @PCIDAS_AO_UPDATE_BOTH, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @PCIDAS_AO_RANGE_MASK(i32 %38)
  %40 = or i32 %37, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %43 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @PCIDAS_AO_DACEN, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @PCIDAS_AO_RANGE(i32 %47, i32 %48)
  %50 = or i32 %46, %49
  %51 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %52 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %56 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %59 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCIDAS_AO_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outw(i32 %57, i64 %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %88, %4
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %82 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @PCIDAS_AO_DATA_REG(i32 %84)
  %86 = add nsw i64 %83, %85
  %87 = call i32 @outw(i32 %80, i64 %86)
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %68

91:                                               ; preds = %68
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %100 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  ret i32 %101
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PCIDAS_AO_RANGE_MASK(i32) #1

declare dso_local i32 @PCIDAS_AO_RANGE(i32, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @PCIDAS_AO_DATA_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
