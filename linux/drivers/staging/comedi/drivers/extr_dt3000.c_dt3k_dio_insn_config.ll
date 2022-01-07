; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt3k_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3k_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 15, i32* %11, align 4
  br label %21

20:                                               ; preds = %4
  store i32 240, i32* %11, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @comedi_dio_insn_config(%struct.comedi_device* %22, %struct.comedi_subdevice* %23, %struct.comedi_insn* %24, i32* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %21
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 1
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 16
  %42 = ashr i32 %41, 3
  %43 = or i32 %37, %42
  %44 = call i32 @dt3k_dio_config(%struct.comedi_device* %33, i32 %43)
  %45 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %32, %30
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

declare dso_local i32 @dt3k_dio_config(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
