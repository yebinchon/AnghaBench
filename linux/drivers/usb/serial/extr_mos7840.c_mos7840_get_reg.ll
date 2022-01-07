; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moschip_port = type { i8*, i32, %struct.TYPE_7__*, %struct.usb_ctrlrequest*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.usb_ctrlrequest = type { i8*, i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@MOS7840_FLAG_CTRL_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MCS_RD_RTYPE = common dso_local global i32 0, align 4
@MCS_RDREQ = common dso_local global i32 0, align 4
@mos7840_control_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.moschip_port*, i32, i32, i32*)* @mos7840_get_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos7840_get_reg(%struct.moschip_port* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.moschip_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usb_ctrlrequest*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.moschip_port* %0, %struct.moschip_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %15 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  store %struct.usb_device* %20, %struct.usb_device** %10, align 8
  %21 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %22 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %21, i32 0, i32 3
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %22, align 8
  store %struct.usb_ctrlrequest* %23, %struct.usb_ctrlrequest** %11, align 8
  %24 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %25 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  %27 = load i32, i32* @MOS7840_FLAG_CTRL_BUSY, align 4
  %28 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %29 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %28, i32 0, i32 1
  %30 = call i64 @test_and_set_bit_lock(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %83

35:                                               ; preds = %4
  %36 = load i32, i32* @MCS_RD_RTYPE, align 4
  %37 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %38 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @MCS_RDREQ, align 4
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %49 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = call i8* @cpu_to_le16(i32 2)
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %54 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %58 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %57, i32 0)
  %59 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %11, align 8
  %60 = bitcast %struct.usb_ctrlrequest* %59 to i8*
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* @mos7840_control_callback, align 4
  %63 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %64 = call i32 @usb_fill_control_urb(%struct.TYPE_7__* %55, %struct.usb_device* %56, i32 %58, i8* %60, i8* %61, i32 2, i32 %62, %struct.moschip_port* %63)
  %65 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %66 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 2, i32* %68, align 4
  %69 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %70 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call i32 @usb_submit_urb(%struct.TYPE_7__* %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %35
  %77 = load i32, i32* @MOS7840_FLAG_CTRL_BUSY, align 4
  %78 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %79 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %78, i32 0, i32 1
  %80 = call i32 @clear_bit_unlock(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %35
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %32
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_7__*, %struct.usb_device*, i32, i8*, i8*, i32, i32, %struct.moschip_port*) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
