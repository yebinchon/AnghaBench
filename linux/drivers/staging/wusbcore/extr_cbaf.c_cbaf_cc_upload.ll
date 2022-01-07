; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_cc_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_cc_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusb_cbaf_cc_data = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cbaf = type { %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.wusb_cbaf_cc_data* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.device }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.device = type { i32 }

@cbaf_cc_data_defaults = common dso_local global %struct.wusb_cbaf_cc_data zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"Trying to upload CC:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  CHID       %16ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"  CDID       %16ph\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"  Bandgroups 0x%04x\0A\00", align 1
@CBAF_REQ_SET_ASSOCIATION_RESPONSE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbaf*)* @cbaf_cc_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_cc_upload(%struct.cbaf* %0) #0 {
  %2 = alloca %struct.cbaf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wusb_cbaf_cc_data*, align 8
  store %struct.cbaf* %0, %struct.cbaf** %2, align 8
  %6 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %7 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %11 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %10, i32 0, i32 6
  %12 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %11, align 8
  store %struct.wusb_cbaf_cc_data* %12, %struct.wusb_cbaf_cc_data** %5, align 8
  %13 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %14 = bitcast %struct.wusb_cbaf_cc_data* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.wusb_cbaf_cc_data* @cbaf_cc_data_defaults to i8*), i64 16, i1 false)
  %15 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %16 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %15, i32 0, i32 1
  %17 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %18 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %17, i32 0, i32 5
  %19 = bitcast %struct.TYPE_6__* %16 to i8*
  %20 = bitcast %struct.TYPE_6__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 8 %20, i64 4, i1 false)
  %21 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %22 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %21, i32 0, i32 0
  %23 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %24 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %23, i32 0, i32 4
  %25 = bitcast %struct.TYPE_7__* %22 to i8*
  %26 = bitcast %struct.TYPE_7__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %28 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %31 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %33 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %37 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %42 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %48 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %54 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %58 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %61 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usb_sndctrlpipe(i32 %62, i32 0)
  %64 = load i32, i32* @CBAF_REQ_SET_ASSOCIATION_RESPONSE, align 4
  %65 = load i32, i32* @USB_DIR_OUT, align 4
  %66 = load i32, i32* @USB_TYPE_CLASS, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %71 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %79 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %80 = call i32 @usb_control_msg(i32 %59, i32 %63, i32 %64, i32 %69, i32 513, i32 %77, %struct.wusb_cbaf_cc_data* %78, i32 16, i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #2

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.wusb_cbaf_cc_data*, i32, i32) #2

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
