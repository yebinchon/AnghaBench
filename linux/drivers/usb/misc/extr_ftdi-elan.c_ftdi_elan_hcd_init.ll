; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_hcd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_hcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i8*, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }

@EBUSY = common dso_local global i32 0, align 4
@ftdi_release_platform_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"u132_hcd\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"requesting module '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"registering '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_hcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_hcd_init(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  %4 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %5 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %15 = call i32 @ftdi_elan_get_kref(%struct.usb_ftdi* %14)
  %16 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %17 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 100, i32* %18, align 8
  %19 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %20 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %23 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %26 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 8
  %28 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %29 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %32 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %35 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %39 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %42 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %41, i32 0, i32 3
  %43 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %44 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %46, align 8
  %47 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %48 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* @ftdi_release_platform_dev, align 4
  %52 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %53 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 8
  %56 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %57 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %61 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @snprintf(i8* %62, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %65 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %68 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %71 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i32 @dev_info(i32* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %75 = call i32 @request_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %77 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %81 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %86 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %85, i32 0, i32 1
  %87 = call i32 @platform_device_register(%struct.TYPE_8__* %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %13, %10
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ftdi_elan_get_kref(%struct.usb_ftdi*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @request_module(i8*) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
