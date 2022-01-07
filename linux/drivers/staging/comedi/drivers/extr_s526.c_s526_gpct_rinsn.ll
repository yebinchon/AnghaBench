; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_rinsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s526_gpct_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s526_gpct_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CR_CHAN(i32 %13)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %29, %4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @s526_gpct_read(%struct.comedi_device* %22, i32 %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  ret i32 %35
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @s526_gpct_read(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
