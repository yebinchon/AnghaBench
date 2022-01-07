; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.fdp_nci_info = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@FDP_RAM_PATCH_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"RAM patch request error\0A\00", align 1
@FDP_FW_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"RAM patch version: %d, size: %d\0A\00", align 1
@FDP_OTP_PATCH_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"OTP patch request error\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"OTP patch version: %d, size: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @fdp_nci_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp_nci_request_firmware(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.fdp_nci_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %8 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %9 = call %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev* %8)
  store %struct.fdp_nci_info* %9, %struct.fdp_nci_info** %4, align 8
  %10 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %11 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %10, i32 0, i32 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %17 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %16, i32 0, i32 3
  %18 = load i32, i32* @FDP_RAM_PATCH_NAME, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @request_firmware(%struct.TYPE_6__** %17, i32 %18, %struct.device* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @nfc_err(%struct.device* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %127

26:                                               ; preds = %1
  %27 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %28 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* @FDP_FW_HEADER_SIZE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* @FDP_FW_HEADER_SIZE, align 8
  %39 = add i64 %38, 1
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %36, %42
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* @FDP_FW_HEADER_SIZE, align 8
  %46 = add i64 %45, 2
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %43, %49
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* @FDP_FW_HEADER_SIZE, align 8
  %53 = add i64 %52, 3
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 24
  %57 = or i32 %50, %56
  %58 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %59 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %62 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %65 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %69)
  %71 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %72 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %71, i32 0, i32 2
  %73 = load i32, i32* @FDP_OTP_PATCH_NAME, align 4
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = call i32 @request_firmware(%struct.TYPE_6__** %72, i32 %73, %struct.device* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %26
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i32 @nfc_err(%struct.device* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %126

81:                                               ; preds = %26
  %82 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %83 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %6, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i64, i64* @FDP_FW_HEADER_SIZE, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i64, i64* @FDP_FW_HEADER_SIZE, align 8
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %91, %97
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* @FDP_FW_HEADER_SIZE, align 8
  %101 = add i64 %100, 2
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 16
  %105 = or i32 %98, %104
  %106 = load i32*, i32** %6, align 8
  %107 = load i64, i64* @FDP_FW_HEADER_SIZE, align 8
  %108 = add i64 %107, 3
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 24
  %112 = or i32 %105, %111
  %113 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %114 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %117 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %120 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %119, i32 0, i32 2
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @dev_dbg(%struct.device* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %124)
  br label %126

126:                                              ; preds = %81, %78
  store i32 0, i32* %2, align 4
  br label %129

127:                                              ; preds = %23
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %126
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_6__**, i32, %struct.device*) #1

declare dso_local i32 @nfc_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
