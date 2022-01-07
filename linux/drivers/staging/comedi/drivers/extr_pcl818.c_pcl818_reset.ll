; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pcl818_board* }
%struct.pcl818_board = type { i32, i64 }

@PCL818_FI_INTCLR = common dso_local global i64 0, align 8
@PCL818_FI_FLUSH = common dso_local global i64 0, align 8
@PCL818_FI_ENABLE = common dso_local global i64 0, align 8
@PCL818_CTRL_DISABLE_TRIG = common dso_local global i32 0, align 4
@PCL818_CTRL_REG = common dso_local global i64 0, align 8
@PCL818_CNTENABLE_REG = common dso_local global i64 0, align 8
@PCL818_DO_DI_MSB_REG = common dso_local global i64 0, align 8
@PCL818_DO_DI_LSB_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pcl818_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl818_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcl818_board*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 1
  %7 = load %struct.pcl818_board*, %struct.pcl818_board** %6, align 8
  store %struct.pcl818_board* %7, %struct.pcl818_board** %3, align 8
  %8 = load %struct.pcl818_board*, %struct.pcl818_board** %3, align 8
  %9 = getelementptr inbounds %struct.pcl818_board, %struct.pcl818_board* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCL818_FI_INTCLR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i32 0, i64 %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCL818_FI_FLUSH, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 0, i64 %23)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCL818_FI_ENABLE, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 0, i64 %29)
  br label %31

31:                                               ; preds = %12, %1
  %32 = load i32, i32* @PCL818_CTRL_DISABLE_TRIG, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCL818_CTRL_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 %32, i64 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %40 = call i32 @pcl818_ai_clear_eoc(%struct.comedi_device* %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %42 = call i32 @pcl818_ai_set_chan_range(%struct.comedi_device* %41, i32 0, i32 0)
  %43 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCL818_CNTENABLE_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 0, i64 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %70, %31
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.pcl818_board*, %struct.pcl818_board** %3, align 8
  %52 = getelementptr inbounds %struct.pcl818_board, %struct.pcl818_board* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @PCL818_AO_LSB_REG(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @outb(i32 0, i64 %61)
  %63 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @PCL818_AO_MSB_REG(i32 %66)
  %68 = add nsw i64 %65, %67
  %69 = call i32 @outb(i32 0, i64 %68)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %49

73:                                               ; preds = %49
  %74 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PCL818_DO_DI_MSB_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outb(i32 0, i64 %78)
  %80 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PCL818_DO_DI_LSB_REG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb(i32 0, i64 %84)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pcl818_ai_clear_eoc(%struct.comedi_device*) #1

declare dso_local i32 @pcl818_ai_set_chan_range(%struct.comedi_device*, i32, i32) #1

declare dso_local i64 @PCL818_AO_LSB_REG(i32) #1

declare dso_local i64 @PCL818_AO_MSB_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
