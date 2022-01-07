; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_do_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_do_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni6527_do_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni6527_do_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  br i1 %15, label %16, label %62

16:                                               ; preds = %4
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, 16777215
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 255
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 255
  %27 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @NI6527_DO_REG(i32 0)
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeb(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %24, %16
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 65280
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = lshr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @NI6527_DO_REG(i32 1)
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writeb(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %37, %33
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 16711680
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @NI6527_DO_REG(i32 2)
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writeb(i32 %54, i64 %59)
  br label %61

61:                                               ; preds = %51, %47
  br label %62

62:                                               ; preds = %61, %4
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  ret i32 %70
}

declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @NI6527_DO_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
