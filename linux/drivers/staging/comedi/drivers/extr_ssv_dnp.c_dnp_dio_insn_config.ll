; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@PAMR = common dso_local global i32 0, align 4
@CSCIR = common dso_local global i32 0, align 4
@PBMR = common dso_local global i32 0, align 4
@PCMR = common dso_local global i32 0, align 4
@CSCDR = common dso_local global i32 0, align 4
@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dnp_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnp_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @comedi_dio_insn_config(%struct.comedi_device* %18, %struct.comedi_subdevice* %19, %struct.comedi_insn* %20, i32* %21, i32 0)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ult i32 %28, 8
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @PAMR, align 4
  %34 = load i32, i32* @CSCIR, align 4
  %35 = call i32 @outb(i32 %33, i32 %34)
  br label %55

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = icmp ult i32 %37, 16
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = sub i32 %40, 8
  %42 = shl i32 1, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @PBMR, align 4
  %44 = load i32, i32* @CSCIR, align 4
  %45 = call i32 @outb(i32 %43, i32 %44)
  br label %54

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = sub i32 %47, 16
  %49 = mul i32 %48, 2
  %50 = shl i32 1, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @PCMR, align 4
  %52 = load i32, i32* @CSCIR, align 4
  %53 = call i32 @outb(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %39
  br label %55

55:                                               ; preds = %54, %30
  %56 = load i32, i32* @CSCDR, align 4
  %57 = call i32 @inb(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @COMEDI_OUTPUT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %72

67:                                               ; preds = %55
  %68 = load i32, i32* %11, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @CSCDR, align 4
  %75 = call i32 @outb(i32 %73, i32 %74)
  %76 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %77 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %25
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
