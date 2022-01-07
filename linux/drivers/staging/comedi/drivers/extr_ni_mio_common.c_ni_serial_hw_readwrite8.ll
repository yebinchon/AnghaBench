; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_hw_readwrite8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_hw_readwrite8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }

@NISTC_DIO_OUT_SERIAL_MASK = common dso_local global i32 0, align 4
@NISTC_DIO_OUT_REG = common dso_local global i32 0, align 4
@NISTC_STATUS1_REG = common dso_local global i32 0, align 4
@NISTC_STATUS1_SERIO_IN_PROG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NISTC_DIO_CTRL_HW_SER_START = common dso_local global i32 0, align 4
@NISTC_DIO_CTRL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SPI serial I/O didn't finish in time!\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@NISTC_DIO_SERIAL_IN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i8, i8*)* @ni_serial_hw_readwrite8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_serial_hw_readwrite8(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8 zeroext %2, i8* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ni_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.ni_private*, %struct.ni_private** %14, align 8
  store %struct.ni_private* %15, %struct.ni_private** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 20, i32* %12, align 4
  %16 = load i32, i32* @NISTC_DIO_OUT_SERIAL_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %19 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i8, i8* %7, align 1
  %23 = call i32 @NISTC_DIO_OUT_SERIAL(i8 zeroext %22)
  %24 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %25 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %30 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NISTC_DIO_OUT_REG, align 4
  %33 = call i32 @ni_stc_writew(%struct.comedi_device* %28, i32 %31, i32 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = load i32, i32* @NISTC_STATUS1_REG, align 4
  %36 = call i8* @ni_stc_readw(%struct.comedi_device* %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @NISTC_STATUS1_SERIO_IN_PROG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %105

45:                                               ; preds = %4
  %46 = load i32, i32* @NISTC_DIO_CTRL_HW_SER_START, align 4
  %47 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %48 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %53 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NISTC_DIO_CTRL_REG, align 4
  %56 = call i32 @ni_stc_writew(%struct.comedi_device* %51, i32 %54, i32 %55)
  %57 = load i32, i32* @NISTC_DIO_CTRL_HW_SER_START, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %60 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %88, %45
  %64 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %65 = load i32, i32* @NISTC_STATUS1_REG, align 4
  %66 = call i8* @ni_stc_readw(%struct.comedi_device* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @NISTC_STATUS1_SERIO_IN_PROG, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %63
  %72 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %73 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 999
  %76 = sdiv i32 %75, 1000
  %77 = call i32 @udelay(i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ETIME, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %105

88:                                               ; preds = %71
  br label %63

89:                                               ; preds = %63
  %90 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %91 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 999
  %94 = sdiv i32 %93, 1000
  %95 = call i32 @udelay(i32 %94)
  %96 = load i8*, i8** %8, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %100 = load i32, i32* @NISTC_DIO_SERIAL_IN_REG, align 4
  %101 = call i8* @ni_stc_readw(%struct.comedi_device* %99, i32 %100)
  %102 = ptrtoint i8* %101 to i8
  %103 = load i8*, i8** %8, align 8
  store i8 %102, i8* %103, align 1
  br label %104

104:                                              ; preds = %98, %89
  br label %105

105:                                              ; preds = %104, %81, %42
  %106 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %107 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  %108 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NISTC_DIO_CTRL_REG, align 4
  %111 = call i32 @ni_stc_writew(%struct.comedi_device* %106, i32 %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local i32 @NISTC_DIO_OUT_SERIAL(i8 zeroext) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i8* @ni_stc_readw(%struct.comedi_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
