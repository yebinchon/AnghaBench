; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.altmode = type { %struct.TYPE_6__, i32, %struct.altmode* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i64, i8*)* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @typec_altmode_notify(%struct.typec_altmode* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.typec_altmode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.altmode*, align 8
  %10 = alloca %struct.altmode*, align 8
  %11 = alloca i32, align 4
  store %struct.typec_altmode* %0, %struct.typec_altmode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %13 = icmp ne %struct.typec_altmode* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

15:                                               ; preds = %3
  %16 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %17 = call %struct.altmode* @to_altmode(%struct.typec_altmode* %16)
  store %struct.altmode* %17, %struct.altmode** %9, align 8
  %18 = load %struct.altmode*, %struct.altmode** %9, align 8
  %19 = getelementptr inbounds %struct.altmode, %struct.altmode* %18, i32 0, i32 2
  %20 = load %struct.altmode*, %struct.altmode** %19, align 8
  %21 = icmp ne %struct.altmode* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %89

25:                                               ; preds = %15
  %26 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %27 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @is_typec_port(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.altmode*, %struct.altmode** %9, align 8
  %32 = getelementptr inbounds %struct.altmode, %struct.altmode* %31, i32 0, i32 2
  %33 = load %struct.altmode*, %struct.altmode** %32, align 8
  store %struct.altmode* %33, %struct.altmode** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load %struct.altmode*, %struct.altmode** %9, align 8
  br label %40

38:                                               ; preds = %25
  %39 = load %struct.altmode*, %struct.altmode** %10, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi %struct.altmode* [ %37, %36 ], [ %39, %38 ]
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @typec_altmode_set_mux(%struct.altmode* %41, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %89

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.altmode*, %struct.altmode** %9, align 8
  %54 = getelementptr inbounds %struct.altmode, %struct.altmode* %53, i32 0, i32 1
  br label %58

55:                                               ; preds = %49
  %56 = load %struct.altmode*, %struct.altmode** %10, align 8
  %57 = getelementptr inbounds %struct.altmode, %struct.altmode* %56, i32 0, i32 1
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32* [ %54, %52 ], [ %57, %55 ]
  %60 = load i64, i64* %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @blocking_notifier_call_chain(i32* %59, i64 %60, i8* %61)
  %63 = load %struct.altmode*, %struct.altmode** %10, align 8
  %64 = getelementptr inbounds %struct.altmode, %struct.altmode* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = icmp ne %struct.TYPE_5__* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %58
  %69 = load %struct.altmode*, %struct.altmode** %10, align 8
  %70 = getelementptr inbounds %struct.altmode, %struct.altmode* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_6__*, i64, i8*)*, i32 (%struct.TYPE_6__*, i64, i8*)** %73, align 8
  %75 = icmp ne i32 (%struct.TYPE_6__*, i64, i8*)* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %68
  %77 = load %struct.altmode*, %struct.altmode** %10, align 8
  %78 = getelementptr inbounds %struct.altmode, %struct.altmode* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_6__*, i64, i8*)*, i32 (%struct.TYPE_6__*, i64, i8*)** %81, align 8
  %83 = load %struct.altmode*, %struct.altmode** %10, align 8
  %84 = getelementptr inbounds %struct.altmode, %struct.altmode* %83, i32 0, i32 0
  %85 = load i64, i64* %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 %82(%struct.TYPE_6__* %84, i64 %85, i8* %86)
  store i32 %87, i32* %4, align 4
  br label %89

88:                                               ; preds = %68, %58
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %76, %47, %22, %14
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.altmode* @to_altmode(%struct.typec_altmode*) #1

declare dso_local i32 @is_typec_port(i32) #1

declare dso_local i32 @typec_altmode_set_mux(%struct.altmode*, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
