; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_8255.c_dev_8255_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_8255.c_dev_8255_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i8* }
%struct.comedi_devconfig = type { i64* }

@COMEDI_NDEVCONFOPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no devices specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I8255_SIZE = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dev_8255_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_8255_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @COMEDI_NDEVCONFOPTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %10

29:                                               ; preds = %24, %10
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %99

39:                                               ; preds = %29
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %99

47:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %95, %47
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %48
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 1
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i64 %59
  store %struct.comedi_subdevice* %60, %struct.comedi_subdevice** %6, align 8
  %61 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %62 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %7, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* @I8255_SIZE, align 4
  %71 = call i32 @__comedi_request_region(%struct.comedi_device* %68, i64 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %54
  %75 = load i8*, i8** @COMEDI_SUBD_UNUSED, align 8
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %94

78:                                               ; preds = %54
  %79 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @subdev_8255_init(%struct.comedi_device* %79, %struct.comedi_subdevice* %80, i32* null, i64 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* @I8255_SIZE, align 4
  %88 = call i32 @release_region(i64 %86, i32 %87)
  %89 = load i8*, i8** @COMEDI_SUBD_UNUSED, align 8
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %99

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %74
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %48

98:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %85, %45, %32
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @__comedi_request_region(%struct.comedi_device*, i64, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i64) #1

declare dso_local i32 @release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
