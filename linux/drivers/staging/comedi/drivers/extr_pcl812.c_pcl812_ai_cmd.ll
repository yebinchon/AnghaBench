; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pcl812_private* }
%struct.pcl812_private = type { i32, i32, i32, i64, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64*, i32, i32, i32 }

@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@PCL812_CTRL_PACER_DMA_TRIG = common dso_local global i32 0, align 4
@PCL812_CTRL_PACER_EOC_TRIG = common dso_local global i32 0, align 4
@PCL812_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl812_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl812_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pcl812_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 2
  %12 = load %struct.pcl812_private*, %struct.pcl812_private** %11, align 8
  store %struct.pcl812_private* %12, %struct.pcl812_private** %5, align 8
  %13 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %14 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %13, i32 0, i32 4
  %15 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  store %struct.comedi_isadma* %15, %struct.comedi_isadma** %6, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pcl812_ai_set_chan_range(%struct.comedi_device* %20, i64 %25, i32 1)
  %27 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %28 = icmp ne %struct.comedi_isadma* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %2
  %30 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %31 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %56, %29
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %43, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %54 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %59

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %32

59:                                               ; preds = %52, %32
  br label %63

60:                                               ; preds = %2
  %61 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %62 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %59
  %64 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %65 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %63
  %73 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %74 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %81 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %82, %63
  %84 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %85 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %93 = call i32 @pcl812_ai_setup_dma(%struct.comedi_device* %91, %struct.comedi_subdevice* %92, i32 0)
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %107 [
    i32 128, label %98
  ]

98:                                               ; preds = %94
  %99 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %100 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @comedi_8254_update_divisors(i32 %101)
  %103 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @comedi_8254_pacer_enable(i32 %105, i32 1, i32 2, i32 1)
  br label %107

107:                                              ; preds = %94, %98
  %108 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %109 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @PCL812_CTRL_PACER_DMA_TRIG, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %120

116:                                              ; preds = %107
  %117 = load i32, i32* @PCL812_CTRL_PACER_EOC_TRIG, align 4
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.pcl812_private*, %struct.pcl812_private** %5, align 8
  %122 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PCL812_CTRL_REG, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outb(i32 %125, i64 %130)
  ret i32 0
}

declare dso_local i32 @pcl812_ai_set_chan_range(%struct.comedi_device*, i64, i32) #1

declare dso_local i32 @pcl812_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
