; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_firmware.c__rtl92e_fw_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_firmware.c__rtl92e_fw_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rt_fw_blob = type { i32, i64 }
%struct.firmware = type { i32, i32 }

@MAX_FW_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Firmware image %s too big for the device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.rt_fw_blob*, i8*, i32)* @_rtl92e_fw_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_fw_prepare(%struct.net_device* %0, %struct.rt_fw_blob* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.rt_fw_blob*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.rt_fw_blob* %1, %struct.rt_fw_blob** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = call i32 @request_firmware(%struct.firmware** %10, i8* %15, i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %114

22:                                               ; preds = %4
  %23 = load %struct.firmware*, %struct.firmware** %10, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @round_up(i32 %25, i32 4)
  %27 = load i64, i64* @MAX_FW_SIZE, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %27, %29
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 0, i32* %13, align 4
  br label %110

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.rt_fw_blob*, %struct.rt_fw_blob** %7, align 8
  %41 = getelementptr inbounds %struct.rt_fw_blob, %struct.rt_fw_blob* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @memset(i64 %42, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.firmware*, %struct.firmware** %10, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.rt_fw_blob*, %struct.rt_fw_blob** %7, align 8
  %53 = getelementptr inbounds %struct.rt_fw_blob, %struct.rt_fw_blob* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load %struct.firmware*, %struct.firmware** %10, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = call i32 @memset(i64 %62, i32 0, i32 4)
  br label %64

64:                                               ; preds = %51, %45
  %65 = load %struct.rt_fw_blob*, %struct.rt_fw_blob** %7, align 8
  %66 = getelementptr inbounds %struct.rt_fw_blob, %struct.rt_fw_blob* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load %struct.firmware*, %struct.firmware** %10, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.firmware*, %struct.firmware** %10, align 8
  %75 = getelementptr inbounds %struct.firmware, %struct.firmware* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @memcpy(i64 %70, i32 %73, i32 %76)
  %78 = load %struct.firmware*, %struct.firmware** %10, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @round_up(i32 %80, i32 4)
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.rt_fw_blob*, %struct.rt_fw_blob** %7, align 8
  %87 = getelementptr inbounds %struct.rt_fw_blob, %struct.rt_fw_blob* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %106, %64
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.rt_fw_blob*, %struct.rt_fw_blob** %7, align 8
  %92 = getelementptr inbounds %struct.rt_fw_blob, %struct.rt_fw_blob* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.rt_fw_blob*, %struct.rt_fw_blob** %7, align 8
  %97 = getelementptr inbounds %struct.rt_fw_blob, %struct.rt_fw_blob* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** %14, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @swab32p(i32* %103)
  %105 = load i32*, i32** %14, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %12, align 4
  br label %89

109:                                              ; preds = %89
  br label %110

110:                                              ; preds = %109, %32
  %111 = load %struct.firmware*, %struct.firmware** %10, align 8
  %112 = call i32 @release_firmware(%struct.firmware* %111)
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %21
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @swab32p(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
