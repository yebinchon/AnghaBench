; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pcl818_private* }
%struct.pcl818_private = type { i32, i64, i64, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }

@TRIG_NONE = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@PCL818_CTRL_DISABLE_TRIG = common dso_local global i32 0, align 4
@PCL818_CTRL_REG = common dso_local global i64 0, align 8
@PCL818_FI_INTCLR = common dso_local global i64 0, align 8
@PCL818_FI_FLUSH = common dso_local global i64 0, align 8
@PCL818_FI_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl818_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl818_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pcl818_private*, align 8
  %7 = alloca %struct.comedi_isadma*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 2
  %11 = load %struct.pcl818_private*, %struct.pcl818_private** %10, align 8
  store %struct.pcl818_private* %11, %struct.pcl818_private** %6, align 8
  %12 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %13 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %12, i32 0, i32 3
  %14 = load %struct.comedi_isadma*, %struct.comedi_isadma** %13, align 8
  store %struct.comedi_isadma* %14, %struct.comedi_isadma** %7, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %8, align 8
  %19 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %20 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %105

24:                                               ; preds = %2
  %25 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %26 = icmp ne %struct.comedi_isadma* %25, null
  br i1 %26, label %27, label %63

27:                                               ; preds = %24
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TRIG_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %49, label %33

33:                                               ; preds = %27
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TRIG_COUNT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %39, %27
  %50 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %51 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %56 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  store i32 0, i32* %3, align 4
  br label %105

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %39, %33
  %59 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @comedi_isadma_disable(i32 %61)
  br label %63

63:                                               ; preds = %58, %24
  %64 = load i32, i32* @PCL818_CTRL_DISABLE_TRIG, align 4
  %65 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PCL818_CTRL_REG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outb(i32 %64, i64 %69)
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @comedi_8254_pacer_enable(i32 %73, i32 1, i32 2, i32 0)
  %75 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %76 = call i32 @pcl818_ai_clear_eoc(%struct.comedi_device* %75)
  %77 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %78 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %63
  %82 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCL818_FI_INTCLR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outb(i32 0, i64 %86)
  %88 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PCL818_FI_FLUSH, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 0, i64 %92)
  %94 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCL818_FI_ENABLE, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outb(i32 0, i64 %98)
  br label %100

100:                                              ; preds = %81, %63
  %101 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %102 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.pcl818_private*, %struct.pcl818_private** %6, align 8
  %104 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %54, %23
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @comedi_isadma_disable(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @pcl818_ai_clear_eoc(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
