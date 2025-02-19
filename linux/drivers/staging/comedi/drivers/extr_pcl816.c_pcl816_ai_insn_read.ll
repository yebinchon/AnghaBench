; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@PCL816_CTRL_SOFT_TRIG = common dso_local global i32 0, align 4
@PCL816_CTRL_REG = common dso_local global i64 0, align 8
@pcl816_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pcl816_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl816_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_RANGE(i32 %19)
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @PCL816_CTRL_SOFT_TRIG, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCL816_CTRL_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i32 %21, i64 %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @pcl816_ai_set_chan_range(%struct.comedi_device* %28, i32 %29, i32 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @pcl816_ai_set_chan_scan(%struct.comedi_device* %32, i32 %33, i32 %34)
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %63, %4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = call i32 @pcl816_ai_clear_eoc(%struct.comedi_device* %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %46 = call i32 @pcl816_ai_soft_trig(%struct.comedi_device* %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %49 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %50 = load i32, i32* @pcl816_ai_eoc, align 4
  %51 = call i32 @comedi_timeout(%struct.comedi_device* %47, %struct.comedi_subdevice* %48, %struct.comedi_insn* %49, i32 %50, i32 0)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %66

55:                                               ; preds = %42
  %56 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %58 = call i32 @pcl816_ai_get_sample(%struct.comedi_device* %56, %struct.comedi_subdevice* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %36

66:                                               ; preds = %54, %36
  %67 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCL816_CTRL_REG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 0, i64 %71)
  %73 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %74 = call i32 @pcl816_ai_clear_eoc(%struct.comedi_device* %73)
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %11, align 4
  br label %83

79:                                               ; preds = %66
  %80 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  br label %83

83:                                               ; preds = %79, %77
  %84 = phi i32 [ %78, %77 ], [ %82, %79 ]
  ret i32 %84
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pcl816_ai_set_chan_range(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @pcl816_ai_set_chan_scan(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @pcl816_ai_clear_eoc(%struct.comedi_device*) #1

declare dso_local i32 @pcl816_ai_soft_trig(%struct.comedi_device*) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @pcl816_ai_get_sample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
