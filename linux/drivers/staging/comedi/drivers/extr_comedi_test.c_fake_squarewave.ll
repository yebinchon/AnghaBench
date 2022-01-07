; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_fake_squarewave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_fake_squarewave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.waveform_private* }
%struct.comedi_subdevice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_krange* }
%struct.comedi_krange = type { i64, i64 }
%struct.waveform_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.comedi_device*, i32, i32)* @fake_squarewave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @fake_squarewave(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.waveform_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_krange*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.waveform_private*, %struct.waveform_private** %13, align 8
  store %struct.waveform_private* %14, %struct.waveform_private** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %16, align 8
  store %struct.comedi_subdevice* %17, %struct.comedi_subdevice** %8, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %9, align 4
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.comedi_krange*, %struct.comedi_krange** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %26, i64 %28
  store %struct.comedi_krange* %29, %struct.comedi_krange** %11, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.waveform_private*, %struct.waveform_private** %7, align 8
  %34 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.comedi_krange*, %struct.comedi_krange** %11, align 8
  %40 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.comedi_krange*, %struct.comedi_krange** %11, align 8
  %43 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = call i32 @do_div(i32 %38, i64 %45)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.waveform_private*, %struct.waveform_private** %7, align 8
  %49 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 2
  %52 = icmp ult i32 %47, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %3
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %57
  br label %77

63:                                               ; preds = %3
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ugt i32 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %63
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i32, i32* %10, align 4
  %79 = trunc i32 %78 to i16
  ret i16 %79
}

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
