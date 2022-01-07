; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_send_host_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_send_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusb_cbaf_host_info = type { %struct.TYPE_5__, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cbaf = type { %struct.TYPE_8__*, i32, i32, i32, %struct.wusb_cbaf_host_info* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@cbaf_host_info_defaults = common dso_local global %struct.wusb_cbaf_host_info zeroinitializer, align 8
@CBA_NAME_LEN = common dso_local global i32 0, align 4
@CBAF_REQ_SET_ASSOCIATION_RESPONSE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbaf*)* @cbaf_send_host_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_send_host_info(%struct.cbaf* %0) #0 {
  %2 = alloca %struct.cbaf*, align 8
  %3 = alloca %struct.wusb_cbaf_host_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.cbaf* %0, %struct.cbaf** %2, align 8
  %6 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %7 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %6, i32 0, i32 4
  %8 = load %struct.wusb_cbaf_host_info*, %struct.wusb_cbaf_host_info** %7, align 8
  store %struct.wusb_cbaf_host_info* %8, %struct.wusb_cbaf_host_info** %3, align 8
  %9 = load %struct.wusb_cbaf_host_info*, %struct.wusb_cbaf_host_info** %3, align 8
  %10 = call i32 @memset(%struct.wusb_cbaf_host_info* %9, i32 0, i32 24)
  %11 = load %struct.wusb_cbaf_host_info*, %struct.wusb_cbaf_host_info** %3, align 8
  %12 = bitcast %struct.wusb_cbaf_host_info* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.wusb_cbaf_host_info* @cbaf_host_info_defaults to i8*), i64 24, i1 false)
  %13 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %14 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.wusb_cbaf_host_info*, %struct.wusb_cbaf_host_info** %3, align 8
  %17 = getelementptr inbounds %struct.wusb_cbaf_host_info, %struct.wusb_cbaf_host_info* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.wusb_cbaf_host_info*, %struct.wusb_cbaf_host_info** %3, align 8
  %19 = getelementptr inbounds %struct.wusb_cbaf_host_info, %struct.wusb_cbaf_host_info* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.wusb_cbaf_host_info*, %struct.wusb_cbaf_host_info** %3, align 8
  %21 = getelementptr inbounds %struct.wusb_cbaf_host_info, %struct.wusb_cbaf_host_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %24 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CBA_NAME_LEN, align 4
  %27 = call i32 @strlcpy(i32 %22, i32 %25, i32 %26)
  %28 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %29 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strlen(i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @cpu_to_le16(i64 %32)
  %34 = load %struct.wusb_cbaf_host_info*, %struct.wusb_cbaf_host_info** %3, align 8
  %35 = getelementptr inbounds %struct.wusb_cbaf_host_info, %struct.wusb_cbaf_host_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add i64 24, %37
  store i64 %38, i64* %5, align 8
  %39 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %40 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %43 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @usb_sndctrlpipe(i32 %44, i32 0)
  %46 = load i32, i32* @CBAF_REQ_SET_ASSOCIATION_RESPONSE, align 4
  %47 = load i32, i32* @USB_DIR_OUT, align 4
  %48 = load i32, i32* @USB_TYPE_CLASS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %53 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wusb_cbaf_host_info*, %struct.wusb_cbaf_host_info** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %63 = call i32 @usb_control_msg(i32 %41, i32 %45, i32 %46, i32 %51, i32 257, i32 %59, %struct.wusb_cbaf_host_info* %60, i64 %61, i32 %62)
  ret i32 %63
}

declare dso_local i32 @memset(%struct.wusb_cbaf_host_info*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.wusb_cbaf_host_info*, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
