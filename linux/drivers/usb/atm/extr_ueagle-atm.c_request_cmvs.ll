; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_request_cmvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_request_cmvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }

@UEA_FW_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"requesting firmware %s failed, try to get older cmvs\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"requesting firmware %s failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cmv2\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"firmware %s is corrupted, try to get older cmvs\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"firmware %s is corrupted\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*, i8**, %struct.firmware**, i32*)* @request_cmvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_cmvs(%struct.uea_softc* %0, i8** %1, %struct.firmware** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uea_softc*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.firmware**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.firmware** %2, %struct.firmware*** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @UEA_FW_NAME_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load %struct.uea_softc*, %struct.uea_softc** %6, align 8
  %22 = call i32 @cmvs_file_name(%struct.uea_softc* %21, i8* %20, i32 2)
  %23 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %24 = load %struct.uea_softc*, %struct.uea_softc** %6, align 8
  %25 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @request_firmware(%struct.firmware** %23, i8* %20, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.uea_softc*, %struct.uea_softc** %6, align 8
  %37 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %36)
  %38 = call i32 @uea_warn(i32 %37, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %20)
  %39 = load %struct.uea_softc*, %struct.uea_softc** %6, align 8
  %40 = load i8**, i8*** %7, align 8
  %41 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %42 = call i32 @request_cmvs_old(%struct.uea_softc* %39, i8** %40, %struct.firmware** %41)
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %129

43:                                               ; preds = %31
  %44 = load %struct.uea_softc*, %struct.uea_softc** %6, align 8
  %45 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %44)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32, i8*, i8*, ...) @uea_err(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %129

49:                                               ; preds = %4
  %50 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %51 = load %struct.firmware*, %struct.firmware** %50, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  %54 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %55 = load %struct.firmware*, %struct.firmware** %54, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %13, align 8
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %65, label %61

61:                                               ; preds = %49
  %62 = load i32*, i32** %13, align 8
  %63 = call i64 @strncmp(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %61, %49
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.uea_softc*, %struct.uea_softc** %6, align 8
  %71 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %70)
  %72 = call i32 @uea_warn(i32 %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %73 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %74 = load %struct.firmware*, %struct.firmware** %73, align 8
  %75 = call i32 @release_firmware(%struct.firmware* %74)
  %76 = load %struct.uea_softc*, %struct.uea_softc** %6, align 8
  %77 = load i8**, i8*** %7, align 8
  %78 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %79 = call i32 @request_cmvs_old(%struct.uea_softc* %76, i8** %77, %struct.firmware** %78)
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %129

80:                                               ; preds = %65
  br label %120

81:                                               ; preds = %61
  %82 = load i32*, i32** %9, align 8
  store i32 2, i32* %82, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32* %84, i32** %13, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 5
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %120

90:                                               ; preds = %81
  %91 = load i32*, i32** %13, align 8
  %92 = call i64 @get_unaligned_le32(i32* %91)
  store i64 %92, i64* %12, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  store i32* %94, i32** %13, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %95, 4
  store i32 %96, i32* %11, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i64 @crc32_be(i32 0, i32* %97, i32 %98)
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %120

103:                                              ; preds = %90
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = add i64 %109, 1
  %111 = icmp ne i64 %105, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %120

113:                                              ; preds = %103
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = bitcast i32* %115 to i8*
  %117 = load i8**, i8*** %7, align 8
  store i8* %116, i8** %117, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %129

120:                                              ; preds = %112, %102, %89, %80
  %121 = load %struct.uea_softc*, %struct.uea_softc** %6, align 8
  %122 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %121)
  %123 = call i32 (i32, i8*, i8*, ...) @uea_err(i32 %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %124 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %125 = load %struct.firmware*, %struct.firmware** %124, align 8
  %126 = call i32 @release_firmware(%struct.firmware* %125)
  %127 = load i32, i32* @EILSEQ, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %129

129:                                              ; preds = %120, %113, %69, %43, %35
  %130 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmvs_file_name(%struct.uea_softc*, i8*, i32) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #2

declare dso_local i32 @uea_warn(i32, i8*, i8*) #2

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #2

declare dso_local i32 @request_cmvs_old(%struct.uea_softc*, i8**, %struct.firmware**) #2

declare dso_local i32 @uea_err(i32, i8*, i8*, ...) #2

declare dso_local i64 @strncmp(i32*, i8*, i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

declare dso_local i64 @get_unaligned_le32(i32*) #2

declare dso_local i64 @crc32_be(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
