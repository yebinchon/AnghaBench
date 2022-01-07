; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_write_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_ai_write_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcl818_private* }
%struct.pcl818_private = type { i32*, i64, i64, i64, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"A/D mode1/3 %s - channel dropout %d!=%d !\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32)* @pcl818_ai_write_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl818_ai_write_sample(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcl818_private*, align 8
  %11 = alloca %struct.comedi_cmd*, align 8
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.pcl818_private*, %struct.pcl818_private** %14, align 8
  store %struct.pcl818_private* %15, %struct.pcl818_private** %10, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %11, align 8
  %20 = load %struct.pcl818_private*, %struct.pcl818_private** %10, align 8
  %21 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.pcl818_private*, %struct.pcl818_private** %10, align 8
  %24 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pcl818_private*, %struct.pcl818_private** %10, align 8
  %36 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %47

40:                                               ; preds = %31
  %41 = load %struct.pcl818_private*, %struct.pcl818_private** %10, align 8
  %42 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %47

47:                                               ; preds = %40, %39
  %48 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %39 ], [ %46, %40 ]
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 8
  store i32 0, i32* %5, align 4
  br label %101

59:                                               ; preds = %4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %60, i32* %9, i32 1)
  %62 = load %struct.pcl818_private*, %struct.pcl818_private** %10, align 8
  %63 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.pcl818_private*, %struct.pcl818_private** %10, align 8
  %67 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pcl818_private*, %struct.pcl818_private** %10, align 8
  %70 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp uge i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load %struct.pcl818_private*, %struct.pcl818_private** %10, align 8
  %75 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %59
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TRIG_COUNT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %87, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i32, i32* @COMEDI_CB_EOA, align 4
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %93
  store i32 %99, i32* %97, align 8
  store i32 0, i32* %5, align 4
  br label %101

100:                                              ; preds = %82, %76
  store i32 1, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %92, %47
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
