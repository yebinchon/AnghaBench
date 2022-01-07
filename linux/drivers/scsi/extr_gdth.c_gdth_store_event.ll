; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_store_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_store_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64, %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_7__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"gdth_store_event() source %d idx %d\0A\00", align 1
@ebuffer = common dso_local global %struct.TYPE_6__* null, align 8
@elastidx = common dso_local global i64 0, align 8
@MAX_EVENTS = common dso_local global i64 0, align 8
@eoldidx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i64, i64, %struct.TYPE_7__*)* @gdth_store_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @gdth_store_event(i32* %0, i64 %1, i64 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @TRACE2(i8* %13)
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %153

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebuffer, align 8
  %20 = load i64, i64* @elastidx, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %99

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebuffer, align 8
  %28 = load i64, i64* @elastidx, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebuffer, align 8
  %41 = load i64, i64* @elastidx, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %39
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebuffer, align 8
  %49 = load i64, i64* @elastidx, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = bitcast i32* %52 to i8*
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = bitcast i32* %55 to i8*
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @memcmp(i8* %53, i8* %56, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %47, %39, %34
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebuffer, align 8
  %69 = load i64, i64* @elastidx, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %67
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebuffer, align 8
  %77 = load i64, i64* @elastidx, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = bitcast i32* %80 to i8*
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = bitcast i32* %83 to i8*
  %85 = call i32 @strcmp(i8* %81, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %75, %47
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebuffer, align 8
  %89 = load i64, i64* @elastidx, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %89
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %10, align 8
  %91 = call i64 (...) @ktime_get_real_seconds()
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %151

99:                                               ; preds = %75, %67, %62, %26, %18
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebuffer, align 8
  %101 = load i64, i64* @elastidx, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %99
  %107 = load i64, i64* @elastidx, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* @elastidx, align 8
  %109 = load i64, i64* @elastidx, align 8
  %110 = load i64, i64* @MAX_EVENTS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i64 0, i64* @elastidx, align 8
  br label %113

113:                                              ; preds = %112, %106
  %114 = load i64, i64* @elastidx, align 8
  %115 = load i64, i64* @eoldidx, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i64, i64* @eoldidx, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* @eoldidx, align 8
  %120 = load i64, i64* @eoldidx, align 8
  %121 = load i64, i64* @MAX_EVENTS, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i64 0, i64* @eoldidx, align 8
  br label %124

124:                                              ; preds = %123, %117
  br label %125

125:                                              ; preds = %124, %113
  br label %126

126:                                              ; preds = %125, %99
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebuffer, align 8
  %128 = load i64, i64* @elastidx, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  store %struct.TYPE_6__* %129, %struct.TYPE_6__** %10, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = call i64 (...) @ktime_get_real_seconds()
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  store i8* %137, i8** %141, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  store i32 1, i32* %143, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %147 = bitcast %struct.TYPE_7__* %145 to i8*
  %148 = bitcast %struct.TYPE_7__* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %126, %87
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %152, %struct.TYPE_6__** %5, align 8
  br label %153

153:                                              ; preds = %151, %17
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %154
}

declare dso_local i32 @TRACE2(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
