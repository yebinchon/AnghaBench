; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_serial.c_gser_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_serial.c_gser_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.f_gser = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i64 }

@.str = private unnamed_addr constant [23 x i8] c"reset generic ttyGS%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"activate generic ttyGS%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @gser_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gser_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_gser*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %11 = call %struct.f_gser* @func_to_gser(%struct.usb_function* %10)
  store %struct.f_gser* %11, %struct.f_gser** %8, align 8
  %12 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %13 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %15, align 8
  store %struct.usb_composite_dev* %16, %struct.usb_composite_dev** %9, align 8
  %17 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %18 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %26 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %30 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %34 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %33, i32 0, i32 1
  %35 = call i32 @gserial_disconnect(%struct.TYPE_7__* %34)
  br label %36

36:                                               ; preds = %24, %3
  %37 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %38 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %46 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %96, label %52

52:                                               ; preds = %44, %36
  %53 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %54 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %58 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %62 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %65 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %66 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i64 @config_ep_by_speed(%struct.TYPE_8__* %63, %struct.usb_function* %64, %struct.TYPE_9__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %52
  %72 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %73 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %76 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %77 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = call i64 @config_ep_by_speed(%struct.TYPE_8__* %74, %struct.usb_function* %75, %struct.TYPE_9__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %71, %52
  %83 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %84 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %89 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %103

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %95, %44
  %97 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %98 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %97, i32 0, i32 1
  %99 = load %struct.f_gser*, %struct.f_gser** %8, align 8
  %100 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @gserial_connect(%struct.TYPE_7__* %98, i32 %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %96, %82
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.f_gser* @func_to_gser(%struct.usb_function*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @gserial_disconnect(%struct.TYPE_7__*) #1

declare dso_local i64 @config_ep_by_speed(%struct.TYPE_8__*, %struct.usb_function*, %struct.TYPE_9__*) #1

declare dso_local i32 @gserial_connect(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
