; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_check_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_check_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_sourcesink = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.usb_request = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"bad OUT byte, buf[%d] = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_sourcesink*, %struct.usb_request*)* @check_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_read_data(%struct.f_sourcesink* %0, %struct.usb_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f_sourcesink*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usb_composite_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.f_sourcesink* %0, %struct.f_sourcesink** %4, align 8
  store %struct.usb_request* %1, %struct.usb_request** %5, align 8
  %10 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %11 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.f_sourcesink*, %struct.f_sourcesink** %4, align 8
  %14 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %17, align 8
  store %struct.usb_composite_dev* %18, %struct.usb_composite_dev** %8, align 8
  %19 = load %struct.f_sourcesink*, %struct.f_sourcesink** %4, align 8
  %20 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.f_sourcesink*, %struct.f_sourcesink** %4, align 8
  %28 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

32:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %71, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %36 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %33
  %40 = load %struct.f_sourcesink*, %struct.f_sourcesink** %4, align 8
  %41 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %59 [
    i32 0, label %43
    i32 1, label %49
  ]

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %71

48:                                               ; preds = %43
  br label %59

49:                                               ; preds = %39
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = urem i32 %52, %53
  %55 = urem i32 %54, 63
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %71

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %39, %58, %48
  %60 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ERROR(%struct.usb_composite_dev* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63)
  %65 = load %struct.f_sourcesink*, %struct.f_sourcesink** %4, align 8
  %66 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 @usb_ep_set_halt(%struct.TYPE_8__* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %77

71:                                               ; preds = %57, %47
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %7, align 8
  br label %33

76:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %59, %31
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, i32) #1

declare dso_local i32 @usb_ep_set_halt(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
