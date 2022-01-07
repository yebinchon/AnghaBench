; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_read_multiple_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_read_multiple_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.dt9812_private* }
%struct.dt9812_private = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dt9812_usb_cmd = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.dt9812_usb_cmd* }
%struct.usb_device = type { i32 }

@DT9812_R_MULTI_BYTE_REG = common dso_local global i32 0, align 4
@DT9812_USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, %struct.dt9812_usb_cmd*, %struct.dt9812_usb_cmd*)* @dt9812_read_multiple_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_read_multiple_registers(%struct.comedi_device* %0, i32 %1, %struct.dt9812_usb_cmd* %2, %struct.dt9812_usb_cmd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dt9812_usb_cmd*, align 8
  %9 = alloca %struct.dt9812_usb_cmd*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.dt9812_private*, align 8
  %12 = alloca %struct.dt9812_usb_cmd, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dt9812_usb_cmd* %2, %struct.dt9812_usb_cmd** %8, align 8
  store %struct.dt9812_usb_cmd* %3, %struct.dt9812_usb_cmd** %9, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %16)
  store %struct.usb_device* %17, %struct.usb_device** %10, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.dt9812_private*, %struct.dt9812_private** %19, align 8
  store %struct.dt9812_private* %20, %struct.dt9812_private** %11, align 8
  %21 = load i32, i32* @DT9812_R_MULTI_BYTE_REG, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %12, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %12, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %46, %4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %12, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.dt9812_usb_cmd*, %struct.dt9812_usb_cmd** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %36, i64 %38
  %40 = load %struct.dt9812_usb_cmd*, %struct.dt9812_usb_cmd** %8, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %40, i64 %42
  %44 = bitcast %struct.dt9812_usb_cmd* %39 to i8*
  %45 = bitcast %struct.dt9812_usb_cmd* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 24, i1 false)
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %51 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %52 = load %struct.dt9812_private*, %struct.dt9812_private** %11, align 8
  %53 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usb_sndbulkpipe(%struct.usb_device* %51, i32 %55)
  %57 = load i32, i32* @DT9812_USB_TIMEOUT, align 4
  %58 = call i32 @usb_bulk_msg(%struct.usb_device* %50, i32 %56, %struct.dt9812_usb_cmd* %12, i32 32, i32* %14, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %5, align 4
  br label %75

63:                                               ; preds = %49
  %64 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %65 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %66 = load %struct.dt9812_private*, %struct.dt9812_private** %11, align 8
  %67 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %65, i32 %69)
  %71 = load %struct.dt9812_usb_cmd*, %struct.dt9812_usb_cmd** %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @DT9812_USB_TIMEOUT, align 4
  %74 = call i32 @usb_bulk_msg(%struct.usb_device* %64, i32 %70, %struct.dt9812_usb_cmd* %71, i32 %72, i32* %14, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %63, %61
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, %struct.dt9812_usb_cmd*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
