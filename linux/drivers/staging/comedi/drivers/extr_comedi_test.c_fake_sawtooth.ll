; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_fake_sawtooth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_fake_sawtooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.waveform_private* }
%struct.comedi_subdevice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_krange* }
%struct.comedi_krange = type { i64, i64 }
%struct.waveform_private = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.comedi_device*, i32, i32)* @fake_sawtooth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @fake_sawtooth(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.waveform_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_krange*, align 8
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.waveform_private*, %struct.waveform_private** %14, align 8
  store %struct.waveform_private* %15, %struct.waveform_private** %7, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %17, align 8
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %8, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %9, align 4
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.comedi_krange*, %struct.comedi_krange** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %27, i64 %29
  store %struct.comedi_krange* %30, %struct.comedi_krange** %11, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load %struct.waveform_private*, %struct.waveform_private** %7, align 8
  %35 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.comedi_krange*, %struct.comedi_krange** %11, align 8
  %41 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.comedi_krange*, %struct.comedi_krange** %11, align 8
  %44 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = call i32 @do_div(i32 %39, i64 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %49, 2
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.waveform_private*, %struct.waveform_private** %7, align 8
  %55 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @do_div(i32 %53, i64 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %79

65:                                               ; preds = %3
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %74, %65
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32, i32* %10, align 4
  %81 = trunc i32 %80 to i16
  ret i16 %81
}

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
