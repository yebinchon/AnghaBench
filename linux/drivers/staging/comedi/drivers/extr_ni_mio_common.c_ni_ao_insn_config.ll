; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ni_board_struct = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_ao_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni_board_struct*, align 8
  %11 = alloca %struct.ni_private*, align 8
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.ni_board_struct*, %struct.ni_board_struct** %14, align 8
  store %struct.ni_board_struct* %15, %struct.ni_board_struct** %10, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.ni_private*, %struct.ni_private** %17, align 8
  store %struct.ni_private* %18, %struct.ni_private** %11, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %74 [
    i32 128, label %22
    i32 130, label %58
    i32 129, label %62
  ]

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %54 [
    i32 131, label %26
    i32 132, label %51
  ]

26:                                               ; preds = %22
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %28 = load %struct.ni_board_struct*, %struct.ni_board_struct** %10, align 8
  %29 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %27, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = add i32 1, %32
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %37 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %42 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %40, %26
  br label %57

51:                                               ; preds = %22
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 0, i32* %53, align 4
  br label %57

54:                                               ; preds = %22
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %78

57:                                               ; preds = %51, %50
  store i32 0, i32* %5, align 4
  br label %78

58:                                               ; preds = %4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = call i32 @ni_ao_arm(%struct.comedi_device* %59, %struct.comedi_subdevice* %60)
  store i32 %61, i32* %5, align 4
  br label %78

62:                                               ; preds = %4
  %63 = load %struct.ni_board_struct*, %struct.ni_board_struct** %10, align 8
  %64 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = mul i32 %65, %68
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 0, i32* %73, align 4
  store i32 0, i32* %5, align 4
  br label %78

74:                                               ; preds = %4
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %62, %58, %57, %54
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @comedi_samples_to_bytes(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @ni_ao_arm(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
