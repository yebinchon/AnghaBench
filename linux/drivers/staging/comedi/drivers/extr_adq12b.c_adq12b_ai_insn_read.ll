; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adq12b.c_adq12b_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adq12b.c_adq12b_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.adq12b_private* }
%struct.adq12b_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@ADQ12B_CTREG = common dso_local global i64 0, align 8
@ADQ12B_ADLOW = common dso_local global i64 0, align 8
@adq12b_ai_eoc = common dso_local global i32 0, align 4
@ADQ12B_ADHIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @adq12b_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adq12b_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.adq12b_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.adq12b_private*, %struct.adq12b_private** %17, align 8
  store %struct.adq12b_private* %18, %struct.adq12b_private** %10, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_RANGE(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @ADQ12B_CTREG_RANGE(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @ADQ12B_CTREG_CHAN(i32 %29)
  %31 = or i32 %28, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.adq12b_private*, %struct.adq12b_private** %10, align 8
  %34 = getelementptr inbounds %struct.adq12b_private, %struct.adq12b_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ADQ12B_CTREG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %38, i64 %43)
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.adq12b_private*, %struct.adq12b_private** %10, align 8
  %47 = getelementptr inbounds %struct.adq12b_private, %struct.adq12b_private* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = call i32 @usleep_range(i32 50, i32 100)
  br label %49

49:                                               ; preds = %37, %4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ADQ12B_ADLOW, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @inb(i64 %54)
  store i32 %55, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %93, %49
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %59 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %56
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %66 = load i32, i32* @adq12b_ai_eoc, align 4
  %67 = call i32 @comedi_timeout(%struct.comedi_device* %63, %struct.comedi_subdevice* %64, %struct.comedi_insn* %65, i32 %66, i32 0)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %5, align 4
  br label %100

72:                                               ; preds = %62
  %73 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ADQ12B_ADHIG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @inb(i64 %77)
  %79 = shl i32 %78, 8
  store i32 %79, i32* %13, align 4
  %80 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ADQ12B_ADLOW, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @inb(i64 %84)
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %72
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %56

96:                                               ; preds = %56
  %97 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %98 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %70
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @ADQ12B_CTREG_RANGE(i32) #1

declare dso_local i32 @ADQ12B_CTREG_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
