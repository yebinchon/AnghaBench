; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usbctrl_vendorreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops_linux.c_r8712_usbctrl_vendorreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intf_priv = type { i64 }
%struct.dvobj_priv = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RTL871X_VENQT_READ = common dso_local global i32 0, align 4
@RTL871X_VENQT_WRITE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_usbctrl_vendorreq(%struct.intf_priv* %0, i32 %1, i64 %2, i64 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.intf_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dvobj_priv*, align 8
  %20 = alloca %struct.usb_device*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.intf_priv* %0, %struct.intf_priv** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load %struct.intf_priv*, %struct.intf_priv** %9, align 8
  %24 = getelementptr inbounds %struct.intf_priv, %struct.intf_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.dvobj_priv*
  store %struct.dvobj_priv* %26, %struct.dvobj_priv** %19, align 8
  %27 = load %struct.dvobj_priv*, %struct.dvobj_priv** %19, align 8
  %28 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %27, i32 0, i32 0
  %29 = load %struct.usb_device*, %struct.usb_device** %28, align 8
  store %struct.usb_device* %29, %struct.usb_device** %20, align 8
  %30 = load i64, i64* %14, align 8
  %31 = add nsw i64 %30, 16
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i32* @kmalloc(i64 %31, i32 %32)
  store i32* %33, i32** %21, align 8
  %34 = load i32*, i32** %21, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %7
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %92

39:                                               ; preds = %7
  %40 = load i32*, i32** %21, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  %42 = load i32*, i32** %21, align 8
  %43 = ptrtoint i32* %42 to i32
  %44 = and i32 %43, 15
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  store i32* %47, i32** %22, align 8
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  %52 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %51, i32 0)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* @RTL871X_VENQT_READ, align 4
  store i32 %53, i32* %18, align 4
  br label %65

54:                                               ; preds = %39
  %55 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  %56 = call i32 @usb_sndctrlpipe(%struct.usb_device* %55, i32 0)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* @RTL871X_VENQT_WRITE, align 4
  store i32 %57, i32* %18, align 4
  %58 = load i32*, i32** %22, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load i8*, i8** %13, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i64, i64* %14, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i8* %59, i32* %61, i32 %63)
  br label %65

65:                                               ; preds = %54, %50
  %66 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i32*, i32** %22, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i32, i32* @HZ, align 4
  %75 = sdiv i32 %74, 2
  %76 = call i32 @usb_control_msg(%struct.usb_device* %66, i32 %67, i32 %68, i32 %69, i64 %70, i64 %71, i32* %72, i64 %73, i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %65
  %80 = load i32, i32* %15, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i8*, i8** %13, align 8
  %84 = load i32*, i32** %22, align 8
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @memcpy(i8* %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  br label %88

88:                                               ; preds = %87, %65
  %89 = load i32*, i32** %21, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %36
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i64, i64, i32*, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
