; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_read_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_read_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { i64, %struct.most_channel* }
%struct.most_channel = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64 (%struct.mbo*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 (%struct.mbo*)* }

@MBO_E_CLOSE = common dso_local global i64 0, align 8
@MBO_E_INVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbo*)* @most_read_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @most_read_completion(%struct.mbo* %0) #0 {
  %2 = alloca %struct.mbo*, align 8
  %3 = alloca %struct.most_channel*, align 8
  store %struct.mbo* %0, %struct.mbo** %2, align 8
  %4 = load %struct.mbo*, %struct.mbo** %2, align 8
  %5 = getelementptr inbounds %struct.mbo, %struct.mbo* %4, i32 0, i32 1
  %6 = load %struct.most_channel*, %struct.most_channel** %5, align 8
  store %struct.most_channel* %6, %struct.most_channel** %3, align 8
  %7 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %8 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.mbo*, %struct.mbo** %2, align 8
  %13 = getelementptr inbounds %struct.mbo, %struct.mbo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MBO_E_CLOSE, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.mbo*, %struct.mbo** %2, align 8
  %24 = call i32 @trash_mbo(%struct.mbo* %23)
  br label %98

25:                                               ; preds = %17
  %26 = load %struct.mbo*, %struct.mbo** %2, align 8
  %27 = getelementptr inbounds %struct.mbo, %struct.mbo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MBO_E_INVAL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.mbo*, %struct.mbo** %2, align 8
  %33 = call i32 @nq_hdm_mbo(%struct.mbo* %32)
  %34 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %35 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %34, i32 0, i32 3
  %36 = call i32 @atomic_inc(i32* %35)
  br label %98

37:                                               ; preds = %25
  %38 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %39 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %38, i32 0, i32 3
  %40 = call i64 @atomic_sub_and_test(i32 1, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %44 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %47 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %53 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64 (%struct.mbo*)*, i64 (%struct.mbo*)** %56, align 8
  %58 = icmp ne i64 (%struct.mbo*)* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %61 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64 (%struct.mbo*)*, i64 (%struct.mbo*)** %64, align 8
  %66 = load %struct.mbo*, %struct.mbo** %2, align 8
  %67 = call i64 %65(%struct.mbo* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %98

70:                                               ; preds = %59, %51, %45
  %71 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %72 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %78 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64 (%struct.mbo*)*, i64 (%struct.mbo*)** %81, align 8
  %83 = icmp ne i64 (%struct.mbo*)* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  %85 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %86 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64 (%struct.mbo*)*, i64 (%struct.mbo*)** %89, align 8
  %91 = load %struct.mbo*, %struct.mbo** %2, align 8
  %92 = call i64 %90(%struct.mbo* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %98

95:                                               ; preds = %84, %76, %70
  %96 = load %struct.mbo*, %struct.mbo** %2, align 8
  %97 = call i32 @most_put_mbo(%struct.mbo* %96)
  br label %98

98:                                               ; preds = %95, %94, %69, %31, %22
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trash_mbo(%struct.mbo*) #1

declare dso_local i32 @nq_hdm_mbo(%struct.mbo*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_sub_and_test(i32, i32*) #1

declare dso_local i32 @most_put_mbo(%struct.mbo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
