; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_calc_divisors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_calc_divisors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_8254* }
%struct.comedi_8254 = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@TRIG_NOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32*, i32, i32, i32*, i32*, i32)* @pci9118_calc_divisors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9118_calc_divisors(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.comedi_device*, align 8
  %11 = alloca %struct.comedi_subdevice*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.comedi_8254*, align 8
  %20 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %10, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load %struct.comedi_8254*, %struct.comedi_8254** %22, align 8
  store %struct.comedi_8254* %23, %struct.comedi_8254** %19, align 8
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.comedi_cmd* %27, %struct.comedi_cmd** %20, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.comedi_8254*, %struct.comedi_8254** %19, align 8
  %31 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = udiv i32 %29, %32
  %34 = load i32*, i32** %16, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.comedi_8254*, %struct.comedi_8254** %19, align 8
  %38 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = udiv i32 %36, %39
  %41 = load i32*, i32** %17, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %17, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* %44, align 4
  %46 = udiv i32 %43, %45
  %47 = load i32*, i32** %17, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %17, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %9
  %53 = load i32, i32* %15, align 4
  %54 = load i32*, i32** %17, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %9
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.comedi_8254*, %struct.comedi_8254** %19, align 8
  %59 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul i32 %57, %60
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %20, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TRIG_NOW, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %55
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %17, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 2
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 2
  %80 = load i32*, i32** %17, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %81, %68, %55
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %17, align 8
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %84, %86
  %88 = load %struct.comedi_8254*, %struct.comedi_8254** %19, align 8
  %89 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul i32 %87, %90
  %92 = load i32*, i32** %12, align 8
  store i32 %91, i32* %92, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
