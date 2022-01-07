; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adq12b.c_adq12b_do_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adq12b.c_adq12b_do_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@ADQ12B_OUTBR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @adq12b_do_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adq12b_do_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %12, i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %10, align 4
  %20 = icmp ult i32 %19, 8
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = lshr i32 %22, %23
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = lshr i32 %30, %31
  %33 = and i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 3
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADQ12B_OUTBR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %27, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %18

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48, %4
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  ret i32 %57
}

declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
