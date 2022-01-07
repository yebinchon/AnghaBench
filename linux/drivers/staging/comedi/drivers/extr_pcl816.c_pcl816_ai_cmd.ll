; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, i32, %struct.pcl816_private* }
%struct.pcl816_private = type { i32, i64, i64, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I8254_MODE1 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@PCL816_CTRL_INTEN = common dso_local global i32 0, align 4
@PCL816_CTRL_DMAEN = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@PCL816_CTRL_PACER_TRIG = common dso_local global i32 0, align 4
@PCL816_CTRL_EXT_TRIG = common dso_local global i32 0, align 4
@PCL816_CTRL_REG = common dso_local global i64 0, align 8
@PCL816_STATUS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl816_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl816_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pcl816_private*, align 8
  %7 = alloca %struct.comedi_isadma*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 3
  %13 = load %struct.pcl816_private*, %struct.pcl816_private** %12, align 8
  store %struct.pcl816_private* %13, %struct.pcl816_private** %6, align 8
  %14 = load %struct.pcl816_private*, %struct.pcl816_private** %6, align 8
  %15 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %14, i32 0, i32 3
  %16 = load %struct.comedi_isadma*, %struct.comedi_isadma** %15, align 8
  store %struct.comedi_isadma* %16, %struct.comedi_isadma** %7, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %8, align 8
  %21 = load %struct.pcl816_private*, %struct.pcl816_private** %6, align 8
  %22 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %122

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
  br label %122

43:                                               ; preds = %28
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @pcl816_ai_setup_chanlist(%struct.comedi_device* %44, i32 %47, i32 %48)
  %50 = call i32 @udelay(i32 1)
  %51 = load %struct.pcl816_private*, %struct.pcl816_private** %6, align 8
  %52 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.pcl816_private*, %struct.pcl816_private** %6, align 8
  %54 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.pcl816_private*, %struct.pcl816_private** %6, align 8
  %56 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %61 = call i32 @pcl816_ai_setup_dma(%struct.comedi_device* %59, %struct.comedi_subdevice* %60, i32 0)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @I8254_MODE1, align 4
  %66 = load i32, i32* @I8254_BINARY, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @comedi_8254_set_mode(i32 %64, i32 0, i32 %67)
  %69 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @comedi_8254_write(i32 %71, i32 0, i32 255)
  %73 = call i32 @udelay(i32 1)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @comedi_8254_update_divisors(i32 %76)
  %78 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @comedi_8254_pacer_enable(i32 %80, i32 1, i32 2, i32 1)
  %82 = load i32, i32* @PCL816_CTRL_INTEN, align 4
  %83 = load i32, i32* @PCL816_CTRL_DMAEN, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @PCL816_CTRL_DMASRC_SLOT(i32 0)
  %86 = or i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TRIG_TIMER, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %43
  %93 = load i32, i32* @PCL816_CTRL_PACER_TRIG, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %100

96:                                               ; preds = %43
  %97 = load i32, i32* @PCL816_CTRL_EXT_TRIG, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PCL816_CTRL_REG, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb(i32 %101, i64 %106)
  %108 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 4
  %112 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %111, %114
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PCL816_STATUS_REG, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @outb(i32 %115, i64 %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %100, %40, %25
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @check_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @pcl816_ai_setup_chanlist(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pcl816_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_8254_set_mode(i32, i32, i32) #1

declare dso_local i32 @comedi_8254_write(i32, i32, i32) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @PCL816_CTRL_DMASRC_SLOT(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
