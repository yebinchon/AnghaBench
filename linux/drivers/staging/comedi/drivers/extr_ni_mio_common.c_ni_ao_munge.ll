; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_munge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @ni_ao_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %11, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to i16*
  store i16* %25, i16** %13, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %65, %5
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %26
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CR_RANGE(i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i16*, i16** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  %43 = load i16, i16* %42, align 2
  store i16 %43, i16* %16, align 2
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %30
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %50 = load i16, i16* %16, align 2
  %51 = call zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice* %49, i16 zeroext %50)
  store i16 %51, i16* %16, align 2
  br label %52

52:                                               ; preds = %48, %30
  %53 = load i16, i16* %16, align 2
  %54 = load i16*, i16** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  store i16 %53, i16* %57, align 2
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = urem i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %14, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %26

68:                                               ; preds = %26
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
