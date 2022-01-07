; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_get_manufacturing_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_get_manufacturing_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i64* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"getting manufacturer descriptor\0A\00", align 1
@EDGE_MANUF_DESC_ADDR = common dso_local global i32 0, align 4
@EDGE_MANUF_DESC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"error in getting manufacturer descriptor: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"**Manufacturer Descriptor\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"  RomSize:        %dK\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"  RamSize:        %dK\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"  CpuRev:         %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"  BoardRev:       %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"  NumPorts:       %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"  DescDate:       %d/%d/%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"  SerialNumber: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"  AssemblyNumber: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"  OemAssyNumber:  %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"  UartType:       %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"  IonPid:         %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"  IonConfig:      %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edgeport_serial*)* @get_manufacturing_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_manufacturing_desc(%struct.edgeport_serial* %0) #0 {
  %2 = alloca %struct.edgeport_serial*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [30 x i8], align 16
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %2, align 8
  %6 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %7 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %3, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %15 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* @EDGE_MANUF_DESC_ADDR, align 4
  %18 = and i32 %17, -65536
  %19 = lshr i32 %18, 16
  %20 = load i32, i32* @EDGE_MANUF_DESC_ADDR, align 4
  %21 = and i32 %20, 65535
  %22 = load i32, i32* @EDGE_MANUF_DESC_LEN, align 4
  %23 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %24 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %23, i32 0, i32 0
  %25 = bitcast %struct.TYPE_5__* %24 to i32*
  %26 = call i32 @rom_read(%struct.TYPE_6__* %16, i32 %19, i32 %21, i32 %22, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %147

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %38 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %44 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %50 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %56 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %58)
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %62 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %68 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 14
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %74 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 14
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %80 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 14
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1900
  %86 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %72, i64 %78, i64 %85)
  %87 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %88 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %89 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %93 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %95, 2
  %97 = call i32 @unicode_to_ascii(i8* %87, i32 30, i32 %91, i32 %96)
  %98 = load %struct.device*, %struct.device** %3, align 8
  %99 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %100 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %99)
  %101 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %102 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %103 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %107 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 2
  %111 = call i32 @unicode_to_ascii(i8* %101, i32 30, i32 %105, i32 %110)
  %112 = load %struct.device*, %struct.device** %3, align 8
  %113 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %114 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %113)
  %115 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %116 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %117 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %121 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 2
  %125 = call i32 @unicode_to_ascii(i8* %115, i32 30, i32 %119, i32 %124)
  %126 = load %struct.device*, %struct.device** %3, align 8
  %127 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %128 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %127)
  %129 = load %struct.device*, %struct.device** %3, align 8
  %130 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %131 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %133)
  %135 = load %struct.device*, %struct.device** %3, align 8
  %136 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %137 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 9
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %139)
  %141 = load %struct.device*, %struct.device** %3, align 8
  %142 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %143 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 10
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %33, %29
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @rom_read(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @unicode_to_ascii(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
