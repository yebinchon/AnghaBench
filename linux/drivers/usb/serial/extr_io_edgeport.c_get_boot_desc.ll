; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_get_boot_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_get_boot_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"getting boot descriptor\0A\00", align 1
@EDGE_BOOT_DESC_ADDR = common dso_local global i32 0, align 4
@EDGE_BOOT_DESC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"error in getting boot descriptor: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"**Boot Descriptor:\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"  BootCodeLength: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"  MajorVersion:   %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"  MinorVersion:   %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"  BuildNumber:    %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"  Capabilities:   0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"  UConfig0:       %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"  UConfig1:       %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edgeport_serial*)* @get_boot_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_boot_desc(%struct.edgeport_serial* %0) #0 {
  %2 = alloca %struct.edgeport_serial*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %2, align 8
  %5 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %6 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %14 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i32, i32* @EDGE_BOOT_DESC_ADDR, align 4
  %17 = and i32 %16, -65536
  %18 = lshr i32 %17, 16
  %19 = load i32, i32* @EDGE_BOOT_DESC_ADDR, align 4
  %20 = and i32 %19, 65535
  %21 = load i32, i32* @EDGE_BOOT_DESC_LEN, align 4
  %22 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %23 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %22, i32 0, i32 0
  %24 = bitcast %struct.TYPE_5__* %23 to i32*
  %25 = call i32 @rom_read(%struct.TYPE_6__* %15, i32 %18, i32 %20, i32 %21, i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %80

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %37 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %44 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %50 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %56 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %63 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %66)
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %70 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %76 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @rom_read(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
