; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcimdas.c_cb_pcimdas_counter_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcimdas.c_cb_pcimdas_counter_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcimdas_private* }
%struct.cb_pcimdas_private = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@PCIMDAS_USER_CNTR_CTR1_CLK_SEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCIMDAS_USER_CNTR_REG = common dso_local global i64 0, align 8
@I8254_OSC_BASE_100KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcimdas_counter_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcimdas_counter_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cb_pcimdas_private*, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %13, align 8
  store %struct.cb_pcimdas_private* %14, %struct.cb_pcimdas_private** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %59 [
    i32 128, label %18
    i32 129, label %36
  ]

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %25 [
    i32 0, label %22
    i32 1, label %24
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @PCIMDAS_USER_CNTR_CTR1_CLK_SEL, align 4
  store i32 %23, i32* %11, align 4
  br label %28

24:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %66

28:                                               ; preds = %24, %22
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %10, align 8
  %31 = getelementptr inbounds %struct.cb_pcimdas_private, %struct.cb_pcimdas_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCIMDAS_USER_CNTR_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 %29, i64 %34)
  br label %62

36:                                               ; preds = %4
  %37 = load %struct.cb_pcimdas_private*, %struct.cb_pcimdas_private** %10, align 8
  %38 = getelementptr inbounds %struct.cb_pcimdas_private, %struct.cb_pcimdas_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCIMDAS_USER_CNTR_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @inb(i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @PCIMDAS_USER_CNTR_CTR1_CLK_SEL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @I8254_OSC_BASE_100KHZ, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %50, i32* %52, align 4
  br label %58

53:                                               ; preds = %36
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 1, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %47
  br label %62

59:                                               ; preds = %4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %66

62:                                               ; preds = %58, %28
  %63 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %64 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %59, %25
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
