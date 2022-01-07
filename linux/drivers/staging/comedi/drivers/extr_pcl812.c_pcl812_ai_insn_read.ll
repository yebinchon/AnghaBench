; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pcl812_private* }
%struct.pcl812_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@PCL812_CTRL_SOFT_TRIG = common dso_local global i32 0, align 4
@PCL812_CTRL_REG = common dso_local global i64 0, align 8
@pcl812_ai_eoc = common dso_local global i32 0, align 4
@PCL812_CTRL_DISABLE_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pcl812_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl812_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pcl812_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.pcl812_private*, %struct.pcl812_private** %13, align 8
  store %struct.pcl812_private* %14, %struct.pcl812_private** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.pcl812_private*, %struct.pcl812_private** %9, align 8
  %16 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCL812_CTRL_SOFT_TRIG, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCL812_CTRL_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outb(i32 %19, i64 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pcl812_ai_set_chan_range(%struct.comedi_device* %26, i32 %29, i32 1)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %58, %4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %31
  %38 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %39 = call i32 @pcl812_ai_clear_eoc(%struct.comedi_device* %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %41 = call i32 @pcl812_ai_soft_trig(%struct.comedi_device* %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %44 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %45 = load i32, i32* @pcl812_ai_eoc, align 4
  %46 = call i32 @comedi_timeout(%struct.comedi_device* %42, %struct.comedi_subdevice* %43, %struct.comedi_insn* %44, i32 %45, i32 0)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %61

50:                                               ; preds = %37
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %53 = call i32 @pcl812_ai_get_sample(%struct.comedi_device* %51, %struct.comedi_subdevice* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %31

61:                                               ; preds = %49, %31
  %62 = load %struct.pcl812_private*, %struct.pcl812_private** %9, align 8
  %63 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PCL812_CTRL_DISABLE_TRIG, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCL812_CTRL_REG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %74 = call i32 @pcl812_ai_clear_eoc(%struct.comedi_device* %73)
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = load i32, i32* %10, align 4
  br label %83

79:                                               ; preds = %61
  %80 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  br label %83

83:                                               ; preds = %79, %77
  %84 = phi i32 [ %78, %77 ], [ %82, %79 ]
  ret i32 %84
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pcl812_ai_set_chan_range(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @pcl812_ai_clear_eoc(%struct.comedi_device*) #1

declare dso_local i32 @pcl812_ai_soft_trig(%struct.comedi_device*) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @pcl812_ai_get_sample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
