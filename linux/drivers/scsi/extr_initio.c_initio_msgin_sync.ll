; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_msgin_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_msgin_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@initio_rate_tbl = common dso_local global i8* null, align 8
@TCF_SCSI_RATE = common dso_local global i64 0, align 8
@MAX_OFFSET = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_msgin_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_msgin_sync(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca i8, align 1
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %5 = load i8*, i8** @initio_rate_tbl, align 8
  %6 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %7 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TCF_SCSI_RATE, align 8
  %12 = and i64 %10, %11
  %13 = getelementptr inbounds i8, i8* %5, i64 %12
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %4, align 1
  %15 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %16 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 3
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @MAX_OFFSET, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %1
  %25 = load i8, i8* @MAX_OFFSET, align 1
  %26 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %27 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  store i8 %25, i8* %29, align 1
  %30 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %31 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* %4, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load i8, i8* %4, align 1
  %41 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %42 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8 %40, i8* %44, align 1
  store i32 1, i32* %2, align 4
  br label %98

45:                                               ; preds = %24
  %46 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %47 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sge i32 %51, 59
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %55 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %53, %45
  store i32 1, i32* %2, align 4
  br label %98

59:                                               ; preds = %1
  %60 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %61 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %98

68:                                               ; preds = %59
  %69 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %70 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* %4, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load i8, i8* %4, align 1
  %80 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %81 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8 %79, i8* %83, align 1
  store i32 1, i32* %2, align 4
  br label %98

84:                                               ; preds = %68
  %85 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %86 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sge i32 %90, 59
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %94 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  store i8 0, i8* %96, align 1
  store i32 1, i32* %2, align 4
  br label %98

97:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %92, %78, %67, %58, %39
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
