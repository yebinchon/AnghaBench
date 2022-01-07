; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_writedata_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_writedata_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_req = type { i64 }
%struct.sclp_buffer = type { i32 (%struct.sclp_buffer*, i32)*, %struct.TYPE_2__, i32, %struct.sccb_header* }
%struct.TYPE_2__ = type { i8* }
%struct.sccb_header = type { i32 }

@SCLP_REQ_FAILED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SCLP_BUFFER_MAX_RETRY = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sclp_req*, i8*)* @sclp_writedata_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_writedata_callback(%struct.sclp_req* %0, i8* %1) #0 {
  %3 = alloca %struct.sclp_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sclp_buffer*, align 8
  %7 = alloca %struct.sccb_header*, align 8
  store %struct.sclp_req* %0, %struct.sclp_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sclp_buffer*
  store %struct.sclp_buffer* %9, %struct.sclp_buffer** %6, align 8
  %10 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %11 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %10, i32 0, i32 3
  %12 = load %struct.sccb_header*, %struct.sccb_header** %11, align 8
  store %struct.sccb_header* %12, %struct.sccb_header** %7, align 8
  %13 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %14 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SCLP_REQ_FAILED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %19, i32 0, i32 0
  %21 = load i32 (%struct.sclp_buffer*, i32)*, i32 (%struct.sclp_buffer*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.sclp_buffer*, i32)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %24, i32 0, i32 0
  %26 = load i32 (%struct.sclp_buffer*, i32)*, i32 (%struct.sclp_buffer*, i32)** %25, align 8
  %27 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 %26(%struct.sclp_buffer* %27, i32 %29)
  br label %31

31:                                               ; preds = %23, %18
  br label %113

32:                                               ; preds = %2
  %33 = load %struct.sccb_header*, %struct.sccb_header** %7, align 8
  %34 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %89 [
    i32 32, label %36
    i32 832, label %37
    i32 64, label %66
    i32 1520, label %66
  ]

36:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %101

37:                                               ; preds = %32
  %38 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @SCLP_BUFFER_MAX_RETRY, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %101

47:                                               ; preds = %37
  %48 = load %struct.sccb_header*, %struct.sccb_header** %7, align 8
  %49 = call i32 @sclp_remove_processed(%struct.sccb_header* %48)
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.sccb_header*, %struct.sccb_header** %7, align 8
  %53 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load i8*, i8** @SCLP_REQ_FILLED, align 8
  %55 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %59 = call i32 @sclp_add_request(%struct.sclp_req* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %113

63:                                               ; preds = %51
  br label %65

64:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %63
  br label %101

66:                                               ; preds = %32, %32
  %67 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @SCLP_BUFFER_MAX_RETRY, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %101

76:                                               ; preds = %66
  %77 = load %struct.sccb_header*, %struct.sccb_header** %7, align 8
  %78 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load i8*, i8** @SCLP_REQ_FILLED, align 8
  %80 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %81 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %84 = call i32 @sclp_add_request(%struct.sclp_req* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %113

88:                                               ; preds = %76
  br label %101

89:                                               ; preds = %32
  %90 = load %struct.sccb_header*, %struct.sccb_header** %7, align 8
  %91 = getelementptr inbounds %struct.sccb_header, %struct.sccb_header* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 29168
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %88, %73, %65, %44, %36
  %102 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %103 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %102, i32 0, i32 0
  %104 = load i32 (%struct.sclp_buffer*, i32)*, i32 (%struct.sclp_buffer*, i32)** %103, align 8
  %105 = icmp ne i32 (%struct.sclp_buffer*, i32)* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %108 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %107, i32 0, i32 0
  %109 = load i32 (%struct.sclp_buffer*, i32)*, i32 (%struct.sclp_buffer*, i32)** %108, align 8
  %110 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 %109(%struct.sclp_buffer* %110, i32 %111)
  br label %113

113:                                              ; preds = %31, %62, %87, %106, %101
  ret void
}

declare dso_local i32 @sclp_remove_processed(%struct.sccb_header*) #1

declare dso_local i32 @sclp_add_request(%struct.sclp_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
