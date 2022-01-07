; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_eem.c_eem_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_eem.c_eem_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_eem = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"reset eem\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"init eem\0A\00", align 1
@DEFAULT_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"activate eem\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @eem_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eem_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_eem*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %12 = call %struct.f_eem* @func_to_eem(%struct.usb_function* %11)
  store %struct.f_eem* %12, %struct.f_eem** %8, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %106

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %24 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %104

27:                                               ; preds = %21
  %28 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %29 = call i32 @DBG(%struct.usb_composite_dev* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %31 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %30, i32 0, i32 1
  %32 = call i32 @gether_disconnect(%struct.TYPE_6__* %31)
  %33 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %34 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %42 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %84, label %48

48:                                               ; preds = %40, %27
  %49 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %50 = call i32 @DBG(%struct.usb_composite_dev* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %52 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %55 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %56 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i64 @config_ep_by_speed(i32 %53, %struct.usb_function* %54, %struct.TYPE_7__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %48
  %62 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %63 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %66 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %67 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = call i64 @config_ep_by_speed(i32 %64, %struct.usb_function* %65, %struct.TYPE_7__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %61, %48
  %73 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %74 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %79 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  br label %106

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83, %40
  %85 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %86 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load i32, i32* @DEFAULT_FILTER, align 4
  %89 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %90 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %93 = call i32 @DBG(%struct.usb_composite_dev* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.f_eem*, %struct.f_eem** %8, align 8
  %95 = getelementptr inbounds %struct.f_eem, %struct.f_eem* %94, i32 0, i32 1
  %96 = call %struct.net_device* @gether_connect(%struct.TYPE_6__* %95)
  store %struct.net_device* %96, %struct.net_device** %10, align 8
  %97 = load %struct.net_device*, %struct.net_device** %10, align 8
  %98 = call i64 @IS_ERR(%struct.net_device* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %84
  %101 = load %struct.net_device*, %struct.net_device** %10, align 8
  %102 = call i32 @PTR_ERR(%struct.net_device* %101)
  store i32 %102, i32* %4, align 4
  br label %109

103:                                              ; preds = %84
  br label %105

104:                                              ; preds = %21
  br label %106

105:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %109

106:                                              ; preds = %104, %72, %20
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %105, %100
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.f_eem* @func_to_eem(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_6__*) #1

declare dso_local i64 @config_ep_by_speed(i32, %struct.usb_function*, %struct.TYPE_7__*) #1

declare dso_local %struct.net_device* @gether_connect(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
