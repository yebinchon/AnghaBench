; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_remove_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_remove_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_channel = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { %struct.core_component* }
%struct.core_component = type { i64 (i32, i32)* }
%struct.TYPE_4__ = type { %struct.core_component* }

@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @most_remove_link(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.most_channel*, align 8
  %9 = alloca %struct.core_component*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.core_component* @match_component(i8* %10)
  store %struct.core_component* %11, %struct.core_component** %9, align 8
  %12 = load %struct.core_component*, %struct.core_component** %9, align 8
  %13 = icmp ne %struct.core_component* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.most_channel* @get_channel(i8* %18, i8* %19)
  store %struct.most_channel* %20, %struct.most_channel** %8, align 8
  %21 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %22 = icmp ne %struct.most_channel* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %17
  %27 = load %struct.core_component*, %struct.core_component** %9, align 8
  %28 = getelementptr inbounds %struct.core_component, %struct.core_component* %27, i32 0, i32 0
  %29 = load i64 (i32, i32)*, i64 (i32, i32)** %28, align 8
  %30 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %31 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %34 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 %29(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %64

41:                                               ; preds = %26
  %42 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %43 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.core_component*, %struct.core_component** %44, align 8
  %46 = load %struct.core_component*, %struct.core_component** %9, align 8
  %47 = icmp eq %struct.core_component* %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %50 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store %struct.core_component* null, %struct.core_component** %51, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %54 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.core_component*, %struct.core_component** %55, align 8
  %57 = load %struct.core_component*, %struct.core_component** %9, align 8
  %58 = icmp eq %struct.core_component* %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %61 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store %struct.core_component* null, %struct.core_component** %62, align 8
  br label %63

63:                                               ; preds = %59, %52
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %38, %23, %14
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.core_component* @match_component(i8*) #1

declare dso_local %struct.most_channel* @get_channel(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
