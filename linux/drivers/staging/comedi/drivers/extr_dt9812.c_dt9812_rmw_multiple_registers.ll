; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_rmw_multiple_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_rmw_multiple_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dt9812_private* }
%struct.dt9812_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dt9812_rmw_byte = type { i32 }
%struct.usb_device = type { i32 }
%struct.dt9812_usb_cmd = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.dt9812_rmw_byte* }

@DT9812_RMW_MULTI_BYTE_REG = common dso_local global i32 0, align 4
@DT9812_USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, %struct.dt9812_rmw_byte*)* @dt9812_rmw_multiple_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_rmw_multiple_registers(%struct.comedi_device* %0, i32 %1, %struct.dt9812_rmw_byte* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dt9812_rmw_byte*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.dt9812_private*, align 8
  %9 = alloca %struct.dt9812_usb_cmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dt9812_rmw_byte* %2, %struct.dt9812_rmw_byte** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %12)
  store %struct.usb_device* %13, %struct.usb_device** %7, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.dt9812_private*, %struct.dt9812_private** %15, align 8
  store %struct.dt9812_private* %16, %struct.dt9812_private** %8, align 8
  %17 = load i32, i32* @DT9812_RMW_MULTI_BYTE_REG, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %42, %3
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %9, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %32, i64 %34
  %36 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %36, i64 %38
  %40 = bitcast %struct.dt9812_rmw_byte* %35 to i8*
  %41 = bitcast %struct.dt9812_rmw_byte* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %47 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %48 = load %struct.dt9812_private*, %struct.dt9812_private** %8, align 8
  %49 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_sndbulkpipe(%struct.usb_device* %47, i32 %51)
  %53 = load i32, i32* @DT9812_USB_TIMEOUT, align 4
  %54 = call i32 @usb_bulk_msg(%struct.usb_device* %46, i32 %52, %struct.dt9812_usb_cmd* %9, i32 32, i32* %11, i32 %53)
  ret i32 %54
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, %struct.dt9812_usb_cmd*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
