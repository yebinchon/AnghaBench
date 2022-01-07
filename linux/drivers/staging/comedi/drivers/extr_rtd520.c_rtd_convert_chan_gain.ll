; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_convert_chan_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_convert_chan_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.rtd_boardinfo* }
%struct.rtd_boardinfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.comedi_device*, i32, i32)* @rtd_convert_chan_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @rtd_convert_chan_gain(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtd_boardinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %13, align 8
  store %struct.rtd_boardinfo* %14, %struct.rtd_boardinfo** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @CR_RANGE(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @CR_AREF(i32 %19)
  store i32 %20, i32* %10, align 4
  store i16 0, i16* %11, align 2
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 15
  %23 = load i16, i16* %11, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %11, align 2
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %7, align 8
  %29 = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %3
  %33 = load i16, i16* %11, align 2
  %34 = zext i16 %33 to i32
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %11, align 2
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 7
  %38 = shl i32 %37, 4
  %39 = load i16, i16* %11, align 2
  %40 = zext i16 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %11, align 2
  br label %82

43:                                               ; preds = %3
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %7, align 8
  %46 = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load i16, i16* %11, align 2
  %51 = zext i16 %50 to i32
  %52 = or i32 %51, 256
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %11, align 2
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %7, align 8
  %56 = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub i32 %54, %57
  %59 = and i32 %58, 7
  %60 = shl i32 %59, 4
  %61 = load i16, i16* %11, align 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %11, align 2
  br label %81

65:                                               ; preds = %43
  %66 = load i16, i16* %11, align 2
  %67 = zext i16 %66 to i32
  %68 = or i32 %67, 512
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %11, align 2
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %7, align 8
  %72 = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %70, %73
  %75 = and i32 %74, 7
  %76 = shl i32 %75, 4
  %77 = load i16, i16* %11, align 2
  %78 = zext i16 %77 to i32
  %79 = or i32 %78, %76
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %11, align 2
  br label %81

81:                                               ; preds = %65, %49
  br label %82

82:                                               ; preds = %81, %32
  %83 = load i32, i32* %10, align 4
  switch i32 %83, label %96 [
    i32 129, label %84
    i32 131, label %85
    i32 130, label %90
    i32 128, label %95
  ]

84:                                               ; preds = %82
  br label %96

85:                                               ; preds = %82
  %86 = load i16, i16* %11, align 2
  %87 = zext i16 %86 to i32
  %88 = or i32 %87, 128
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %11, align 2
  br label %96

90:                                               ; preds = %82
  %91 = load i16, i16* %11, align 2
  %92 = zext i16 %91 to i32
  %93 = or i32 %92, 1024
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %11, align 2
  br label %96

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %82, %95, %90, %85, %84
  %97 = load i16, i16* %11, align 2
  ret i16 %97
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
