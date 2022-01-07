; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_ai_read_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_ai_read_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.rtd_private* }
%struct.rtd_private = type { i64, i64 }
%struct.comedi_subdevice = type { i16, %struct.comedi_async* }
%struct.comedi_async = type { i64, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32* }

@LAS1_ADC_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ai_read_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_read_n(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtd_private*, align 8
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca %struct.comedi_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.rtd_private*, %struct.rtd_private** %15, align 8
  store %struct.rtd_private* %16, %struct.rtd_private** %8, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 1
  %19 = load %struct.comedi_async*, %struct.comedi_async** %18, align 8
  store %struct.comedi_async* %19, %struct.comedi_async** %9, align 8
  %20 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 1
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %10, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %90, %3
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %93

26:                                               ; preds = %22
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %31 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CR_RANGE(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %37 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %42 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LAS1_ADC_FIFO, align 8
  %45 = add nsw i64 %43, %44
  %46 = call zeroext i16 @readw(i64 %45)
  store i16 %46, i16* %13, align 2
  br label %90

47:                                               ; preds = %26
  %48 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %49 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LAS1_ADC_FIFO, align 8
  %52 = add nsw i64 %50, %51
  %53 = call zeroext i16 @readw(i64 %52)
  store i16 %53, i16* %13, align 2
  %54 = load i16, i16* %13, align 2
  %55 = zext i16 %54 to i32
  %56 = ashr i32 %55, 3
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %13, align 2
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %64 = load i16, i16* %13, align 2
  %65 = call zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice* %63, i16 zeroext %64)
  store i16 %65, i16* %13, align 2
  br label %66

66:                                               ; preds = %62, %47
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 0
  %69 = load i16, i16* %68, align 8
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* %13, align 2
  %72 = zext i16 %71 to i32
  %73 = and i32 %72, %70
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %13, align 2
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %76 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %75, i16* %13, i32 1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %94

79:                                               ; preds = %66
  %80 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %81 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.rtd_private*, %struct.rtd_private** %8, align 8
  %86 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89, %40
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %22

93:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %78
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice*, i16 zeroext) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
