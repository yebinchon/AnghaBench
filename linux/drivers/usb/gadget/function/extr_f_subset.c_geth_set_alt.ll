; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_subset.c_geth_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_subset.c_geth_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_gether = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"reset cdc subset\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"init + activate cdc subset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @geth_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geth_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_gether*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %12 = call %struct.f_gether* @func_to_geth(%struct.usb_function* %11)
  store %struct.f_gether* %12, %struct.f_gether** %8, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %9, align 8
  %18 = load %struct.f_gether*, %struct.f_gether** %8, align 8
  %19 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %27 = call i32 @DBG(%struct.usb_composite_dev* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.f_gether*, %struct.f_gether** %8, align 8
  %29 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %28, i32 0, i32 0
  %30 = call i32 @gether_disconnect(%struct.TYPE_6__* %29)
  br label %31

31:                                               ; preds = %25, %3
  %32 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %33 = call i32 @DBG(%struct.usb_composite_dev* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %35 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %38 = load %struct.f_gether*, %struct.f_gether** %8, align 8
  %39 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i64 @config_ep_by_speed(i32 %36, %struct.usb_function* %37, %struct.TYPE_7__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %31
  %45 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %46 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %49 = load %struct.f_gether*, %struct.f_gether** %8, align 8
  %50 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i64 @config_ep_by_speed(i32 %47, %struct.usb_function* %48, %struct.TYPE_7__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %44, %31
  %56 = load %struct.f_gether*, %struct.f_gether** %8, align 8
  %57 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  %61 = load %struct.f_gether*, %struct.f_gether** %8, align 8
  %62 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %74

68:                                               ; preds = %44
  %69 = load %struct.f_gether*, %struct.f_gether** %8, align 8
  %70 = getelementptr inbounds %struct.f_gether, %struct.f_gether* %69, i32 0, i32 0
  %71 = call %struct.net_device* @gether_connect(%struct.TYPE_6__* %70)
  store %struct.net_device* %71, %struct.net_device** %10, align 8
  %72 = load %struct.net_device*, %struct.net_device** %10, align 8
  %73 = call i32 @PTR_ERR_OR_ZERO(%struct.net_device* %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %55
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.f_gether* @func_to_geth(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_6__*) #1

declare dso_local i64 @config_ep_by_speed(i32, %struct.usb_function*, %struct.TYPE_7__*) #1

declare dso_local %struct.net_device* @gether_connect(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
