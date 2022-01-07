; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_channel = type { i32 }
%struct.core_component = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @most_add_link(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.most_channel*, align 8
  %13 = alloca %struct.core_component*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call %struct.most_channel* @get_channel(i8* %14, i8* %15)
  store %struct.most_channel* %16, %struct.most_channel** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call %struct.core_component* @match_component(i8* %17)
  store %struct.core_component* %18, %struct.core_component** %13, align 8
  %19 = load %struct.most_channel*, %struct.most_channel** %12, align 8
  %20 = icmp ne %struct.most_channel* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.core_component*, %struct.core_component** %13, align 8
  %23 = icmp ne %struct.core_component* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %33

27:                                               ; preds = %21
  %28 = load %struct.most_channel*, %struct.most_channel** %12, align 8
  %29 = load %struct.core_component*, %struct.core_component** %13, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @link_channel_to_component(%struct.most_channel* %28, %struct.core_component* %29, i8* %30, i8* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.most_channel* @get_channel(i8*, i8*) #1

declare dso_local %struct.core_component* @match_component(i8*) #1

declare dso_local i32 @link_channel_to_component(%struct.most_channel*, %struct.core_component*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
