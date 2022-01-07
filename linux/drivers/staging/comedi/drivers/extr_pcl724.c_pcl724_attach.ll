; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl724.c_pcl724_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl724.c_pcl724_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.comedi_subdevice*, %struct.pcl724_board* }
%struct.comedi_subdevice = type { i32 }
%struct.pcl724_board = type { i32, i32, i64, i64 }
%struct.comedi_devconfig = type { i32* }

@pcl724_8255mapped_io = common dso_local global i32* null, align 8
@I8255_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcl724_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl724_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pcl724_board*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 3
  %15 = load %struct.pcl724_board*, %struct.pcl724_board** %14, align 8
  store %struct.pcl724_board* %15, %struct.pcl724_board** %6, align 8
  %16 = load %struct.pcl724_board*, %struct.pcl724_board** %6, align 8
  %17 = getelementptr inbounds %struct.pcl724_board, %struct.pcl724_board* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.pcl724_board*, %struct.pcl724_board** %6, align 8
  %20 = getelementptr inbounds %struct.pcl724_board, %struct.pcl724_board* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.pcl724_board*, %struct.pcl724_board** %6, align 8
  %23 = getelementptr inbounds %struct.pcl724_board, %struct.pcl724_board* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %28 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %35 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 96
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %26
  store i32 16, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %33, %2
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %44 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @comedi_request_region(%struct.comedi_device* %42, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %111

54:                                               ; preds = %41
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %3, align 4
  br label %111

62:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %107, %62
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %110

69:                                               ; preds = %63
  %70 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 2
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i64 %74
  store %struct.comedi_subdevice* %75, %struct.comedi_subdevice** %7, align 8
  %76 = load %struct.pcl724_board*, %struct.pcl724_board** %6, align 8
  %77 = getelementptr inbounds %struct.pcl724_board, %struct.pcl724_board* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %69
  %81 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %84, 4096
  %86 = add nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %8, align 8
  %88 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %90 = load i32*, i32** @pcl724_8255mapped_io, align 8
  %91 = load i64, i64* %8, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @subdev_8255_init(%struct.comedi_device* %88, %struct.comedi_subdevice* %89, i32* %90, i32 %92)
  store i32 %93, i32* %11, align 4
  br label %101

94:                                               ; preds = %69
  %95 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @I8255_SIZE, align 4
  %99 = mul nsw i32 %97, %98
  %100 = call i32 @subdev_8255_init(%struct.comedi_device* %95, %struct.comedi_subdevice* %96, i32* null, i32 %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %94, %80
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %3, align 4
  br label %111

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %63

110:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %104, %60, %52
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
