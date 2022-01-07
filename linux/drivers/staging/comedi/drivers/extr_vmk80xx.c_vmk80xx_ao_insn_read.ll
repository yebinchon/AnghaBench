; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_ao_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_ao_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i32*, i32, i32* }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@VMK8061_AO_REG = common dso_local global i32 0, align 4
@VMK8061_CMD_RD_AO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_ao_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_ao_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmk80xx_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %14, align 8
  store %struct.vmk80xx_private* %15, %struct.vmk80xx_private** %9, align 8
  %16 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %17 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %16, i32 0, i32 1
  %18 = call i32 @down(i32* %17)
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @VMK8061_AO_REG, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @VMK8061_CMD_RD_AO, align 4
  %26 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %27 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %25, i32* %29, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %55, %4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = call i64 @vmk80xx_read_packet(%struct.comedi_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %58

41:                                               ; preds = %36
  %42 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %43 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %30

58:                                               ; preds = %40, %30
  %59 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %60 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %59, i32 0, i32 1
  %61 = call i32 @up(i32* %60)
  %62 = load i32, i32* %12, align 4
  ret i32 %62
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @vmk80xx_read_packet(%struct.comedi_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
