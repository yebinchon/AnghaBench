; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sdias.c_sclp_sdias_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sdias.c_sclp_sdias_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdias_sccb = type { %struct.TYPE_7__, i32, i32, i32, %struct.sdias_sccb*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sclp_req = type { %struct.TYPE_7__, i32, i32, i32, %struct.sclp_req*, %struct.TYPE_6__ }

@sclp_sdias_sccb = common dso_local global %struct.sdias_sccb* null, align 8
@sdias_mutex = common dso_local global i32 0, align 4
@EVTYP_SDIAS = common dso_local global i32 0, align 4
@SDIAS_EQ_STORE_DATA = common dso_local global i32 0, align 4
@SDIAS_DI_FCP_DUMP = common dso_local global i32 0, align 4
@SDIAS_ASA_SIZE_64 = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i32 0, align 4
@sdias_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sclp_send failed: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"copy failed: %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@sdias_evbuf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"all stored\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"part stored: %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"no data\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Error from SCLP while copying hsa. Event status = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_sdias_copy(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdias_sccb*, align 8
  %8 = alloca %struct.sclp_req, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sdias_sccb*, %struct.sdias_sccb** @sclp_sdias_sccb, align 8
  store %struct.sdias_sccb* %10, %struct.sdias_sccb** %7, align 8
  %11 = call i32 @mutex_lock(i32* @sdias_mutex)
  %12 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %13 = call i32 @memset(%struct.sdias_sccb* %12, i32 0, i32 112)
  %14 = bitcast %struct.sclp_req* %8 to %struct.sdias_sccb*
  %15 = call i32 @memset(%struct.sdias_sccb* %14, i32 0, i32 112)
  %16 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %17 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 112, i32* %18, align 8
  %19 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %20 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 4, i32* %22, align 8
  %23 = load i32, i32* @EVTYP_SDIAS, align 4
  %24 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %25 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 10
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 8
  %28 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %29 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 10
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @SDIAS_EQ_STORE_DATA, align 4
  %33 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %34 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 9
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @SDIAS_DI_FCP_DUMP, align 4
  %37 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %38 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 8
  store i32 %36, i32* %39, align 4
  %40 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %41 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 4712, i32* %42, align 8
  %43 = load i32, i32* @SDIAS_ASA_SIZE_64, align 4
  %44 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %45 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 7
  store i32 %43, i32* %46, align 8
  %47 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %48 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %52 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %57 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %61 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  %63 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %64 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %67 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  store i32 1, i32* %68, align 4
  %69 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %70 = bitcast %struct.sdias_sccb* %69 to %struct.sclp_req*
  %71 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %8, i32 0, i32 4
  store %struct.sclp_req* %70, %struct.sclp_req** %71, align 8
  %72 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %73 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %8, i32 0, i32 3
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* @SCLP_REQ_FILLED, align 4
  %75 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %8, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @sdias_callback, align 4
  %77 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %8, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = bitcast %struct.sclp_req* %8 to %struct.sdias_sccb*
  %79 = call i32 @sdias_sclp_send(%struct.sdias_sccb* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %3
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %114

85:                                               ; preds = %3
  %86 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %87 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 32
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.sdias_sccb*, %struct.sdias_sccb** %7, align 8
  %93 = getelementptr inbounds %struct.sdias_sccb, %struct.sdias_sccb* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  br label %114

99:                                               ; preds = %85
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdias_evbuf, i32 0, i32 0), align 4
  switch i32 %100, label %108 [
    i32 130, label %101
    i32 128, label %103
    i32 129, label %106
  ]

101:                                              ; preds = %99
  %102 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %113

103:                                              ; preds = %99
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdias_evbuf, i32 0, i32 1), align 4
  %105 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %113

106:                                              ; preds = %99
  %107 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %99, %106
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdias_evbuf, i32 0, i32 0), align 4
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %108, %103, %101
  br label %114

114:                                              ; preds = %113, %91, %82
  %115 = call i32 @mutex_unlock(i32* @sdias_mutex)
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.sdias_sccb*, i32, i32) #1

declare dso_local i32 @sdias_sclp_send(%struct.sdias_sccb*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
