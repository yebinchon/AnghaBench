; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i32, i32*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@VMK8055_CMD_WRT_AD = common dso_local global i32 0, align 4
@VMK8055_AO1_REG = common dso_local global i32 0, align 4
@VMK8055_AO2_REG = common dso_local global i32 0, align 4
@VMK8061_CMD_SET_AO = common dso_local global i32 0, align 4
@VMK8061_AO_REG = common dso_local global i32 0, align 4
@VMK8061_CH_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmk80xx_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %15, align 8
  store %struct.vmk80xx_private* %16, %struct.vmk80xx_private** %9, align 8
  %17 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %18 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %17, i32 0, i32 2
  %19 = call i32 @down(i32* %18)
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_CHAN(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %25 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %36 [
    i32 128, label %27
  ]

27:                                               ; preds = %4
  %28 = load i32, i32* @VMK8055_CMD_WRT_AD, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @VMK8055_AO1_REG, align 4
  store i32 %32, i32* %12, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @VMK8055_AO2_REG, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %45

36:                                               ; preds = %4
  %37 = load i32, i32* @VMK8061_CMD_SET_AO, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @VMK8061_AO_REG, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %41 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @VMK8061_CH_REG, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %35
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %59 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @vmk80xx_write_packet(%struct.comedi_device* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %73

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %46

73:                                               ; preds = %68, %46
  %74 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %75 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %74, i32 0, i32 2
  %76 = call i32 @up(i32* %75)
  %77 = load i32, i32* %13, align 4
  ret i32 %77
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @vmk80xx_write_packet(%struct.comedi_device*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
