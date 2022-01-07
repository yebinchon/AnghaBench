; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-hc.c_wa_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-hc.c_wa_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32*, i32, i32*, i32*, i32 }
%struct.usb_interface = type { %struct.TYPE_6__*, %struct.device }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WA-CDS: can't initialize notif endpoint: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wa_create(%struct.wahc* %0, %struct.usb_interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wahc*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.wahc* %0, %struct.wahc** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %91

22:                                               ; preds = %3
  %23 = load %struct.wahc*, %struct.wahc** %5, align 8
  %24 = call i32 @wa_rpipes_create(%struct.wahc* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %89

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.wahc*, %struct.wahc** %5, align 8
  %31 = getelementptr inbounds %struct.wahc, %struct.wahc* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.wahc*, %struct.wahc** %5, align 8
  %40 = getelementptr inbounds %struct.wahc, %struct.wahc* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.wahc*, %struct.wahc** %5, align 8
  %49 = getelementptr inbounds %struct.wahc, %struct.wahc* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load %struct.wahc*, %struct.wahc** %5, align 8
  %51 = getelementptr inbounds %struct.wahc, %struct.wahc* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @usb_endpoint_maxp(i32* %52)
  %54 = load %struct.wahc*, %struct.wahc** %5, align 8
  %55 = getelementptr inbounds %struct.wahc, %struct.wahc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.wahc*, %struct.wahc** %5, align 8
  %57 = getelementptr inbounds %struct.wahc, %struct.wahc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32* @kmalloc(i32 %58, i32 %59)
  %61 = load %struct.wahc*, %struct.wahc** %5, align 8
  %62 = getelementptr inbounds %struct.wahc, %struct.wahc* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.wahc*, %struct.wahc** %5, align 8
  %64 = getelementptr inbounds %struct.wahc, %struct.wahc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %28
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %86

70:                                               ; preds = %28
  %71 = load %struct.wahc*, %struct.wahc** %5, align 8
  %72 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %73 = call i32 @wa_nep_create(%struct.wahc* %71, %struct.usb_interface* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.device*, %struct.device** %9, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %81

80:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %91

81:                                               ; preds = %76
  %82 = load %struct.wahc*, %struct.wahc** %5, align 8
  %83 = getelementptr inbounds %struct.wahc, %struct.wahc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @kfree(i32* %84)
  br label %86

86:                                               ; preds = %81, %67
  %87 = load %struct.wahc*, %struct.wahc** %5, align 8
  %88 = call i32 @wa_rpipes_destroy(%struct.wahc* %87)
  br label %89

89:                                               ; preds = %86, %27
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %80, %19
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @wa_rpipes_create(%struct.wahc*) #1

declare dso_local i32 @usb_endpoint_maxp(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @wa_nep_create(%struct.wahc*, %struct.usb_interface*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @wa_rpipes_destroy(%struct.wahc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
