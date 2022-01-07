; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_link_channel_to_component.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_link_channel_to_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_channel = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.core_component* }
%struct.TYPE_4__ = type { %struct.core_component* }
%struct.core_component = type { i32 (i32, i32, i32*, i8*, i8*)* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_channel*, %struct.core_component*, i8*, i8*)* @link_channel_to_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_channel_to_component(%struct.most_channel* %0, %struct.core_component* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.most_channel*, align 8
  %7 = alloca %struct.core_component*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.core_component**, align 8
  store %struct.most_channel* %0, %struct.most_channel** %6, align 8
  store %struct.core_component* %1, %struct.core_component** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %13 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.core_component*, %struct.core_component** %14, align 8
  %16 = icmp ne %struct.core_component* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %19 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.core_component** %20, %struct.core_component*** %11, align 8
  br label %35

21:                                               ; preds = %4
  %22 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %23 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.core_component*, %struct.core_component** %24, align 8
  %26 = icmp ne %struct.core_component* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %29 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.core_component** %30, %struct.core_component*** %11, align 8
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %58

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.core_component*, %struct.core_component** %7, align 8
  %37 = load %struct.core_component**, %struct.core_component*** %11, align 8
  store %struct.core_component* %36, %struct.core_component** %37, align 8
  %38 = load %struct.core_component*, %struct.core_component** %7, align 8
  %39 = getelementptr inbounds %struct.core_component, %struct.core_component* %38, i32 0, i32 0
  %40 = load i32 (i32, i32, i32*, i8*, i8*)*, i32 (i32, i32, i32*, i8*, i8*)** %39, align 8
  %41 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %42 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %45 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.most_channel*, %struct.most_channel** %6, align 8
  %48 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %47, i32 0, i32 0
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 %40(i32 %43, i32 %46, i32* %48, i8* %49, i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load %struct.core_component**, %struct.core_component*** %11, align 8
  store %struct.core_component* null, %struct.core_component** %55, align 8
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %54, %31
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
