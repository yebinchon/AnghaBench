; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_update_edgeport_E2PROM.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_update_edgeport_E2PROM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ihex_binrec = type { i32*, i32, i32 }
%struct.firmware = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"edgeport/boot.fw\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"edgeport/boot2.fw\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to load image \22%s\22 err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Current Boot Image version %d.%d.%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"**Update Boot Image from %d.%d.%d to %d.%d.%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Downloading new Boot Image\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"rom_write failed (%x, %x, %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Boot Image -- already up to date\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edgeport_serial*)* @update_edgeport_E2PROM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_edgeport_E2PROM(%struct.edgeport_serial* %0) #0 {
  %2 = alloca %struct.edgeport_serial*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ihex_binrec*, align 8
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %2, align 8
  %14 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %15 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %3, align 8
  %20 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %21 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %26 [
    i32 128, label %24
    i32 129, label %25
  ]

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %27

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %27

26:                                               ; preds = %1
  br label %188

27:                                               ; preds = %25, %24
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %30 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i32 @request_ihex_firmware(%struct.firmware** %11, i8* %28, %struct.device* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %41)
  br label %188

43:                                               ; preds = %27
  %44 = load %struct.firmware*, %struct.firmware** %11, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.ihex_binrec*
  store %struct.ihex_binrec* %47, %struct.ihex_binrec** %10, align 8
  %48 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %49 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %54 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %59 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %65 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %63, %68
  store i32 %69, i32* %8, align 4
  %70 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %71 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 24
  %75 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %76 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 16
  %80 = add nsw i32 %74, %79
  %81 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %82 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = add nsw i32 %80, %85
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %6, align 4
  %88 = shl i32 %87, 24
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, 16
  %91 = add nsw i32 %88, %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %5, align 4
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %96 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %100 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %104 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %102, i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %182

112:                                              ; preds = %43
  %113 = load %struct.device*, %struct.device** %3, align 8
  %114 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %115 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %119 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %123 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @le16_to_cpu(i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %113, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %117, i32 %121, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.device*, %struct.device** %3, align 8
  %132 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %133 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %134 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %133)
  store %struct.ihex_binrec* %134, %struct.ihex_binrec** %10, align 8
  br label %135

135:                                              ; preds = %178, %112
  %136 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %137 = icmp ne %struct.ihex_binrec* %136, null
  br i1 %137, label %138, label %181

138:                                              ; preds = %135
  %139 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %140 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @be32_to_cpu(i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %144 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = ashr i32 %146, 16
  %148 = load i32, i32* %9, align 4
  %149 = and i32 %148, 65535
  %150 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %151 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @be16_to_cpu(i32 %152)
  %154 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %155 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = call i32 @rom_write(%struct.TYPE_8__* %145, i32 %147, i32 %149, i32 %153, i32* %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %138
  %162 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %163 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %9, align 4
  %169 = ashr i32 %168, 16
  %170 = load i32, i32* %9, align 4
  %171 = and i32 %170, 65535
  %172 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %173 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @be16_to_cpu(i32 %174)
  %176 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %169, i32 %171, i32 %175)
  br label %181

177:                                              ; preds = %138
  br label %178

178:                                              ; preds = %177
  %179 = load %struct.ihex_binrec*, %struct.ihex_binrec** %10, align 8
  %180 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %179)
  store %struct.ihex_binrec* %180, %struct.ihex_binrec** %10, align 8
  br label %135

181:                                              ; preds = %161, %135
  br label %185

182:                                              ; preds = %43
  %183 = load %struct.device*, %struct.device** %3, align 8
  %184 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %183, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %181
  %186 = load %struct.firmware*, %struct.firmware** %11, align 8
  %187 = call i32 @release_firmware(%struct.firmware* %186)
  br label %188

188:                                              ; preds = %185, %38, %26
  ret void
}

declare dso_local i32 @request_ihex_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rom_write(%struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
