; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_get_epic_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_edgeport.c_get_epic_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { i32, %struct.TYPE_7__, %struct.edgeport_product_info, %struct.usb_serial* }
%struct.TYPE_7__ = type { %struct.edge_compatibility_bits }
%struct.edge_compatibility_bits = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.edgeport_product_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.usb_serial = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.edge_compatibility_descriptor = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQUEST_ION_GET_EPIC_DESC = common dso_local global i32 0, align 4
@ION_DEVICE_ID_EDGEPORT_COMPATIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"**EPIC descriptor:\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"  VendEnableSuspend: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"  IOSPOpen         : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"  IOSPClose        : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"  IOSPChase        : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"  IOSPSetRxFlow    : %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"  IOSPSetTxFlow    : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"  IOSPSetXChar     : %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"  IOSPRxCheck      : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"  IOSPSetClrBreak  : %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"  IOSPWriteMCR     : %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"  IOSPWriteLCR     : %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"  IOSPSetBaudRate  : %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"  TrueEdgeport     : %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"short epic descriptor received: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edgeport_serial*)* @get_epic_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_epic_descriptor(%struct.edgeport_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edgeport_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_serial*, align 8
  %6 = alloca %struct.edgeport_product_info*, align 8
  %7 = alloca %struct.edge_compatibility_descriptor*, align 8
  %8 = alloca %struct.edge_compatibility_bits*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %3, align 8
  %10 = load %struct.edgeport_serial*, %struct.edgeport_serial** %3, align 8
  %11 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %10, i32 0, i32 3
  %12 = load %struct.usb_serial*, %struct.usb_serial** %11, align 8
  store %struct.usb_serial* %12, %struct.usb_serial** %5, align 8
  %13 = load %struct.edgeport_serial*, %struct.edgeport_serial** %3, align 8
  %14 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %13, i32 0, i32 2
  store %struct.edgeport_product_info* %14, %struct.edgeport_product_info** %6, align 8
  %15 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %16 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %9, align 8
  %19 = load %struct.edgeport_serial*, %struct.edgeport_serial** %3, align 8
  %20 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.edge_compatibility_descriptor* @kmalloc(i32 28, i32 %21)
  store %struct.edge_compatibility_descriptor* %22, %struct.edge_compatibility_descriptor** %7, align 8
  %23 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %24 = icmp ne %struct.edge_compatibility_descriptor* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %220

28:                                               ; preds = %1
  %29 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %30 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %33 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @usb_rcvctrlpipe(%struct.TYPE_6__* %34, i32 0)
  %36 = load i32, i32* @USB_REQUEST_ION_GET_EPIC_DESC, align 4
  %37 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %38 = call i32 @usb_control_msg(%struct.TYPE_6__* %31, i32 %35, i32 %36, i32 192, i32 0, i32 0, %struct.edge_compatibility_descriptor* %37, i32 28, i32 300)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 28
  br i1 %41, label %42, label %203

