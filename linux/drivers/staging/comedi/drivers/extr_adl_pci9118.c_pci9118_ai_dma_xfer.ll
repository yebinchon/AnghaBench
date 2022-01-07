; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_dma_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_dma_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci9118_private* }
%struct.pci9118_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i16*, i32)* @pci9118_ai_dma_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9118_ai_dma_xfer(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i16* %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci9118_private*, align 8
  %10 = alloca %struct.comedi_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i16* %2, i16** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.pci9118_private*, %struct.pci9118_private** %17, align 8
  store %struct.pci9118_private* %18, %struct.pci9118_private** %9, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.comedi_cmd* %22, %struct.comedi_cmd** %10, align 8
  %23 = load %struct.pci9118_private*, %struct.pci9118_private** %9, align 8
  %24 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %26, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.pci9118_private*, %struct.pci9118_private** %9, align 8
  %33 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %31, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.pci9118_private*, %struct.pci9118_private** %9, align 8
  %37 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %46 = load i16*, i16** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %45, i16* %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %14, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %14, align 4
  br label %112

52:                                               ; preds = %4
  br label %53

53:                                               ; preds = %104, %52
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %111

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = sub i32 %61, %62
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %67, %60
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %111

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sub i32 %85, %86
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ugt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %91, %84
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %95 = load i16*, i16** %7, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %94, i16* %95, i32 %96)
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %93, %80
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %53

111:                                              ; preds = %78, %53
  br label %112

112:                                              ; preds = %111, %44
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = urem i32 %113, %114
  %116 = load %struct.pci9118_private*, %struct.pci9118_private** %9, align 8
  %117 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  ret void
}

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
