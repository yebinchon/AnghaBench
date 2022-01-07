; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_samples_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_samples_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci9118_private* }
%struct.pci9118_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @pci9118_ai_samples_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_samples_ready(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci9118_private*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load %struct.pci9118_private*, %struct.pci9118_private** %18, align 8
  store %struct.pci9118_private* %19, %struct.pci9118_private** %8, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.comedi_cmd* %23, %struct.comedi_cmd** %9, align 8
  %24 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %25 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %27, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %34 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %38 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %4, align 4
  br label %120

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %12, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul i32 %51, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %12, align 4
  %58 = mul i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %111, %47
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %118

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sub i32 %69, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  br label %118

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %64
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sub i32 %93, %94
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %99, %92
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sub i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %101, %88
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %61

118:                                              ; preds = %86, %61
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %45
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
