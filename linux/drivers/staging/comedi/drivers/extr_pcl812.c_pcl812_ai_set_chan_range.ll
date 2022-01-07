; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_set_chan_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_set_chan_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pcl812_private* }
%struct.pcl812_private = type { i32, i32, i32, i64, i64 }

@PCL812_MUX_CS0 = common dso_local global i32 0, align 4
@PCL812_MUX_CS1 = common dso_local global i32 0, align 4
@PCL812_MUX_REG = common dso_local global i64 0, align 8
@PCL812_RANGE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i8)* @pcl812_ai_set_chan_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl812_ai_set_chan_range(%struct.comedi_device* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.pcl812_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.pcl812_private*, %struct.pcl812_private** %12, align 8
  store %struct.pcl812_private* %13, %struct.pcl812_private** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @CR_RANGE(i32 %16)
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.pcl812_private*, %struct.pcl812_private** %7, align 8
  %20 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %85

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.pcl812_private*, %struct.pcl812_private** %7, align 8
  %27 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pcl812_private*, %struct.pcl812_private** %7, align 8
  %29 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %24
  %33 = load %struct.pcl812_private*, %struct.pcl812_private** %7, align 8
  %34 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @PCL812_MUX_CS0, align 4
  %39 = load i32, i32* @PCL812_MUX_CS1, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %55

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @PCL812_MUX_CS0, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @PCL812_MUX_CS1, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @PCL812_MUX_CHAN(i32 %58)
  %60 = or i32 %57, %59
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCL812_MUX_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i32 %60, i64 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.pcl812_private*, %struct.pcl812_private** %7, align 8
  %69 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %67, %70
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PCL812_RANGE_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outb(i32 %71, i64 %76)
  %78 = load i8, i8* %6, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %56
  %81 = load %struct.pcl812_private*, %struct.pcl812_private** %7, align 8
  %82 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @udelay(i32 %83)
  br label %85

85:                                               ; preds = %23, %80, %56
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @PCL812_MUX_CHAN(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
