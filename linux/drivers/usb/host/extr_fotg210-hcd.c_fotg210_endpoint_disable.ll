; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.fotg210_qh*, %struct.TYPE_8__ }
%struct.fotg210_qh = type { i32, i32, i32, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { %struct.fotg210_qh* }
%struct.TYPE_8__ = type { i32 }
%struct.fotg210_hcd = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fotg210_qh* }
%struct.fotg210_iso_stream = type { i32, i32, i32, %struct.TYPE_7__, i32, i32* }

@FOTG210_RH_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"qh %p (#%02x) state %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(has tds)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @fotg210_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.fotg210_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fotg210_qh*, align 8
  %8 = alloca %struct.fotg210_qh*, align 8
  %9 = alloca %struct.fotg210_iso_stream*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = call %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd* %10)
  store %struct.fotg210_hcd* %11, %struct.fotg210_hcd** %5, align 8
  br label %12

12:                                               ; preds = %86, %2
  %13 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %14 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %13, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %18 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i32 0, i32 0
  %19 = load %struct.fotg210_qh*, %struct.fotg210_qh** %18, align 8
  store %struct.fotg210_qh* %19, %struct.fotg210_qh** %7, align 8
  %20 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %21 = icmp ne %struct.fotg210_qh* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %126

23:                                               ; preds = %12
  %24 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %25 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %30 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %29, i32 0, i32 0
  %31 = load %struct.fotg210_qh*, %struct.fotg210_qh** %30, align 8
  %32 = bitcast %struct.fotg210_qh* %31 to %struct.fotg210_iso_stream*
  store %struct.fotg210_iso_stream* %32, %struct.fotg210_iso_stream** %9, align 8
  %33 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %9, align 8
  %34 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %33, i32 0, i32 4
  %35 = call i32 @list_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %86

38:                                               ; preds = %28
  %39 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %9, align 8
  %40 = bitcast %struct.fotg210_iso_stream* %39 to %struct.fotg210_qh*
  %41 = call i32 @kfree(%struct.fotg210_qh* %40)
  br label %126

42:                                               ; preds = %23
  %43 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %44 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %50 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %49, i32 0, i32 0
  store i32 131, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %53 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %108 [
    i32 130, label %55
    i32 132, label %55
    i32 129, label %85
    i32 128, label %85
    i32 131, label %92
  ]

55:                                               ; preds = %51, %51
  %56 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %57 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.fotg210_qh*, %struct.fotg210_qh** %60, align 8
  store %struct.fotg210_qh* %61, %struct.fotg210_qh** %8, align 8
  br label %62

62:                                               ; preds = %72, %55
  %63 = load %struct.fotg210_qh*, %struct.fotg210_qh** %8, align 8
  %64 = icmp ne %struct.fotg210_qh* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.fotg210_qh*, %struct.fotg210_qh** %8, align 8
  %67 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %68 = icmp ne %struct.fotg210_qh* %66, %67
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  br i1 %70, label %71, label %77

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.fotg210_qh*, %struct.fotg210_qh** %8, align 8
  %74 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.fotg210_qh*, %struct.fotg210_qh** %75, align 8
  store %struct.fotg210_qh* %76, %struct.fotg210_qh** %8, align 8
  br label %62

77:                                               ; preds = %69
  %78 = load %struct.fotg210_qh*, %struct.fotg210_qh** %8, align 8
  %79 = icmp ne %struct.fotg210_qh* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %82 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %83 = call i32 @start_unlink_async(%struct.fotg210_hcd* %81, %struct.fotg210_qh* %82)
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %51, %51, %84
  br label %86

86:                                               ; preds = %97, %85, %37
  %87 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %88 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %87, i32 0, i32 1
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %12

92:                                               ; preds = %51
  %93 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %94 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %86

98:                                               ; preds = %92
  %99 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %100 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %99, i32 0, i32 1
  %101 = call i32 @list_empty(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %105 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %106 = call i32 @qh_destroy(%struct.fotg210_hcd* %104, %struct.fotg210_qh* %105)
  br label %125

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %51, %107
  %109 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %110 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %111 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %112 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %116 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.fotg210_qh*, %struct.fotg210_qh** %7, align 8
  %119 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %118, i32 0, i32 1
  %120 = call i32 @list_empty(i32* %119)
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %124 = call i32 @fotg210_err(%struct.fotg210_hcd* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.fotg210_qh* %110, i32 %114, i32 %117, i8* %123)
  br label %125

125:                                              ; preds = %108, %103
  br label %126

126:                                              ; preds = %125, %38, %22
  %127 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %128 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %127, i32 0, i32 0
  store %struct.fotg210_qh* null, %struct.fotg210_qh** %128, align 8
  %129 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %130 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %129, i32 0, i32 1
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  ret void
}

declare dso_local %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.fotg210_qh*) #1

declare dso_local i32 @start_unlink_async(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @qh_destroy(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @fotg210_err(%struct.fotg210_hcd*, i8*, %struct.fotg210_qh*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
