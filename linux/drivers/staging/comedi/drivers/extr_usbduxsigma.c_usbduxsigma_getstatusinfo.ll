; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_getstatusinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_getstatusinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private*, %struct.comedi_subdevice* }
%struct.usbduxsigma_private = type { i32*, i64 }
%struct.comedi_subdevice = type { i32 }

@USBDUXSIGMA_SINGLE_AD_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @usbduxsigma_getstatusinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_getstatusinfo(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.usbduxsigma_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  store %struct.comedi_subdevice* %13, %struct.comedi_subdevice** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %15, align 8
  store %struct.usbduxsigma_private* %16, %struct.usbduxsigma_private** %7, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %18 [
    i32 0, label %19
    i32 1, label %20
    i32 2, label %21
    i32 3, label %22
    i32 4, label %23
    i32 5, label %24
  ]

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %2, %18
  store i32 0, i32* %8, align 4
  br label %25

20:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %25

21:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %25

22:                                               ; preds = %2
  store i32 8, i32* %8, align 4
  br label %25

23:                                               ; preds = %2
  store i32 16, i32* %8, align 4
  br label %25

24:                                               ; preds = %2
  store i32 32, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19
  %26 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %27 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 18, i32* %29, align 4
  %30 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %31 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 128, i32* %33, align 4
  %34 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %35 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 0, i32* %37, align 4
  %38 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %39 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32 0, i32* %41, align 4
  %42 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %43 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %48 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  store i32 %46, i32* %50, align 4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = load i32, i32* @USBDUXSIGMA_SINGLE_AD_CMD, align 4
  %53 = call i32 @usbbuxsigma_send_cmd(%struct.comedi_device* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %25
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %80

58:                                               ; preds = %25
  %59 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %60 = load i32, i32* @USBDUXSIGMA_SINGLE_AD_CMD, align 4
  %61 = call i32 @usbduxsigma_receive_cmd(%struct.comedi_device* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %80

66:                                               ; preds = %58
  %67 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %68 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = inttoptr i64 %70 to i32*
  %72 = call i32 @get_unaligned(i32* %71)
  %73 = call i32 @be32_to_cpu(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 16777215
  store i32 %75, i32* %9, align 4
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @comedi_offset_munge(%struct.comedi_subdevice* %76, i32 %77)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %66, %64, %56
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @usbbuxsigma_send_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @usbduxsigma_receive_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i64 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
