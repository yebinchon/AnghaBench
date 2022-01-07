; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_loopback.c_alloc_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_loopback.c_alloc_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }
%struct.f_loopback = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_request = type { %struct.usb_request*, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@loopback_complete = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s queue req --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*, %struct.f_loopback*)* @alloc_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_requests(%struct.usb_composite_dev* %0, %struct.f_loopback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_composite_dev*, align 8
  %5 = alloca %struct.f_loopback*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca %struct.usb_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %4, align 8
  store %struct.f_loopback* %1, %struct.f_loopback** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %79, %2
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %13 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i1 [ false, %10 ], [ %18, %16 ]
  br i1 %20, label %21, label %82

21:                                               ; preds = %19
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %25 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.usb_request* @usb_ep_alloc_request(i32 %26, i32 %27)
  store %struct.usb_request* %28, %struct.usb_request** %6, align 8
  %29 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %30 = icmp ne %struct.usb_request* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %95

32:                                               ; preds = %21
  %33 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %34 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %37 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.usb_request* @lb_alloc_ep_req(%struct.TYPE_4__* %35, i32 %38)
  store %struct.usb_request* %39, %struct.usb_request** %7, align 8
  %40 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %41 = icmp ne %struct.usb_request* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %89

43:                                               ; preds = %32
  %44 = load i8*, i8** @loopback_complete, align 8
  %45 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %46 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @loopback_complete, align 8
  %48 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %49 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %51 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %54 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %56 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %57 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %56, i32 0, i32 0
  store %struct.usb_request* %55, %struct.usb_request** %57, align 8
  %58 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %59 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %60 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %59, i32 0, i32 0
  store %struct.usb_request* %58, %struct.usb_request** %60, align 8
  %61 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %62 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i32 @usb_ep_queue(%struct.TYPE_4__* %63, %struct.usb_request* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %43
  %70 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %71 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %72 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ERROR(%struct.usb_composite_dev* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  br label %83

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %10

82:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %97

83:                                               ; preds = %69
  %84 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %85 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load %struct.usb_request*, %struct.usb_request** %7, align 8
  %88 = call i32 @free_ep_req(%struct.TYPE_4__* %86, %struct.usb_request* %87)
  br label %89

89:                                               ; preds = %83, %42
  %90 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %91 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %94 = call i32 @usb_ep_free_request(i32 %92, %struct.usb_request* %93)
  br label %95

95:                                               ; preds = %89, %31
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %82
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.usb_request* @usb_ep_alloc_request(i32, i32) #1

declare dso_local %struct.usb_request* @lb_alloc_ep_req(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usb_ep_queue(%struct.TYPE_4__*, %struct.usb_request*, i32) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, i32) #1

declare dso_local i32 @free_ep_req(%struct.TYPE_4__*, %struct.usb_request*) #1

declare dso_local i32 @usb_ep_free_request(i32, %struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
