; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_pwm_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_pwm_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32)* @usbduxsigma_pwm_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxsigma_pwm_pattern(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usbduxsigma_private*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %19, align 8
  store %struct.usbduxsigma_private* %20, %struct.usbduxsigma_private** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 1, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %12, align 1
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 16, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %13, align 1
  %27 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %11, align 8
  %28 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %14, align 8
  %33 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %11, align 8
  %34 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %82, %5
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %36
  %41 = load i8*, i8** %14, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %17, align 1
  %43 = load i8, i8* %12, align 1
  %44 = sext i8 %43 to i32
  %45 = xor i32 %44, -1
  %46 = load i8, i8* %17, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %17, align 1
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load i8, i8* %12, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* %17, align 1
  %57 = sext i8 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %17, align 1
  br label %60

60:                                               ; preds = %53, %40
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i8, i8* %13, align 1
  %65 = sext i8 %64 to i32
  %66 = xor i32 %65, -1
  %67 = load i8, i8* %17, align 1
  %68 = sext i8 %67 to i32
  %69 = and i32 %68, %66
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %17, align 1
  br label %78

71:                                               ; preds = %60
  %72 = load i8, i8* %13, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* %17, align 1
  %75 = sext i8 %74 to i32
  %76 = or i32 %75, %73
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %17, align 1
  br label %78

78:                                               ; preds = %71, %63
  %79 = load i8, i8* %17, align 1
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %14, align 8
  store i8 %79, i8* %80, align 1
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %36

85:                                               ; preds = %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
