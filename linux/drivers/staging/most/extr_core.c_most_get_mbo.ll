; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_get_mbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_get_mbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { i32*, i32 }
%struct.most_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.most_channel** }
%struct.most_channel = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.core_component*, i64 }
%struct.TYPE_6__ = type { i64, %struct.core_component*, i64 }
%struct.core_component = type { i32 }

@dummy_num_buffers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbo* @most_get_mbo(%struct.most_interface* %0, i32 %1, %struct.core_component* %2) #0 {
  %4 = alloca %struct.mbo*, align 8
  %5 = alloca %struct.most_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.core_component*, align 8
  %8 = alloca %struct.mbo*, align 8
  %9 = alloca %struct.most_channel*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.core_component* %2, %struct.core_component** %7, align 8
  %12 = load %struct.most_interface*, %struct.most_interface** %5, align 8
  %13 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.most_channel**, %struct.most_channel*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.most_channel*, %struct.most_channel** %16, i64 %18
  %20 = load %struct.most_channel*, %struct.most_channel** %19, align 8
  store %struct.most_channel* %20, %struct.most_channel** %9, align 8
  %21 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %22 = icmp ne %struct.most_channel* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store %struct.mbo* null, %struct.mbo** %4, align 8
  br label %128

28:                                               ; preds = %3
  %29 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %30 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %36 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load %struct.core_component*, %struct.core_component** %7, align 8
  %42 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %43 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.core_component*, %struct.core_component** %44, align 8
  %46 = icmp eq %struct.core_component* %41, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %49 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.core_component*, %struct.core_component** %7, align 8
  %55 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %56 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.core_component*, %struct.core_component** %57, align 8
  %59 = icmp eq %struct.core_component* %54, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %62 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %47
  store %struct.mbo* null, %struct.mbo** %4, align 8
  br label %128

67:                                               ; preds = %60, %53, %34, %28
  %68 = load %struct.core_component*, %struct.core_component** %7, align 8
  %69 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %70 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.core_component*, %struct.core_component** %71, align 8
  %73 = icmp eq %struct.core_component* %68, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %76 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = bitcast i64* %77 to i32*
  store i32* %78, i32** %11, align 8
  br label %93

79:                                               ; preds = %67
  %80 = load %struct.core_component*, %struct.core_component** %7, align 8
  %81 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %82 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.core_component*, %struct.core_component** %83, align 8
  %85 = icmp eq %struct.core_component* %80, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %88 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = bitcast i64* %89 to i32*
  store i32* %90, i32** %11, align 8
  br label %92

91:                                               ; preds = %79
  store i32* @dummy_num_buffers, i32** %11, align 8
  br label %92

92:                                               ; preds = %91, %86
  br label %93

93:                                               ; preds = %92, %74
  %94 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %95 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %94, i32 0, i32 1
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %99 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %98, i32 0, i32 2
  %100 = call i64 @list_empty(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %104 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %103, i32 0, i32 1
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  store %struct.mbo* null, %struct.mbo** %4, align 8
  br label %128

107:                                              ; preds = %93
  %108 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %109 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %108, i32 0, i32 2
  %110 = call %struct.mbo* @list_pop_mbo(i32* %109)
  store %struct.mbo* %110, %struct.mbo** %8, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %115 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %114, i32 0, i32 1
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.mbo*, %struct.mbo** %8, align 8
  %120 = getelementptr inbounds %struct.mbo, %struct.mbo* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  %121 = load %struct.most_channel*, %struct.most_channel** %9, align 8
  %122 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.mbo*, %struct.mbo** %8, align 8
  %126 = getelementptr inbounds %struct.mbo, %struct.mbo* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.mbo*, %struct.mbo** %8, align 8
  store %struct.mbo* %127, %struct.mbo** %4, align 8
  br label %128

128:                                              ; preds = %107, %102, %66, %27
  %129 = load %struct.mbo*, %struct.mbo** %4, align 8
  ret %struct.mbo* %129
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mbo* @list_pop_mbo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
