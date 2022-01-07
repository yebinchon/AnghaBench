; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mf6x4.c_mf6x4_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mf6x4.c_mf6x4_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.mf6x4_private* }
%struct.mf6x4_private = type { i32 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@MF6X4_GPIOC_LDAC = common dso_local global i32 0, align 4
@MF6X4_GPIOC_DACEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @mf6x4_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf6x4_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mf6x4_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.mf6x4_private*, %struct.mf6x4_private** %15, align 8
  store %struct.mf6x4_private* %16, %struct.mf6x4_private** %9, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.mf6x4_private*, %struct.mf6x4_private** %9, align 8
  %29 = getelementptr inbounds %struct.mf6x4_private, %struct.mf6x4_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ioread32(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @MF6X4_GPIOC_LDAC, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* @MF6X4_GPIOC_DACEN, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.mf6x4_private*, %struct.mf6x4_private** %9, align 8
  %39 = getelementptr inbounds %struct.mf6x4_private, %struct.mf6x4_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @iowrite32(i32 %37, i32 %40)
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %62, %4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @MF6X4_DAC_REG(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = call i32 @iowrite16(i32 %54, i64 %60)
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %42

65:                                               ; preds = %42
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  ret i32 %75
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i64 @MF6X4_DAC_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
