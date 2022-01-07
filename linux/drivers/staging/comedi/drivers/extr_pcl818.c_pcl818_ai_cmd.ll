; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, i32, %struct.pcl818_private* }
%struct.pcl818_private = type { i32, i64, i64, i64, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@PCL818_CTRL_PACER_TRIG = common dso_local global i32 0, align 4
@PCL818_CTRL_EXT_TRIG = common dso_local global i32 0, align 4
@PCL818_CNTENABLE_REG = common dso_local global i64 0, align 8
@PCL818_CTRL_INTE = common dso_local global i32 0, align 4
@PCL818_CTRL_DMAE = common dso_local global i32 0, align 4
@PCL818_FI_ENABLE = common dso_local global i64 0, align 8
@PCL818_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl818_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl818_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pcl818_private*, align 8
  %7 = alloca %struct.comedi_isadma*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 3
  %13 = load %struct.pcl818_private*, %struct.pcl818_private** %12, align 8
  store %struct.pcl818_private* %13, %struct.pcl818_private** %6, align 8
  %14 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %15 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %14, i32 0, i32 4
  %16 = load %struct.comedi_isadma*, %struct.comedi_isadma** %15, align 8
  store %struct.comedi_isadma* %16, %struct.comedi_isadma** %7, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %22 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %139

28:                                               ; preds = %2
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @check_channel_list(%struct.comedi_device* %29, %struct.comedi_subdevice* %30, i32 %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ult i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %139

43:                                               ; preds = %28
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @pcl818_ai_setup_chanlist(%struct.comedi_device* %44, i32 %47, i32 %48)
  %50 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %51 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %53 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %55 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TRIG_TIMER, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %43
  %62 = load i32, i32* @PCL818_CTRL_PACER_TRIG, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %69

65:                                               ; preds = %43
  %66 = load i32, i32* @PCL818_CTRL_EXT_TRIG, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PCL818_CNTENABLE_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb(i32 0, i64 %74)
  %76 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %77 = icmp ne %struct.comedi_isadma* %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %69
  %79 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %83 = call i32 @pcl818_ai_setup_dma(%struct.comedi_device* %81, %struct.comedi_subdevice* %82, i32 0)
  %84 = load i32, i32* @PCL818_CTRL_INTE, align 4
  %85 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PCL818_CTRL_IRQ(i32 %87)
  %89 = or i32 %84, %88
  %90 = load i32, i32* @PCL818_CTRL_DMAE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %116

94:                                               ; preds = %69
  %95 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %96 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PCL818_FI_ENABLE, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb(i32 1, i64 %104)
  br label %115

106:                                              ; preds = %94
  %107 = load i32, i32* @PCL818_CTRL_INTE, align 4
  %108 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PCL818_CTRL_IRQ(i32 %110)
  %112 = or i32 %107, %111
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %106, %99
  br label %116

116:                                              ; preds = %115, %78
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PCL818_CTRL_REG, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @outb(i32 %117, i64 %122)
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TRIG_TIMER, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %116
  %130 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @comedi_8254_update_divisors(i32 %132)
  %134 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %135 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @comedi_8254_pacer_enable(i32 %136, i32 1, i32 2, i32 1)
  br label %138

138:                                              ; preds = %129, %116
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %40, %25
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @check_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @pcl818_ai_setup_chanlist(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pcl818_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @PCL818_CTRL_IRQ(i32) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
