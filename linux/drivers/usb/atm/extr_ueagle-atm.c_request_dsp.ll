; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_request_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_request_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EAGLE_IV = common dso_local global i64 0, align 8
@DSP4I_FIRMWARE = common dso_local global i8* null, align 8
@DSP4P_FIRMWARE = common dso_local global i8* null, align 8
@ADI930 = common dso_local global i64 0, align 8
@DSP9I_FIRMWARE = common dso_local global i8* null, align 8
@DSP9P_FIRMWARE = common dso_local global i8* null, align 8
@DSPEI_FIRMWARE = common dso_local global i8* null, align 8
@DSPEP_FIRMWARE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"requesting firmware %s failed with error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"firmware %s is corrupted\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @request_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_dsp(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  %6 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %7 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %6)
  %8 = load i64, i64* @EAGLE_IV, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %12 = call i64 @IS_ISDN(%struct.uea_softc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i8*, i8** @DSP4I_FIRMWARE, align 8
  store i8* %15, i8** %5, align 8
  br label %18

16:                                               ; preds = %10
  %17 = load i8*, i8** @DSP4P_FIRMWARE, align 8
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %16, %14
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %21 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %20)
  %22 = load i64, i64* @ADI930, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %26 = call i64 @IS_ISDN(%struct.uea_softc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** @DSP9I_FIRMWARE, align 8
  store i8* %29, i8** %5, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** @DSP9P_FIRMWARE, align 8
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %30, %28
  br label %42

33:                                               ; preds = %19
  %34 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %35 = call i64 @IS_ISDN(%struct.uea_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** @DSPEI_FIRMWARE, align 8
  store i8* %38, i8** %5, align 8
  br label %41

39:                                               ; preds = %33
  %40 = load i8*, i8** @DSPEP_FIRMWARE, align 8
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %32
  br label %43

43:                                               ; preds = %42, %18
  %44 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %45 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %44, i32 0, i32 0
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %48 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @request_firmware(%struct.TYPE_5__** %45, i8* %46, i32* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %56 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %55)
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i32, i8*, i8*, ...) @uea_err(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %107

61:                                               ; preds = %43
  %62 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %63 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %62)
  %64 = load i64, i64* @EAGLE_IV, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %68 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %73 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @check_dsp_e4(i32 %71, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %90

78:                                               ; preds = %61
  %79 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %80 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %85 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @check_dsp_e1(i32 %83, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %78, %66
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %95 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %94)
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 (i32, i8*, i8*, ...) @uea_err(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %99 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = call i32 @release_firmware(%struct.TYPE_5__* %100)
  %102 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %103 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %102, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %103, align 8
  %104 = load i32, i32* @EILSEQ, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %93, %54
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #1

declare dso_local i64 @IS_ISDN(%struct.uea_softc*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_5__**, i8*, i32*) #1

declare dso_local i32 @uea_err(i32, i8*, i8*, ...) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @check_dsp_e4(i32, i32) #1

declare dso_local i32 @check_dsp_e1(i32, i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
