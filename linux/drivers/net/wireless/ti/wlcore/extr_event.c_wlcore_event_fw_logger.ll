; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_event.c_wlcore_event_fw_logger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_event.c_wlcore_event_fw_logger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.fw_logger_information = type { i8*, i8*, i8*, i8* }

@WL18XX_DATA_RAM_BASE_ADDRESS = common dso_local global i64 0, align 8
@WL18XX_LOGGER_SDIO_BUFF_ADDR = common dso_local global i64 0, align 8
@WL18XX_LOGGER_BUFF_OFFSET = common dso_local global i64 0, align 8
@WL18XX_LOGGER_SDIO_BUFF_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Fail to allocate fw logger memory\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Fail to read logger buffer, error_id = %d\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Calculate of clear addr Clear = %x, write = %x\00", align 1
@WL18XX_LOGGER_READ_POINT_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_event_fw_logger(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_logger_information, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %14 = load i64, i64* @WL18XX_DATA_RAM_BASE_ADDRESS, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* @WL18XX_LOGGER_SDIO_BUFF_ADDR, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* @WL18XX_LOGGER_SDIO_BUFF_ADDR, align 8
  %17 = load i64, i64* @WL18XX_LOGGER_BUFF_OFFSET, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* @WL18XX_LOGGER_SDIO_BUFF_MAX, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kzalloc(i32 %19, i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = call i8* @cpu_to_le32(i32 0)
  %27 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  br label %142

28:                                               ; preds = %1
  %29 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @WL18XX_LOGGER_SDIO_BUFF_MAX, align 4
  %33 = call i32 @wlcore_read(%struct.wl1271* %29, i64 %30, i32* %31, i32 %32, i32 0)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = call i8* @cpu_to_le32(i32 0)
  %40 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  br label %139

41:                                               ; preds = %28
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @memcpy(%struct.fw_logger_information* %4, i32* %42, i32 32)
  %44 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @le32_to_cpu(i8* %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %139

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @le32_to_cpu(i8* %51)
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %10, align 8
  %54 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @le32_to_cpu(i8* %55)
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %57, %58
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %13, align 8
  %62 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @le32_to_cpu(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @le32_to_cpu(i8* %70)
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %6, align 8
  %74 = sub i64 %72, %73
  %75 = sub i64 %68, %74
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @min(i64 %76, i64 %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  store i64 %79, i64* %12, align 8
  %80 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @wl12xx_copy_fwlog(%struct.wl1271* %80, i32* %83, i64 %84)
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %86, %87
  %89 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @le32_to_cpu(i8* %90)
  %92 = sext i32 %91 to i64
  %93 = add i64 %88, %92
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %93, %94
  store i64 %95, i64* %11, align 8
  %96 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @le32_to_cpu(i8* %97)
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %12, align 8
  %101 = sub i64 %99, %100
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %49
  %105 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i64, i64* @WL18XX_LOGGER_BUFF_OFFSET, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @wl12xx_copy_fwlog(%struct.wl1271* %105, i32* %108, i64 %109)
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @WL18XX_LOGGER_BUFF_OFFSET, align 8
  %113 = add i64 %111, %112
  %114 = load i64, i64* %12, align 8
  %115 = add i64 %113, %114
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %115, %116
  store i64 %117, i64* %11, align 8
  br label %118

118:                                              ; preds = %104, %49
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @le32_to_cpu(i8* %121)
  %123 = sext i32 %122 to i64
  %124 = icmp ne i64 %119, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i64, i64* %11, align 8
  %127 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @le32_to_cpu(i8* %128)
  %130 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %126, i32 %129)
  br label %131

131:                                              ; preds = %125, %118
  %132 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* @WL18XX_LOGGER_READ_POINT_OFFSET, align 8
  %135 = add i64 %133, %134
  %136 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @wlcore_write32(%struct.wl1271* %132, i64 %135, i8* %137)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %131, %48, %36
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @kfree(i32* %140)
  br label %142

142:                                              ; preds = %139, %24
  %143 = getelementptr inbounds %struct.fw_logger_information, %struct.fw_logger_information* %4, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @le32_to_cpu(i8* %144)
  ret i32 %145
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wlcore_read(%struct.wl1271*, i64, i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.fw_logger_information*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @wl12xx_copy_fwlog(%struct.wl1271*, i32*, i64) #1

declare dso_local i32 @wlcore_write32(%struct.wl1271*, i64, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
