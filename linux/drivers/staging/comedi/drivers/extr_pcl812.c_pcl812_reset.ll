; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pcl812_private*, %struct.pcl812_board* }
%struct.pcl812_private = type { i32, i32 }
%struct.pcl812_board = type { i32, i64 }

@PCL812_CTRL_DISABLE_TRIG = common dso_local global i32 0, align 4
@PCL812_CTRL_REG = common dso_local global i64 0, align 8
@PCL812_DO_MSB_REG = common dso_local global i64 0, align 8
@PCL812_DO_LSB_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pcl812_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl812_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcl812_board*, align 8
  %4 = alloca %struct.pcl812_private*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 2
  %8 = load %struct.pcl812_board*, %struct.pcl812_board** %7, align 8
  store %struct.pcl812_board* %8, %struct.pcl812_board** %3, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = load %struct.pcl812_private*, %struct.pcl812_private** %10, align 8
  store %struct.pcl812_private* %11, %struct.pcl812_private** %4, align 8
  %12 = load %struct.pcl812_private*, %struct.pcl812_private** %4, align 8
  %13 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCL812_CTRL_DISABLE_TRIG, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCL812_CTRL_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 %16, i64 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = call i32 @pcl812_ai_clear_eoc(%struct.comedi_device* %23)
  %25 = call i32 @CR_PACK(i32 16, i32 0, i32 0)
  %26 = load %struct.pcl812_private*, %struct.pcl812_private** %4, align 8
  %27 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = call i32 @CR_PACK(i32 0, i32 0, i32 0)
  %30 = call i32 @pcl812_ai_set_chan_range(%struct.comedi_device* %28, i32 %29, i32 0)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %52, %1
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.pcl812_board*, %struct.pcl812_board** %3, align 8
  %34 = getelementptr inbounds %struct.pcl812_board, %struct.pcl812_board* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @PCL812_AO_LSB_REG(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @outb(i32 0, i64 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @PCL812_AO_MSB_REG(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @outb(i32 0, i64 %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load %struct.pcl812_board*, %struct.pcl812_board** %3, align 8
  %57 = getelementptr inbounds %struct.pcl812_board, %struct.pcl812_board* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCL812_DO_MSB_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i32 0, i64 %65)
  %67 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCL812_DO_LSB_REG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 0, i64 %71)
  br label %73

73:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pcl812_ai_clear_eoc(%struct.comedi_device*) #1

declare dso_local i32 @CR_PACK(i32, i32, i32) #1

declare dso_local i32 @pcl812_ai_set_chan_range(%struct.comedi_device*, i32, i32) #1

declare dso_local i64 @PCL812_AO_LSB_REG(i32) #1

declare dso_local i64 @PCL812_AO_MSB_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
