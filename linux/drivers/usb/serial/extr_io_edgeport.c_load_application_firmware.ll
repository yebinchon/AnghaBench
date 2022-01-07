; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_load_application_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_load_application_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ihex_binrec = type { i32*, i32, i32 }
%struct.firmware = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"downloading firmware version (930)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"edgeport/down.fw\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"downloading firmware version (80251)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"edgeport/down2.fw\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"No download file specified, skipping download\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to load image \22%s\22 err %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s %d.%d.%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"sram_write failed (%x, %x, %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"sending exec_dl_code\0A\00", align 1
@USB_REQUEST_ION_EXEC_DL_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edgeport_serial*)* @load_application_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_application_firmware(%struct.edgeport_serial* %0) #0 {
  %2 = alloca %struct.edgeport_serial*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ihex_binrec*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %2, align 8
  %11 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %12 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %3, align 8
  %17 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %18 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %26 [
    i32 129, label %21
    i32 130, label %22
    i32 128, label %23
  ]

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %27

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %161

26:                                               ; preds = %1
  br label %161

27:                                               ; preds = %22, %21
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %30 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @request_ihex_firmware(%struct.firmware** %5, i8* %28, %struct.device* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %40, i32 %41)
  br label %161

43:                                               ; preds = %27
  %44 = load %struct.firmware*, %struct.firmware** %5, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.ihex_binrec*
  store %struct.ihex_binrec* %47, %struct.ihex_binrec** %4, align 8
  %48 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %49 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %55 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %53, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %63 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %68 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %61, i32 %66, i32 %71, i32 %72)
  %74 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %75 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %80 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %83 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %88 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @cpu_to_le16(i32 %90)
  %92 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %93 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %96 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %95)
  store %struct.ihex_binrec* %96, %struct.ihex_binrec** %4, align 8
  br label %97

97:                                               ; preds = %140, %43
  %98 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %99 = icmp ne %struct.ihex_binrec* %98, null
  br i1 %99, label %100, label %143

100:                                              ; preds = %97
  %101 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %102 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @be32_to_cpu(i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %106 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 16
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, 65535
  %112 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %113 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @be16_to_cpu(i32 %114)
  %116 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %117 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = call i32 @sram_write(%struct.TYPE_7__* %107, i32 %109, i32 %111, i32 %115, i32* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %100
  %124 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %125 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %9, align 4
  %131 = ashr i32 %130, 16
  %132 = load i32, i32* %9, align 4
  %133 = and i32 %132, 65535
  %134 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %135 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @be16_to_cpu(i32 %136)
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %131, i32 %133, i32 %137)
  br label %143

139:                                              ; preds = %100
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %142 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %141)
  store %struct.ihex_binrec* %142, %struct.ihex_binrec** %4, align 8
  br label %97

143:                                              ; preds = %123, %97
  %144 = load %struct.device*, %struct.device** %3, align 8
  %145 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %146 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %147 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %146, i32 0, i32 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %152 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = call i32 @usb_sndctrlpipe(%struct.TYPE_6__* %155, i32 0)
  %157 = load i32, i32* @USB_REQUEST_ION_EXEC_DL_CODE, align 4
  %158 = call i32 @usb_control_msg(%struct.TYPE_6__* %150, i32 %156, i32 %157, i32 64, i32 16384, i32 1, i32* null, i32 0, i32 3000)
  store i32 %158, i32* %8, align 4
  %159 = load %struct.firmware*, %struct.firmware** %5, align 8
  %160 = call i32 @release_firmware(%struct.firmware* %159)
  br label %161

161:                                              ; preds = %143, %38, %26, %23
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @request_ihex_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @sram_write(%struct.TYPE_7__*, i32, i32, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
