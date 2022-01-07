; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ir-usb.c_irda_usb_dump_class_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ir-usb.c_irda_usb_dump_class_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_irda_cs_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"bLength=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"bDescriptorType=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"bcdSpecRevision=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bmDataSize=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"bmWindowSize=%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"bmMinTurnaroundTime=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"wBaudRate=%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"bmAdditionalBOFs=%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"bIrdaRateSniff=%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"bMaxUnicastList=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial*, %struct.usb_irda_cs_descriptor*)* @irda_usb_dump_class_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irda_usb_dump_class_desc(%struct.usb_serial* %0, %struct.usb_irda_cs_descriptor* %1) #0 {
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_irda_cs_descriptor*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  store %struct.usb_irda_cs_descriptor* %1, %struct.usb_irda_cs_descriptor** %4, align 8
  %6 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %7 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %12 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %17 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %22 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__le16_to_cpu(i32 %23)
  %25 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %28 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(%struct.device* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %33 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %38 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %43 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__le16_to_cpu(i32 %44)
  %46 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %49 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %54 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.usb_irda_cs_descriptor*, %struct.usb_irda_cs_descriptor** %4, align 8
  %59 = getelementptr inbounds %struct.usb_irda_cs_descriptor, %struct.usb_irda_cs_descriptor* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
