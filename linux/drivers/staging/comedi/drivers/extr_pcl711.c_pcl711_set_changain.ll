; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl711.c_pcl711_set_changain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl711.c_pcl711_set_changain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }

@PCL711_AI_GAIN_REG = common dso_local global i64 0, align 8
@AREF_DIFF = common dso_local global i32 0, align 4
@PCL711_MUX_DIFF = common dso_local global i32 0, align 4
@PCL711_MUX_CS0 = common dso_local global i32 0, align 4
@PCL711_MUX_CS1 = common dso_local global i32 0, align 4
@PCL711_MUX_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @pcl711_set_changain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl711_set_changain(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @CR_CHAN(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @CR_RANGE(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @CR_AREF(i32 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @PCL711_AI_GAIN(i32 %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCL711_AI_GAIN_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 %18, i64 %23)
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 8
  br i1 %28, label %29, label %52

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @AREF_DIFF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 7
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @PCL711_MUX_DIFF, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %51

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %40, 8
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @PCL711_MUX_CS0, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @PCL711_MUX_CS1, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %33
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @PCL711_MUX_CHAN(i32 %54)
  %56 = or i32 %53, %55
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCL711_MUX_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 %56, i64 %61)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @PCL711_AI_GAIN(i32) #1

declare dso_local i32 @PCL711_MUX_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
