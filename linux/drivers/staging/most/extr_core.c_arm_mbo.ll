; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_arm_mbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_arm_mbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { i32, i32*, %struct.most_channel* }
%struct.most_channel = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 (i32, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbo*)* @arm_mbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_mbo(%struct.mbo* %0) #0 {
  %2 = alloca %struct.mbo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.most_channel*, align 8
  store %struct.mbo* %0, %struct.mbo** %2, align 8
  %5 = load %struct.mbo*, %struct.mbo** %2, align 8
  %6 = getelementptr inbounds %struct.mbo, %struct.mbo* %5, i32 0, i32 2
  %7 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  store %struct.most_channel* %7, %struct.most_channel** %4, align 8
  %8 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %9 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.mbo*, %struct.mbo** %2, align 8
  %14 = call i32 @trash_mbo(%struct.mbo* %13)
  br label %89

15:                                               ; preds = %1
  %16 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %17 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %16, i32 0, i32 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.mbo*, %struct.mbo** %2, align 8
  %21 = getelementptr inbounds %struct.mbo, %struct.mbo* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.mbo*, %struct.mbo** %2, align 8
  %26 = getelementptr inbounds %struct.mbo, %struct.mbo* %25, i32 0, i32 0
  %27 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %28 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %27, i32 0, i32 5
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %31 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %30, i32 0, i32 4
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %35 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %15
  %40 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %41 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = icmp ne i32 (i32, i32)* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %39
  %48 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %49 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %55 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %58 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %53(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %47, %39, %15
  %62 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %63 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %69 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = icmp ne i32 (i32, i32)* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %77 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  %82 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %83 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.most_channel*, %struct.most_channel** %4, align 8
  %86 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %81(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %12, %75, %67, %61
  ret void
}

declare dso_local i32 @trash_mbo(%struct.mbo*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
