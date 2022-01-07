; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@PADR = common dso_local global i32 0, align 4
@CSCIR = common dso_local global i32 0, align 4
@CSCDR = common dso_local global i32 0, align 4
@PBDR = common dso_local global i32 0, align 4
@PCDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dnp_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnp_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %11, i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %4
  %17 = load i32, i32* @PADR, align 4
  %18 = load i32, i32* @CSCIR, align 4
  %19 = call i32 @outb(i32 %17, i32 %18)
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* @CSCDR, align 4
  %25 = call i32 @outb(i32 %23, i32 %24)
  %26 = load i32, i32* @PBDR, align 4
  %27 = load i32, i32* @CSCIR, align 4
  %28 = call i32 @outb(i32 %26, i32 %27)
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = load i32, i32* @CSCDR, align 4
  %35 = call i32 @outb(i32 %33, i32 %34)
  %36 = load i32, i32* @PCDR, align 4
  %37 = load i32, i32* @CSCIR, align 4
  %38 = call i32 @outb(i32 %36, i32 %37)
  %39 = load i32, i32* @CSCDR, align 4
  %40 = call i32 @inb(i32 %39)
  %41 = and i32 %40, 15
  store i32 %41, i32* %10, align 4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 12
  %46 = and i32 %45, 240
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CSCDR, align 4
  %50 = call i32 @outb(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %16, %4
  %52 = load i32, i32* @PADR, align 4
  %53 = load i32, i32* @CSCIR, align 4
  %54 = call i32 @outb(i32 %52, i32 %53)
  %55 = load i32, i32* @CSCDR, align 4
  %56 = call i32 @inb(i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @PBDR, align 4
  %58 = load i32, i32* @CSCIR, align 4
  %59 = call i32 @outb(i32 %57, i32 %58)
  %60 = load i32, i32* @CSCDR, align 4
  %61 = call i32 @inb(i32 %60)
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @PCDR, align 4
  %66 = load i32, i32* @CSCIR, align 4
  %67 = call i32 @outb(i32 %65, i32 %66)
  %68 = load i32, i32* @CSCDR, align 4
  %69 = call i32 @inb(i32 %68)
  %70 = and i32 %69, 240
  %71 = shl i32 %70, 12
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  ret i32 %79
}

declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
