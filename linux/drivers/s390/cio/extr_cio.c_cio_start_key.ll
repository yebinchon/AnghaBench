; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_start_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_start_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i64, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ccw1 = type { i32 }
%struct.io_subchannel_private = type { %struct.TYPE_6__, %union.orb }
%struct.TYPE_6__ = type { i64, i64, i64 }
%union.orb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"stIO\00", align 1
@SCSW_ACTL_START_PEND = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_start_key(%struct.subchannel* %0, %struct.ccw1* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.subchannel*, align 8
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.io_subchannel_private*, align 8
  %11 = alloca %union.orb*, align 8
  %12 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %6, align 8
  store %struct.ccw1* %1, %struct.ccw1** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %14 = call %struct.io_subchannel_private* @to_io_private(%struct.subchannel* %13)
  store %struct.io_subchannel_private* %14, %struct.io_subchannel_private** %10, align 8
  %15 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %10, align 8
  %16 = getelementptr inbounds %struct.io_subchannel_private, %struct.io_subchannel_private* %15, i32 0, i32 1
  store %union.orb* %16, %union.orb** %11, align 8
  %17 = call i32 @CIO_TRACE_EVENT(i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 3
  %20 = call i8* @dev_name(i32* %19)
  %21 = call i32 @CIO_TRACE_EVENT(i32 5, i8* %20)
  %22 = load %union.orb*, %union.orb** %11, align 8
  %23 = call i32 @memset(%union.orb* %22, i32 0, i32 64)
  %24 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %25 = ptrtoint %struct.subchannel* %24 to i64
  %26 = load %union.orb*, %union.orb** %11, align 8
  %27 = bitcast %union.orb* %26 to %struct.TYPE_7__*
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 9
  store i64 %25, i64* %28, align 8
  %29 = load %union.orb*, %union.orb** %11, align 8
  %30 = bitcast %union.orb* %29 to %struct.TYPE_7__*
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %10, align 8
  %33 = getelementptr inbounds %struct.io_subchannel_private, %struct.io_subchannel_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %union.orb*, %union.orb** %11, align 8
  %39 = bitcast %union.orb* %38 to %struct.TYPE_7__*
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %10, align 8
  %42 = getelementptr inbounds %struct.io_subchannel_private, %struct.io_subchannel_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %union.orb*, %union.orb** %11, align 8
  %46 = bitcast %union.orb* %45 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  store i64 %44, i64* %47, align 8
  %48 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %10, align 8
  %49 = getelementptr inbounds %struct.io_subchannel_private, %struct.io_subchannel_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %4
  %54 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %10, align 8
  %55 = getelementptr inbounds %struct.io_subchannel_private, %struct.io_subchannel_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %53, %4
  %60 = phi i1 [ false, %4 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = load %union.orb*, %union.orb** %11, align 8
  %63 = bitcast %union.orb* %62 to %struct.TYPE_7__*
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i64, i64* %8, align 8
  br label %73

69:                                               ; preds = %59
  %70 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %71 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi i64 [ %68, %67 ], [ %72, %69 ]
  %75 = load %union.orb*, %union.orb** %11, align 8
  %76 = bitcast %union.orb* %75 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 7
  store i64 %74, i64* %77, align 8
  %78 = load %union.orb*, %union.orb** %11, align 8
  %79 = bitcast %union.orb* %78 to %struct.TYPE_7__*
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load %union.orb*, %union.orb** %11, align 8
  %82 = bitcast %union.orb* %81 to %struct.TYPE_7__*
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load i64, i64* %9, align 8
  %85 = ashr i64 %84, 4
  %86 = load %union.orb*, %union.orb** %11, align 8
  %87 = bitcast %union.orb* %86 to %struct.TYPE_7__*
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 5
  store i64 %85, i64* %88, align 8
  %89 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %90 = call i64 @__pa(%struct.ccw1* %89)
  %91 = load %union.orb*, %union.orb** %11, align 8
  %92 = bitcast %union.orb* %91 to %struct.TYPE_7__*
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  store i64 %90, i64* %93, align 8
  %94 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %95 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %union.orb*, %union.orb** %11, align 8
  %98 = call i32 @ssch(i32 %96, %union.orb* %97)
  store i32 %98, i32* %12, align 4
  %99 = call i32 @CIO_HEX_EVENT(i32 5, i32* %12, i32 4)
  %100 = load i32, i32* %12, align 4
  switch i32 %100, label %117 [
    i32 0, label %101
    i32 1, label %110
    i32 2, label %110
    i32 3, label %113
  ]

101:                                              ; preds = %73
  %102 = load i32, i32* @SCSW_ACTL_START_PEND, align 4
  %103 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %104 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %102
  store i32 %109, i32* %107, align 8
  store i32 0, i32* %5, align 4
  br label %119

110:                                              ; preds = %73, %73
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %119

113:                                              ; preds = %73
  %114 = load %struct.subchannel*, %struct.subchannel** %6, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @cio_start_handle_notoper(%struct.subchannel* %114, i64 %115)
  store i32 %116, i32* %5, align 4
  br label %119

117:                                              ; preds = %73
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %113, %110, %101
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.io_subchannel_private* @to_io_private(%struct.subchannel*) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @memset(%union.orb*, i32, i32) #1

declare dso_local i64 @__pa(%struct.ccw1*) #1

declare dso_local i32 @ssch(i32, %union.orb*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, i32*, i32) #1

declare dso_local i32 @cio_start_handle_notoper(%struct.subchannel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
