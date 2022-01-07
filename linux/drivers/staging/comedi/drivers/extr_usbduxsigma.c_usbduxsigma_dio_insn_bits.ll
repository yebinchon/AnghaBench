; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32*, i32*, i32 }
%struct.comedi_subdevice = type { i32, i32 }
%struct.comedi_insn = type { i32 }

@USBDUXSIGMA_DIO_BITS_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @usbduxsigma_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.usbduxsigma_private*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %12, align 8
  store %struct.usbduxsigma_private* %13, %struct.usbduxsigma_private** %9, align 8
  %14 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %15 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %17, i32* %18)
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %25 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  %32 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %33 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32 %31, i32* %35, align 4
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %42 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %40, i32* %44, align 4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %51 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  store i32 %49, i32* %53, align 4
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %60 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32 %58, i32* %62, align 4
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %69 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  store i32 %67, i32* %71, align 4
  %72 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %73 = load i32, i32* @USBDUXSIGMA_DIO_BITS_CMD, align 4
  %74 = call i32 @usbbuxsigma_send_cmd(%struct.comedi_device* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %4
  br label %115

78:                                               ; preds = %4
  %79 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %80 = load i32, i32* @USBDUXSIGMA_DIO_BITS_CMD, align 4
  %81 = call i32 @usbduxsigma_receive_cmd(%struct.comedi_device* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %115

85:                                               ; preds = %78
  %86 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %87 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %92 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = or i32 %90, %96
  %98 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %99 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 16
  %104 = or i32 %97, %103
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %85, %84, %77
  %116 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  %117 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %116, i32 0, i32 2
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %10, align 4
  ret i32 %119
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @usbbuxsigma_send_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @usbduxsigma_receive_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
