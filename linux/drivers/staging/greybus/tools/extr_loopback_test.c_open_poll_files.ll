; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_open_poll_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_open_poll_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_test = type { i32, i32, %struct.TYPE_2__*, %struct.loopback_device* }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.loopback_device = type { i8* }

@MAX_STR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"iteration_count\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Error opening poll file!\0A\00", align 1
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback_test*)* @open_poll_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_poll_files(%struct.loopback_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loopback_test*, align 8
  %4 = alloca %struct.loopback_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.loopback_test* %0, %struct.loopback_test** %3, align 8
  %11 = load i32, i32* @MAX_STR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %89, %1
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %18 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %15
  %22 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %23 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %22, i32 0, i32 3
  %24 = load %struct.loopback_device*, %struct.loopback_device** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %24, i64 %26
  store %struct.loopback_device* %27, %struct.loopback_device** %4, align 8
  %28 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @device_enabled(%struct.loopback_test* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %89

33:                                               ; preds = %21
  %34 = trunc i64 %12 to i32
  %35 = load %struct.loopback_device*, %struct.loopback_device** %4, align 8
  %36 = getelementptr inbounds %struct.loopback_device, %struct.loopback_device* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @snprintf(i8* %14, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = call i64 @open(i8* %14, i32 %39)
  %41 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %42 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %40, i64* %47, align 8
  %48 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %49 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %33
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %96

60:                                               ; preds = %33
  %61 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %62 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @read(i64 %68, i8* %7, i32 1)
  %70 = load i32, i32* @EPOLLERR, align 4
  %71 = load i32, i32* @EPOLLPRI, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %74 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %72, i32* %79, align 8
  %80 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %81 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %60, %32
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %15

92:                                               ; preds = %15
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %95 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %115

96:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %103 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @close(i64 %109)
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %97

114:                                              ; preds = %97
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %115

115:                                              ; preds = %114, %92
  %116 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @device_enabled(%struct.loopback_test*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @open(i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @read(i64, i8*, i32) #2

declare dso_local i32 @close(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
