; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_free_mbo_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_free_mbo_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { %struct.mbo*, %struct.most_channel* }
%struct.most_channel = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.mbo*, i64)* }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbo*)* @most_free_mbo_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @most_free_mbo_coherent(%struct.mbo* %0) #0 {
  %2 = alloca %struct.mbo*, align 8
  %3 = alloca %struct.most_channel*, align 8
  %4 = alloca i64, align 8
  store %struct.mbo* %0, %struct.mbo** %2, align 8
  %5 = load %struct.mbo*, %struct.mbo** %2, align 8
  %6 = getelementptr inbounds %struct.mbo, %struct.mbo* %5, i32 0, i32 1
  %7 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  store %struct.most_channel* %7, %struct.most_channel** %3, align 8
  %8 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %9 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %13 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %11, %15
  store i64 %16, i64* %4, align 8
  %17 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %18 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.mbo*, i64)*, i32 (%struct.mbo*, i64)** %20, align 8
  %22 = icmp ne i32 (%struct.mbo*, i64)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %25 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.mbo*, i64)*, i32 (%struct.mbo*, i64)** %27, align 8
  %29 = load %struct.mbo*, %struct.mbo** %2, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 %28(%struct.mbo* %29, i64 %30)
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.mbo*, %struct.mbo** %2, align 8
  %34 = getelementptr inbounds %struct.mbo, %struct.mbo* %33, i32 0, i32 0
  %35 = load %struct.mbo*, %struct.mbo** %34, align 8
  %36 = call i32 @kfree(%struct.mbo* %35)
  br label %37

37:                                               ; preds = %32, %23
  %38 = load %struct.mbo*, %struct.mbo** %2, align 8
  %39 = call i32 @kfree(%struct.mbo* %38)
  %40 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %41 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %40, i32 0, i32 1
  %42 = call i64 @atomic_sub_and_test(i32 1, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.most_channel*, %struct.most_channel** %3, align 8
  %46 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %45, i32 0, i32 0
  %47 = call i32 @complete(i32* %46)
  br label %48

48:                                               ; preds = %44, %37
  ret void
}

declare dso_local i32 @kfree(%struct.mbo*) #1

declare dso_local i64 @atomic_sub_and_test(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
