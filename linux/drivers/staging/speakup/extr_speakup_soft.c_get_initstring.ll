; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_soft.c_get_initstring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_soft.c_get_initstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.var_t* }
%struct.var_t = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@get_initstring.buf = internal global [40 x i8] zeroinitializer, align 16
@synth_soft = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAXVARS = common dso_local global i64 0, align 8
@CAPS_START = common dso_local global i64 0, align 8
@CAPS_STOP = common dso_local global i64 0, align 8
@PAUSE = common dso_local global i64 0, align 8
@DIRECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_initstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_initstring() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.var_t*, align 8
  %3 = call i32 @memset(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @get_initstring.buf, i64 0, i64 0), i32 0, i32 40)
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @get_initstring.buf, i64 0, i64 0), i8** %1, align 8
  %4 = load %struct.var_t*, %struct.var_t** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @synth_soft, i32 0, i32 0), align 8
  store %struct.var_t* %4, %struct.var_t** %2, align 8
  br label %5

5:                                                ; preds = %51, %0
  %6 = load %struct.var_t*, %struct.var_t** %2, align 8
  %7 = getelementptr inbounds %struct.var_t, %struct.var_t* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAXVARS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %5
  %12 = load %struct.var_t*, %struct.var_t** %2, align 8
  %13 = getelementptr inbounds %struct.var_t, %struct.var_t* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CAPS_START, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load %struct.var_t*, %struct.var_t** %2, align 8
  %19 = getelementptr inbounds %struct.var_t, %struct.var_t* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CAPS_STOP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.var_t*, %struct.var_t** %2, align 8
  %25 = getelementptr inbounds %struct.var_t, %struct.var_t* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAUSE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.var_t*, %struct.var_t** %2, align 8
  %31 = getelementptr inbounds %struct.var_t, %struct.var_t* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DIRECT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load i8*, i8** %1, align 8
  %37 = load i8*, i8** %1, align 8
  %38 = load %struct.var_t*, %struct.var_t** %2, align 8
  %39 = getelementptr inbounds %struct.var_t, %struct.var_t* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.var_t*, %struct.var_t** %2, align 8
  %44 = getelementptr inbounds %struct.var_t, %struct.var_t* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* %42, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %36, i64 %49
  store i8* %50, i8** %1, align 8
  br label %51

51:                                               ; preds = %35, %29, %23, %17, %11
  %52 = load %struct.var_t*, %struct.var_t** %2, align 8
  %53 = getelementptr inbounds %struct.var_t, %struct.var_t* %52, i32 1
  store %struct.var_t* %53, %struct.var_t** %2, align 8
  br label %5

54:                                               ; preds = %5
  %55 = load i8*, i8** %1, align 8
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8* %59, i8** %1, align 8
  ret i8* getelementptr inbounds ([40 x i8], [40 x i8]* @get_initstring.buf, i64 0, i64 0)
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
