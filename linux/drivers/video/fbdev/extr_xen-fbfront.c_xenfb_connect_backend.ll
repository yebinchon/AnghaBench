; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_connect_backend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_connect_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.xenfb_info = type { i32, i32 }
%struct.xenbus_transaction = type { i32 }

@xenfb_event_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bind_evtchn_to_irqhandler\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"page-ref\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@XEN_IO_PROTO_ABI_NATIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"feature-update\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"writing xenstore\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenfb_info*)* @xenfb_connect_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenfb_connect_backend(%struct.xenbus_device* %0, %struct.xenfb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenfb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xenbus_transaction, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenfb_info* %1, %struct.xenfb_info** %5, align 8
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %11 = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %124

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @xenfb_event_handler, align 4
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %20 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %23 = call i32 @bind_evtchn_to_irqhandler(i32 %17, i32 %18, i32 0, i32 %21, %struct.xenfb_info* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @xenbus_free_evtchn(%struct.xenbus_device* %27, i32 %28)
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %30, i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %100, %34
  %36 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %9)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %40, i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %119

43:                                               ; preds = %35
  %44 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %45 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %48 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @virt_to_gfn(i32 %49)
  %51 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %52, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %112

57:                                               ; preds = %43
  %58 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %59 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %63, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %112

68:                                               ; preds = %57
  %69 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %70 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @XEN_IO_PROTO_ABI_NATIVE, align 4
  %73 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %74, i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %112

79:                                               ; preds = %68
  %80 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %81 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %84, i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %112

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @xenbus_transaction_end(i32 %91, i32 0)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %35

101:                                              ; preds = %95
  %102 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %102, i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %119

105:                                              ; preds = %89
  %106 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %107 = load i32, i32* @XenbusStateInitialised, align 4
  %108 = call i32 @xenbus_switch_state(%struct.xenbus_device* %106, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %111 = getelementptr inbounds %struct.xenfb_info, %struct.xenfb_info* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  store i32 0, i32* %3, align 4
  br label %124

112:                                              ; preds = %88, %78, %67, %56
  %113 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %9, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @xenbus_transaction_end(i32 %114, i32 1)
  %116 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %116, i32 %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %119

119:                                              ; preds = %112, %101, %39
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.xenfb_info*, %struct.xenfb_info** %5, align 8
  %122 = call i32 @unbind_from_irqhandler(i32 %120, %struct.xenfb_info* %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %105, %26, %14
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i32, %struct.xenfb_info*) #1

declare dso_local i32 @xenbus_free_evtchn(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @virt_to_gfn(i32) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.xenfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
