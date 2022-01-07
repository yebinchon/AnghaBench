; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_overlay_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_overlay_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overlay_changeset = type { i32, %struct.fragment* }
%struct.fragment = type { i32, i32 }
%struct.of_overlay_notify_data = type { i32, i32 }

@overlay_notify_chain = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"overlay changeset %s notifier error %d, target: %pOF\0A\00", align 1
@of_overlay_action_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.overlay_changeset*, i32)* @overlay_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_notify(%struct.overlay_changeset* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.overlay_changeset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_overlay_notify_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fragment*, align 8
  store %struct.overlay_changeset* %0, %struct.overlay_changeset** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %58, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.overlay_changeset*, %struct.overlay_changeset** %4, align 8
  %13 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %10
  %17 = load %struct.overlay_changeset*, %struct.overlay_changeset** %4, align 8
  %18 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %17, i32 0, i32 1
  %19 = load %struct.fragment*, %struct.fragment** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.fragment, %struct.fragment* %19, i64 %21
  store %struct.fragment* %22, %struct.fragment** %9, align 8
  %23 = load %struct.fragment*, %struct.fragment** %9, align 8
  %24 = getelementptr inbounds %struct.fragment, %struct.fragment* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.of_overlay_notify_data, %struct.of_overlay_notify_data* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.fragment*, %struct.fragment** %9, align 8
  %28 = getelementptr inbounds %struct.fragment, %struct.fragment* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.of_overlay_notify_data, %struct.of_overlay_notify_data* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @blocking_notifier_call_chain(i32* @overlay_notify_chain, i32 %31, %struct.of_overlay_notify_data* %6)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @NOTIFY_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %16
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @NOTIFY_STOP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %16
  store i32 0, i32* %3, align 4
  br label %62

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @notifier_to_errno(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** @of_overlay_action_name, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds %struct.of_overlay_notify_data, %struct.of_overlay_notify_data* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %10

61:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %44, %40
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.of_overlay_notify_data*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
