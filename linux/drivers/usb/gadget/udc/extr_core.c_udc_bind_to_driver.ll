; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_udc_bind_to_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_udc_bind_to_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_udc = type { %struct.TYPE_7__*, %struct.TYPE_8__, %struct.usb_gadget_driver* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_7__*, %struct.usb_gadget_driver*)*, i32, i32 (%struct.TYPE_7__*)*, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"registering UDC driver [%s]\0A\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@EISNAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to start %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_udc*, %struct.usb_gadget_driver*)* @udc_bind_to_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_bind_to_driver(%struct.usb_udc* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_udc*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_udc* %0, %struct.usb_udc** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %7 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %8 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %7, i32 0, i32 1
  %9 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %10 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_dbg(%struct.TYPE_8__* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %14 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %15 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %14, i32 0, i32 2
  store %struct.usb_gadget_driver* %13, %struct.usb_gadget_driver** %15, align 8
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %17 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %16, i32 0, i32 4
  %18 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %19 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32* %17, i32** %20, align 8
  %21 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %22 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %21, i32 0, i32 4
  %23 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %24 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32* %22, i32** %27, align 8
  %28 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %29 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %30 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_gadget_udc_set_speed(%struct.usb_udc* %28, i32 %31)
  %33 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %34 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_7__*, %struct.usb_gadget_driver*)*, i32 (%struct.TYPE_7__*, %struct.usb_gadget_driver*)** %34, align 8
  %36 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %37 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %40 = call i32 %35(%struct.TYPE_7__* %38, %struct.usb_gadget_driver* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %65

44:                                               ; preds = %2
  %45 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %46 = call i32 @usb_gadget_udc_start(%struct.usb_udc* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %51 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %50, i32 0, i32 2
  %52 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %51, align 8
  %53 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %54 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i32 %52(%struct.TYPE_7__* %55)
  br label %65

57:                                               ; preds = %44
  %58 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %59 = call i32 @usb_udc_connect_control(%struct.usb_udc* %58)
  %60 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %61 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* @KOBJ_CHANGE, align 4
  %64 = call i32 @kobject_uevent(i32* %62, i32 %63)
  store i32 0, i32* %3, align 4
  br label %92

65:                                               ; preds = %49, %43
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @EISNAM, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %72 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %71, i32 0, i32 1
  %73 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %74 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %73, i32 0, i32 2
  %75 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %74, align 8
  %76 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_err(%struct.TYPE_8__* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %70, %65
  %81 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %82 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %81, i32 0, i32 2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %82, align 8
  %83 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %84 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load %struct.usb_udc*, %struct.usb_udc** %4, align 8
  %87 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %57
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @usb_gadget_udc_set_speed(%struct.usb_udc*, i32) #1

declare dso_local i32 @usb_gadget_udc_start(%struct.usb_udc*) #1

declare dso_local i32 @usb_udc_connect_control(%struct.usb_udc*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
