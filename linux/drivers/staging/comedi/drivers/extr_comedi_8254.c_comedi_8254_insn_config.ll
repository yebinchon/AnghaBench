; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_8254* }
%struct.comedi_8254 = type { {}*, i64* }
%struct.comedi_insn = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@I8254_MODE0 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @comedi_8254_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_8254_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.comedi_8254*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.comedi_8254*, %struct.comedi_8254** %14, align 8
  store %struct.comedi_8254* %15, %struct.comedi_8254** %10, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.comedi_8254*, %struct.comedi_8254** %10, align 8
  %21 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %88

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %65 [
    i32 129, label %35
    i32 128, label %47
    i32 130, label %59
  ]

35:                                               ; preds = %31
  %36 = load %struct.comedi_8254*, %struct.comedi_8254** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @I8254_MODE0, align 4
  %39 = load i32, i32* @I8254_BINARY, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %36, i32 %37, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %88

46:                                               ; preds = %35
  br label %84

47:                                               ; preds = %31
  %48 = load %struct.comedi_8254*, %struct.comedi_8254** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %48, i32 %49, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %88

58:                                               ; preds = %47
  br label %84

59:                                               ; preds = %31
  %60 = load %struct.comedi_8254*, %struct.comedi_8254** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @comedi_8254_status(%struct.comedi_8254* %60, i32 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %62, i32* %64, align 4
  br label %84

65:                                               ; preds = %31
  %66 = load %struct.comedi_8254*, %struct.comedi_8254** %10, align 8
  %67 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %66, i32 0, i32 0
  %68 = bitcast {}** %67 to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**
  %69 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %68, align 8
  %70 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.comedi_8254*, %struct.comedi_8254** %10, align 8
  %73 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %72, i32 0, i32 0
  %74 = bitcast {}** %73 to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**
  %75 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %74, align 8
  %76 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %78 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 %75(%struct.comedi_device* %76, %struct.comedi_subdevice* %77, %struct.comedi_insn* %78, i32* %79)
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %65
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %88

84:                                               ; preds = %59, %58, %46
  %85 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %86 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %81, %71, %56, %44, %28
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_8254_set_mode(%struct.comedi_8254*, i32, i32) #1

declare dso_local i32 @comedi_8254_status(%struct.comedi_8254*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
