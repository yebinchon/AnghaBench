; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_set_ai_range_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_set_ai_range_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcl818_board* }
%struct.pcl818_board = type { i64, i32* }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_devconfig = type { i32* }

@range_pcl818l_h_ai = common dso_local global i32 0, align 4
@range_bipolar10 = common dso_local global i32 0, align 4
@range_bipolar5 = common dso_local global i32 0, align 4
@range_bipolar2_5 = common dso_local global i32 0, align 4
@range718_bipolar1 = common dso_local global i32 0, align 4
@range718_bipolar0_5 = common dso_local global i32 0, align 4
@range_unipolar10 = common dso_local global i32 0, align 4
@range_unipolar5 = common dso_local global i32 0, align 4
@range718_unipolar2 = common dso_local global i32 0, align 4
@range718_unipolar1 = common dso_local global i32 0, align 4
@range_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_devconfig*)* @pcl818_set_ai_range_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl818_set_ai_range_table(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_devconfig* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_devconfig*, align 8
  %7 = alloca %struct.pcl818_board*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store %struct.comedi_devconfig* %2, %struct.comedi_devconfig** %6, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.pcl818_board*, %struct.pcl818_board** %9, align 8
  store %struct.pcl818_board* %10, %struct.pcl818_board** %7, align 8
  %11 = load %struct.pcl818_board*, %struct.pcl818_board** %7, align 8
  %12 = getelementptr inbounds %struct.pcl818_board, %struct.pcl818_board* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.pcl818_board*, %struct.pcl818_board** %7, align 8
  %17 = getelementptr inbounds %struct.pcl818_board, %struct.pcl818_board* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %3
  %21 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %6, align 8
  %22 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %6, align 8
  %29 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %20
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 0
  store i32* @range_pcl818l_h_ai, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %27
  br label %75

38:                                               ; preds = %3
  %39 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %71 [
    i32 0, label %44
    i32 1, label %47
    i32 2, label %50
    i32 3, label %53
    i32 4, label %56
    i32 6, label %59
    i32 7, label %62
    i32 8, label %65
    i32 9, label %68
  ]

44:                                               ; preds = %38
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 0
  store i32* @range_bipolar10, i32** %46, align 8
  br label %74

47:                                               ; preds = %38
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  store i32* @range_bipolar5, i32** %49, align 8
  br label %74

50:                                               ; preds = %38
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  store i32* @range_bipolar2_5, i32** %52, align 8
  br label %74

53:                                               ; preds = %38
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 0
  store i32* @range718_bipolar1, i32** %55, align 8
  br label %74

56:                                               ; preds = %38
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 0
  store i32* @range718_bipolar0_5, i32** %58, align 8
  br label %74

59:                                               ; preds = %38
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  store i32* @range_unipolar10, i32** %61, align 8
  br label %74

62:                                               ; preds = %38
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 0
  store i32* @range_unipolar5, i32** %64, align 8
  br label %74

65:                                               ; preds = %38
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 0
  store i32* @range718_unipolar2, i32** %67, align 8
  br label %74

68:                                               ; preds = %38
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 0
  store i32* @range718_unipolar1, i32** %70, align 8
  br label %74

71:                                               ; preds = %38
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 0
  store i32* @range_unknown, i32** %73, align 8
  br label %74

74:                                               ; preds = %71, %68, %65, %62, %59, %56, %53, %50, %47, %44
  br label %75

75:                                               ; preds = %74, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
