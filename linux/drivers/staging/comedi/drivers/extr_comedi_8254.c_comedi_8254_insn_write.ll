; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_8254* }
%struct.comedi_8254 = type { i64* }
%struct.comedi_insn = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @comedi_8254_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_8254_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.comedi_8254*, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.comedi_8254*, %struct.comedi_8254** %13, align 8
  store %struct.comedi_8254* %14, %struct.comedi_8254** %10, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.comedi_8254*, %struct.comedi_8254** %10, align 8
  %20 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %51

30:                                               ; preds = %4
  %31 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %32 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.comedi_8254*, %struct.comedi_8254** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %40 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @comedi_8254_write(%struct.comedi_8254* %36, i32 %37, i32 %45)
  br label %47

47:                                               ; preds = %35, %30
  %48 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %27
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_8254_write(%struct.comedi_8254*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
