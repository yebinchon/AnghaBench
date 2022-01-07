; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_sw_readwrite8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_sw_readwrite8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }

@NISTC_DIO_SDOUT = common dso_local global i32 0, align 4
@NISTC_DIO_OUT_REG = common dso_local global i32 0, align 4
@NISTC_DIO_SDCLK = common dso_local global i32 0, align 4
@NISTC_DIO_CTRL_REG = common dso_local global i32 0, align 4
@NISTC_DIO_IN_REG = common dso_local global i32 0, align 4
@NISTC_DIO_SDIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i8, i8*)* @ni_serial_sw_readwrite8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_serial_sw_readwrite8(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8 zeroext %2, i8* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ni_private*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.ni_private*, %struct.ni_private** %13, align 8
  store %struct.ni_private* %14, %struct.ni_private** %9, align 8
  store i8 0, i8* %11, align 1
  %15 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %16 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 999
  %19 = sdiv i32 %18, 1000
  %20 = call i32 @udelay(i32 %19)
  store i8 -128, i8* %10, align 1
  br label %21

21:                                               ; preds = %99, %4
  %22 = load i8, i8* %10, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %104

24:                                               ; preds = %21
  %25 = load i32, i32* @NISTC_DIO_SDOUT, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %28 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load i32, i32* @NISTC_DIO_SDOUT, align 4
  %39 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %40 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %24
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %46 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NISTC_DIO_OUT_REG, align 4
  %49 = call i32 @ni_stc_writew(%struct.comedi_device* %44, i32 %47, i32 %48)
  %50 = load i32, i32* @NISTC_DIO_SDCLK, align 4
  %51 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %52 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %57 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NISTC_DIO_CTRL_REG, align 4
  %60 = call i32 @ni_stc_writew(%struct.comedi_device* %55, i32 %58, i32 %59)
  %61 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %62 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 999
  %65 = sdiv i32 %64, 2000
  %66 = call i32 @udelay(i32 %65)
  %67 = load i32, i32* @NISTC_DIO_SDCLK, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %70 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %74 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %75 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NISTC_DIO_CTRL_REG, align 4
  %78 = call i32 @ni_stc_writew(%struct.comedi_device* %73, i32 %76, i32 %77)
  %79 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %80 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 999
  %83 = sdiv i32 %82, 2000
  %84 = call i32 @udelay(i32 %83)
  %85 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %86 = load i32, i32* @NISTC_DIO_IN_REG, align 4
  %87 = call i32 @ni_stc_readw(%struct.comedi_device* %85, i32 %86)
  %88 = load i32, i32* @NISTC_DIO_SDIN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %43
  %92 = load i8, i8* %10, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* %11, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %95, %93
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %11, align 1
  br label %98

98:                                               ; preds = %91, %43
  br label %99

99:                                               ; preds = %98
  %100 = load i8, i8* %10, align 1
  %101 = zext i8 %100 to i32
  %102 = ashr i32 %101, 1
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %10, align 1
  br label %21

104:                                              ; preds = %21
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8, i8* %11, align 1
  %109 = load i8*, i8** %8, align 8
  store i8 %108, i8* %109, align 1
  br label %110

110:                                              ; preds = %107, %104
  ret i32 0
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_stc_readw(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
