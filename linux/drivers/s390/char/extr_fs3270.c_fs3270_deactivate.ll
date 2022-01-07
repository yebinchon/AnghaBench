; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_fs3270.c_fs3270_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_fs3270.c_fs3270_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { i32 }
%struct.fs3270 = type { %struct.TYPE_8__*, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32*)*, i64, i64 }
%struct.TYPE_9__ = type { i32*, i32 }

@TC_RDBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270_view*)* @fs3270_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs3270_deactivate(%struct.raw3270_view* %0) #0 {
  %2 = alloca %struct.raw3270_view*, align 8
  %3 = alloca %struct.fs3270*, align 8
  store %struct.raw3270_view* %0, %struct.raw3270_view** %2, align 8
  %4 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %5 = bitcast %struct.raw3270_view* %4 to %struct.fs3270*
  store %struct.fs3270* %5, %struct.fs3270** %3, align 8
  %6 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %7 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %9 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = call i32 @raw3270_request_final(%struct.TYPE_8__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %16 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load i32, i32* @TC_RDBUF, align 4
  %19 = call i32 @raw3270_request_set_cmd(%struct.TYPE_8__* %17, i32 %18)
  %20 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %21 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 5
  store i32 %27, i32* %25, align 4
  %28 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %29 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 5
  store i32 %33, i32* %31, align 8
  %34 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %35 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %38 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = call i32 @raw3270_request_set_idal(%struct.TYPE_8__* %36, %struct.TYPE_9__* %39)
  %41 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %42 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %46 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 (%struct.TYPE_8__*, i32*)* @fs3270_save_callback, i32 (%struct.TYPE_8__*, i32*)** %48, align 8
  %49 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %50 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %51 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = call i64 @raw3270_start_locked(%struct.raw3270_view* %49, %struct.TYPE_8__* %52)
  %54 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %55 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i64 %53, i64* %57, align 8
  %58 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %59 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %14
  %65 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %66 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %68, align 8
  %70 = load %struct.fs3270*, %struct.fs3270** %3, align 8
  %71 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call i32 %69(%struct.TYPE_8__* %72, i32* null)
  br label %74

74:                                               ; preds = %13, %64, %14
  ret void
}

declare dso_local i32 @raw3270_request_final(%struct.TYPE_8__*) #1

declare dso_local i32 @raw3270_request_set_cmd(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @raw3270_request_set_idal(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @fs3270_save_callback(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @raw3270_start_locked(%struct.raw3270_view*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
