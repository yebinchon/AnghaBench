; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sdias.c_sclp_sdias_blk_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sdias.c_sclp_sdias_blk_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdias_sccb = type { %struct.TYPE_7__, i32, i32, i32, %struct.sdias_sccb*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sclp_req = type { %struct.TYPE_7__, i32, i32, i32, %struct.sclp_req*, %struct.TYPE_6__ }

@sclp_sdias_sccb = common dso_local global %struct.sdias_sccb* null, align 8
@sdias_mutex = common dso_local global i32 0, align 4
@EVTYP_SDIAS = common dso_local global i32 0, align 4
@SDIAS_EQ_SIZE = common dso_local global i32 0, align 4
@SDIAS_DI_FCP_DUMP = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i32 0, align 4
@sdias_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sclp_send failed for get_nr_blocks\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"send failed: %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@sdias_evbuf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"SCLP error: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%i blocks\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_sdias_blk_count() #0 {
  %1 = alloca %struct.sdias_sccb*, align 8
  %2 = alloca %struct.sclp_req, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.sdias_sccb*, %struct.sdias_sccb** @sclp_sdias_sccb, align 8
  store %struct.sdias_sccb* %4, %struct.sdias_sccb** %1, align 8
  %5 = call i32 @mutex_lock(i32* @sdias_mutex)
  %6 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %7 = call i32 @memset(%struct.sdias_sccb* %6, i32 0, i32 56)
  %8 = bitcast %struct.sclp_req* %2 to %struct.sdias_sccb*
  %9 = call i32 @memset(%struct.sdias_sccb* %8, i32 0, i32 56)
  %10 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %11 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 56, i32* %12, align 8
  %13 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %14 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = load i32, i32* @EVTYP_SDIAS, align 4
  %18 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %19 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @SDIAS_EQ_SIZE, align 4
  %23 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %24 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @SDIAS_DI_FCP_DUMP, align 4
  %27 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %28 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %31 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 4712, i32* %32, align 8
  %33 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %34 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %37 = bitcast %struct.sdias_sccb* %36 to %struct.sclp_req*
  %38 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %2, i32 0, i32 4
  store %struct.sclp_req* %37, %struct.sclp_req** %38, align 8
  %39 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %40 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %2, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @SCLP_REQ_FILLED, align 4
  %42 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %2, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @sdias_callback, align 4
  %44 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %2, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = bitcast %struct.sclp_req* %2 to %struct.sdias_sccb*
  %46 = call i32 @sdias_sclp_send(%struct.sdias_sccb* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %0
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %77

51:                                               ; preds = %0
  %52 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %53 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 32
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.sdias_sccb*, %struct.sdias_sccb** %1, align 8
  %59 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %77

65:                                               ; preds = %51
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdias_evbuf, i32 0, i32 0), align 4
  switch i32 %66, label %69 [
    i32 0, label %67
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdias_evbuf, i32 0, i32 1), align 4
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %65
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdias_evbuf, i32 0, i32 0), align 4
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %74, %69, %57, %49
  %78 = call i32 @mutex_unlock(i32* @sdias_mutex)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.sdias_sccb*, i32, i32) #1

declare dso_local i32 @sdias_sclp_send(%struct.sdias_sccb*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
