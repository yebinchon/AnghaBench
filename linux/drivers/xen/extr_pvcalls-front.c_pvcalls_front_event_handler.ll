; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.pvcalls_bedata = type { i32, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.xen_pvcalls_response = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sock_mapping = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@PVCALLS_POLL = common dso_local global i64 0, align 8
@PVCALLS_FLAG_POLL_INFLIGHT = common dso_local global i32 0, align 4
@PVCALLS_FLAG_POLL_RET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pvcalls_front_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_front_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca %struct.pvcalls_bedata*, align 8
  %8 = alloca %struct.xen_pvcalls_response*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock_mapping*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.xenbus_device*
  store %struct.xenbus_device* %16, %struct.xenbus_device** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %18 = icmp eq %struct.xenbus_device* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %20, i32* %3, align 4
  br label %122

21:                                               ; preds = %2
  %22 = call i32 (...) @pvcalls_enter()
  %23 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %24 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %23, i32 0, i32 0
  %25 = call %struct.pvcalls_bedata* @dev_get_drvdata(i32* %24)
  store %struct.pvcalls_bedata* %25, %struct.pvcalls_bedata** %7, align 8
  %26 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %27 = icmp eq %struct.pvcalls_bedata* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = call i32 (...) @pvcalls_exit()
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %122

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %111, %31
  br label %33

33:                                               ; preds = %98, %32
  %34 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %35 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %34, i32 0, i32 1
  %36 = call i64 @RING_HAS_UNCONSUMED_RESPONSES(%struct.TYPE_12__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %104

38:                                               ; preds = %33
  %39 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %40 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %39, i32 0, i32 1
  %41 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %42 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_12__* %40, i32 %44)
  store %struct.xen_pvcalls_response* %45, %struct.xen_pvcalls_response** %8, align 8
  %46 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %47 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %50 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PVCALLS_POLL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %38
  %55 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %56 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.sock_mapping*
  store %struct.sock_mapping* %60, %struct.sock_mapping** %14, align 8
  %61 = load i32, i32* @PVCALLS_FLAG_POLL_INFLIGHT, align 4
  %62 = load %struct.sock_mapping*, %struct.sock_mapping** %14, align 8
  %63 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = bitcast i32* %64 to i8*
  %66 = call i32 @clear_bit(i32 %61, i8* %65)
  %67 = call i32 (...) @smp_wmb()
  %68 = load i32, i32* @PVCALLS_FLAG_POLL_RET, align 4
  %69 = load %struct.sock_mapping*, %struct.sock_mapping** %14, align 8
  %70 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = bitcast i32* %71 to i8*
  %73 = call i32 @set_bit(i32 %68, i8* %72)
  br label %98

74:                                               ; preds = %38
  %75 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %76 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  %81 = bitcast %struct.TYPE_11__* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32* %82, i32** %10, align 8
  %83 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %84 = bitcast %struct.xen_pvcalls_response* %83 to i32*
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32* %85, i32** %9, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @memcpy(i32* %86, i32* %87, i32 20)
  %89 = call i32 (...) @smp_wmb()
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %92 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %91, i32 0, i32 2
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 4
  br label %98

98:                                               ; preds = %74, %54
  store i32 1, i32* %13, align 4
  %99 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %100 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %33

104:                                              ; preds = %33
  %105 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %106 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %105, i32 0, i32 1
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_12__* %106, i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %32

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %7, align 8
  %117 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %116, i32 0, i32 0
  %118 = call i32 @wake_up(i32* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = call i32 (...) @pvcalls_exit()
  %121 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %119, %28, %19
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @pvcalls_enter(...) #1

declare dso_local %struct.pvcalls_bedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pvcalls_exit(...) #1

declare dso_local i64 @RING_HAS_UNCONSUMED_RESPONSES(%struct.TYPE_12__*) #1

declare dso_local %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @clear_bit(i32, i8*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @set_bit(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @RING_FINAL_CHECK_FOR_RESPONSES(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
