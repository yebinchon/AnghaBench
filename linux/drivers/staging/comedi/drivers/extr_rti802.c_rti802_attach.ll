; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rti802.c_rti802_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rti802.c_rti802_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32**, i32, i32, i32 }
%struct.comedi_devconfig = type { i64* }
%struct.rti802_private = type { i32**, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@rti802_ao_insn_write = common dso_local global i32 0, align 4
@dac_straight = common dso_local global i32 0, align 4
@dac_2comp = common dso_local global i32 0, align 4
@range_unipolar10 = common dso_local global i32 0, align 4
@range_bipolar10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @rti802_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rti802_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.rti802_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @comedi_request_region(%struct.comedi_device* %10, i64 %15, i32 4)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %114

21:                                               ; preds = %2
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = call %struct.rti802_private* @comedi_alloc_devpriv(%struct.comedi_device* %22, i32 16)
  store %struct.rti802_private* %23, %struct.rti802_private** %6, align 8
  %24 = load %struct.rti802_private*, %struct.rti802_private** %6, align 8
  %25 = icmp ne %struct.rti802_private* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %114

29:                                               ; preds = %21
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %30, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %114

36:                                               ; preds = %29
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %38, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i64 0
  store %struct.comedi_subdevice* %40, %struct.comedi_subdevice** %7, align 8
  %41 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @SDF_WRITABLE, align 4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 0
  store i32 4095, i32* %48, align 8
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 1
  store i32 8, i32* %50, align 4
  %51 = load i32, i32* @rti802_ao_insn_write, align 4
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %55 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %36
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %114

60:                                               ; preds = %36
  %61 = load %struct.rti802_private*, %struct.rti802_private** %6, align 8
  %62 = getelementptr inbounds %struct.rti802_private, %struct.rti802_private* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 2
  store i32** %63, i32*** %65, align 8
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %110, %60
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %113

69:                                               ; preds = %66
  %70 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %71 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 2, %73
  %75 = add nsw i32 3, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @dac_straight, align 4
  br label %84

82:                                               ; preds = %69
  %83 = load i32, i32* @dac_2comp, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.rti802_private*, %struct.rti802_private** %6, align 8
  %87 = getelementptr inbounds %struct.rti802_private, %struct.rti802_private* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %93 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 2, %95
  %97 = add nsw i32 2, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %94, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32* @range_unipolar10, i32* @range_bipolar10
  %104 = load %struct.rti802_private*, %struct.rti802_private** %6, align 8
  %105 = getelementptr inbounds %struct.rti802_private, %struct.rti802_private* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  store i32* %103, i32** %109, align 8
  br label %110

110:                                              ; preds = %84
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %66

113:                                              ; preds = %66
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %58, %34, %26, %19
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i64, i32) #1

declare dso_local %struct.rti802_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
