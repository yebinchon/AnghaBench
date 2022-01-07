; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_iso_stream_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_iso_stream_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_iso_stream = type { i32*, %struct.usb_host_endpoint* }
%struct.usb_host_endpoint = type { %struct.fotg210_iso_stream* }
%struct.fotg210_hcd = type { i32 }
%struct.urb = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.usb_host_endpoint**, %struct.usb_host_endpoint** }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dev %s ep%d%s, not iso??\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fotg210_iso_stream* (%struct.fotg210_hcd*, %struct.urb*)* @iso_stream_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fotg210_iso_stream* @iso_stream_find(%struct.fotg210_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fotg210_iso_stream*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca i64, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usb_pipeendpoint(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @usb_pipein(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.urb*, %struct.urb** %4, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %23, i64 %25
  %27 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %26, align 8
  store %struct.usb_host_endpoint* %27, %struct.usb_host_endpoint** %7, align 8
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.urb*, %struct.urb** %4, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %33, i64 %35
  %37 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %36, align 8
  store %struct.usb_host_endpoint* %37, %struct.usb_host_endpoint** %7, align 8
  br label %38

38:                                               ; preds = %28, %18
  %39 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %39, i32 0, i32 0
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %44 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %43, i32 0, i32 0
  %45 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %44, align 8
  store %struct.fotg210_iso_stream* %45, %struct.fotg210_iso_stream** %6, align 8
  %46 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %6, align 8
  %47 = icmp eq %struct.fotg210_iso_stream* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %38
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call %struct.fotg210_iso_stream* @iso_stream_alloc(i32 %52)
  store %struct.fotg210_iso_stream* %53, %struct.fotg210_iso_stream** %6, align 8
  %54 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %6, align 8
  %55 = icmp ne %struct.fotg210_iso_stream* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %6, align 8
  %61 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %62 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %61, i32 0, i32 0
  store %struct.fotg210_iso_stream* %60, %struct.fotg210_iso_stream** %62, align 8
  %63 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %64 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %6, align 8
  %65 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %64, i32 0, i32 1
  store %struct.usb_host_endpoint* %63, %struct.usb_host_endpoint** %65, align 8
  %66 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %67 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %6, align 8
  %68 = load %struct.urb*, %struct.urb** %4, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load %struct.urb*, %struct.urb** %4, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.urb*, %struct.urb** %4, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @iso_stream_init(%struct.fotg210_hcd* %66, %struct.fotg210_iso_stream* %67, %struct.TYPE_2__* %70, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %59, %51
  br label %104

79:                                               ; preds = %38
  %80 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %6, align 8
  %81 = getelementptr inbounds %struct.fotg210_iso_stream, %struct.fotg210_iso_stream* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %79
  %88 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %89 = load %struct.urb*, %struct.urb** %4, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.urb*, %struct.urb** %4, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @usb_pipein(i32 %97)
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %102 = call i32 @fotg210_dbg(%struct.fotg210_hcd* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i8* %101)
  store %struct.fotg210_iso_stream* null, %struct.fotg210_iso_stream** %6, align 8
  br label %103

103:                                              ; preds = %87, %79
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %106 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %105, i32 0, i32 0
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.fotg210_iso_stream*, %struct.fotg210_iso_stream** %6, align 8
  ret %struct.fotg210_iso_stream* %109
}

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.fotg210_iso_stream* @iso_stream_alloc(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @iso_stream_init(%struct.fotg210_hcd*, %struct.fotg210_iso_stream*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @fotg210_dbg(%struct.fotg210_hcd*, i8*, i32, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
