; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c_mt7601u_vendor_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c_mt7601u_vendor_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32 }
%struct.usb_device = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@MT_VEND_REQ_MAX_RETRY = common dso_local global i32 0, align 4
@MT_VEND_REQ_TOUT_MS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MT7601U_STATE_REMOVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Vendor request req:%02x off:%04x failed:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_vendor_request(%struct.mt7601u_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7601u_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.usb_device*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %22 = call %struct.usb_device* @mt7601u_to_usb_dev(%struct.mt7601u_dev* %21)
  store %struct.usb_device* %22, %struct.usb_device** %18, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @USB_DIR_IN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %33 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %32, i32 0)
  br label %37

34:                                               ; preds = %7
  %35 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %36 = call i32 @usb_sndctrlpipe(%struct.usb_device* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ]
  store i32 %38, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %85, %37
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @MT_VEND_REQ_MAX_RETRY, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %39
  %44 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %14, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i32, i32* @MT_VEND_REQ_TOUT_MS, align 4
  %53 = call i32 @usb_control_msg(%struct.usb_device* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i8* %50, i64 %51, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @trace_mt_vend_req(%struct.mt7601u_dev* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i8* %60, i64 %61, i32 %62)
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %43
  %69 = load i32, i32* @MT7601U_STATE_REMOVED, align 4
  %70 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %71 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %70, i32 0, i32 1
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %68, %43
  %74 = load i32, i32* %17, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %8, align 4
  br label %97

83:                                               ; preds = %76
  %84 = call i32 @msleep(i32 5)
  br label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %39

88:                                               ; preds = %39
  %89 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %90 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %88, %81
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local %struct.usb_device* @mt7601u_to_usb_dev(%struct.mt7601u_dev*) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @trace_mt_vend_req(%struct.mt7601u_dev*, i32, i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
