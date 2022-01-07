; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_load_XILINX_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_load_XILINX_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.firmware = type { i32, i64* }

@FPGA930_FIRMWARE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"firmware %s is not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"firmware %s is corrupted\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"elsa download data failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"elsa de-assert failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @load_XILINX_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_XILINX_firmware(%struct.uea_softc* %0) #0 {
  %2 = alloca %struct.uea_softc*, align 8
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %2, align 8
  %11 = load i8*, i8** @FPGA930_FIRMWARE, align 8
  store i8* %11, i8** %10, align 8
  %12 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %13 = call %struct.TYPE_6__* @INS_TO_USBDEV(%struct.uea_softc* %12)
  %14 = call i32 @uea_enters(%struct.TYPE_6__* %13)
  %15 = load i8*, i8** %10, align 8
  %16 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %17 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @request_firmware(%struct.firmware** %3, i8* %15, i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %25 = call %struct.TYPE_6__* @INS_TO_USBDEV(%struct.uea_softc* %24)
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 (%struct.TYPE_6__*, i8*, ...) @uea_err(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %100

28:                                               ; preds = %1
  %29 = load %struct.firmware*, %struct.firmware** %3, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** %8, align 8
  %32 = load %struct.firmware*, %struct.firmware** %3, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 22395
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %39 = call %struct.TYPE_6__* @INS_TO_USBDEV(%struct.uea_softc* %38)
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 (%struct.TYPE_6__*, i8*, ...) @uea_err(%struct.TYPE_6__* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @EILSEQ, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %97

44:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @min(i32 %52, i32 64)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i64*, i64** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = call i32 @uea_request(%struct.uea_softc* %54, i32 14, i32 0, i32 %55, i64* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %49
  %64 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %65 = call %struct.TYPE_6__* @INS_TO_USBDEV(%struct.uea_softc* %64)
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (%struct.TYPE_6__*, i8*, ...) @uea_err(%struct.TYPE_6__* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %97

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %45

73:                                               ; preds = %45
  %74 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %75 = call i32 @uea_request(%struct.uea_softc* %74, i32 14, i32 1, i32 0, i64* null)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %80 = call %struct.TYPE_6__* @INS_TO_USBDEV(%struct.uea_softc* %79)
  %81 = load i32, i32* %4, align 4
  %82 = call i32 (%struct.TYPE_6__*, i8*, ...) @uea_err(%struct.TYPE_6__* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %97

83:                                               ; preds = %73
  store i64 0, i64* %9, align 8
  %84 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %85 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @uea_send_modem_cmd(%struct.TYPE_6__* %86, i32 14, i32 1, i64* %9)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %92 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 (%struct.TYPE_6__*, i8*, ...) @uea_err(%struct.TYPE_6__* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %83
  br label %97

97:                                               ; preds = %96, %78, %63, %37
  %98 = load %struct.firmware*, %struct.firmware** %3, align 8
  %99 = call i32 @release_firmware(%struct.firmware* %98)
  br label %100

100:                                              ; preds = %97, %23
  %101 = load %struct.uea_softc*, %struct.uea_softc** %2, align 8
  %102 = call %struct.TYPE_6__* @INS_TO_USBDEV(%struct.uea_softc* %101)
  %103 = call i32 @uea_leaves(%struct.TYPE_6__* %102)
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @uea_enters(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @uea_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @uea_request(%struct.uea_softc*, i32, i32, i32, i64*) #1

declare dso_local i32 @uea_send_modem_cmd(%struct.TYPE_6__*, i32, i32, i64*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @uea_leaves(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
