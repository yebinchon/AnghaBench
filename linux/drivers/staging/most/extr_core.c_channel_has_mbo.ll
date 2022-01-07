; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_channel_has_mbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_channel_has_mbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.most_channel** }
%struct.most_channel = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, %struct.core_component*, i64 }
%struct.TYPE_5__ = type { i64, %struct.core_component*, i64 }
%struct.core_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @channel_has_mbo(%struct.most_interface* %0, i32 %1, %struct.core_component* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.most_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.core_component*, align 8
  %8 = alloca %struct.most_channel*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.most_interface* %0, %struct.most_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.core_component* %2, %struct.core_component** %7, align 8
  %11 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %12 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.most_channel**, %struct.most_channel*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.most_channel*, %struct.most_channel** %15, i64 %17
  %19 = load %struct.most_channel*, %struct.most_channel** %18, align 8
  store %struct.most_channel* %19, %struct.most_channel** %8, align 8
  %20 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %21 = icmp ne %struct.most_channel* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %3
  %30 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %31 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %37 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load %struct.core_component*, %struct.core_component** %7, align 8
  %43 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %44 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.core_component*, %struct.core_component** %45, align 8
  %47 = icmp eq %struct.core_component* %42, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %50 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.core_component*, %struct.core_component** %7, align 8
  %56 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %57 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.core_component*, %struct.core_component** %58, align 8
  %60 = icmp eq %struct.core_component* %55, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %63 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %48
  store i32 0, i32* %4, align 4
  br label %84

68:                                               ; preds = %61, %54, %35, %29
  %69 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %70 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %69, i32 0, i32 0
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %74 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %73, i32 0, i32 1
  %75 = call i32 @list_empty(i32* %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %77 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %76, i32 0, i32 0
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %68, %67, %26
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