42:                                               ; preds = %28
  %43 = load %struct.edgeport_serial*, %struct.edgeport_serial** %3, align 8
  %44 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.edgeport_serial*, %struct.edgeport_serial** %3, align 8
  %46 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %45, i32 0, i32 1
  %47 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %48 = call i32 @memcpy(%struct.TYPE_7__* %46, %struct.edge_compatibility_descriptor* %47, i32 28)
  %49 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %50 = call i32 @memset(%struct.edgeport_product_info* %49, i32 0, i32 48)
  %51 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %52 = getelementptr inbounds %struct.edge_compatibility_descriptor, %struct.edge_compatibility_descriptor* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %55 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %57 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %59 = getelementptr inbounds %struct.edge_compatibility_descriptor, %struct.edge_compatibility_descriptor* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %62 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %64 = getelementptr inbounds %struct.edge_compatibility_descriptor, %struct.edge_compatibility_descriptor* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %67 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %69 = getelementptr inbounds %struct.edge_compatibility_descriptor, %struct.edge_compatibility_descriptor* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %72 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %74 = getelementptr inbounds %struct.edge_compatibility_descriptor, %struct.edge_compatibility_descriptor* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %77 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %79 = getelementptr inbounds %struct.edge_compatibility_descriptor, %struct.edge_compatibility_descriptor* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %82 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %84 = getelementptr inbounds %struct.edge_compatibility_descriptor, %struct.edge_compatibility_descriptor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %87 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @ION_DEVICE_ID_EDGEPORT_COMPATIBLE, align 4
  %89 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %90 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.edgeport_serial*, %struct.edgeport_serial** %3, align 8
  %92 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %6, align 8
  %93 = call i32 @dump_product_info(%struct.edgeport_serial* %91, %struct.edgeport_product_info* %92)
  %94 = load %struct.edgeport_serial*, %struct.edgeport_serial** %3, align 8
  %95 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store %struct.edge_compatibility_bits* %96, %struct.edge_compatibility_bits** %8, align 8
  %97 = load %struct.device*, %struct.device** %9, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.device*, %struct.device** %9, align 8
  %100 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %101 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %100, i32 0, i32 12
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %106 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  %107 = load %struct.device*, %struct.device** %9, align 8
  %108 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %109 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %108, i32 0, i32 11
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %114 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %113)
  %115 = load %struct.device*, %struct.device** %9, align 8
  %116 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %117 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %116, i32 0, i32 10
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %122 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %121)
  %123 = load %struct.device*, %struct.device** %9, align 8
  %124 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %125 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %130 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %129)
  %131 = load %struct.device*, %struct.device** %9, align 8
  %132 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %133 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %132, i32 0, i32 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %138 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %137)
  %139 = load %struct.device*, %struct.device** %9, align 8
  %140 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %141 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %146 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %145)
  %147 = load %struct.device*, %struct.device** %9, align 8
  %148 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %149 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %154 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %153)
  %155 = load %struct.device*, %struct.device** %9, align 8
  %156 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %157 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %162 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %161)
  %163 = load %struct.device*, %struct.device** %9, align 8
  %164 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %165 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %170 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %169)
  %171 = load %struct.device*, %struct.device** %9, align 8
  %172 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %173 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %178 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* %177)
  %179 = load %struct.device*, %struct.device** %9, align 8
  %180 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %181 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %186 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %185)
  %187 = load %struct.device*, %struct.device** %9, align 8
  %188 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %189 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %194 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %193)
  %195 = load %struct.device*, %struct.device** %9, align 8
  %196 = load %struct.edge_compatibility_bits*, %struct.edge_compatibility_bits** %8, align 8
  %197 = getelementptr inbounds %struct.edge_compatibility_bits, %struct.edge_compatibility_bits* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %202 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %195, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8* %201)
  store i32 0, i32* %4, align 4
  br label %216

203:                                              ; preds = %28
  %204 = load i32, i32* %4, align 4
  %205 = icmp sge i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %208 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %207, i32 0, i32 0
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %4, align 4
  %212 = call i32 @dev_warn(i32* %210, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @EIO, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %206, %203
  br label %216

216:                                              ; preds = %215, %42
  %217 = load %struct.edge_compatibility_descriptor*, %struct.edge_compatibility_descriptor** %7, align 8
  %218 = call i32 @kfree(%struct.edge_compatibility_descriptor* %217)
  %219 = load i32, i32* %4, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %216, %25
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.edge_compatibility_descriptor* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_6__*, i32, i32, i32, i32, i32, %struct.edge_compatibility_descriptor*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.edge_compatibility_descriptor*, i32) #1

declare dso_local i32 @memset(%struct.edgeport_product_info*, i32, i32) #1

declare dso_local i32 @dump_product_info(%struct.edgeport_serial*, %struct.edgeport_product_info*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.edge_compatibility_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
