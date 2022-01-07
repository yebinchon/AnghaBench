; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_register_component.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_register_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.core_component = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Bad component\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"registered new core component %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @most_register_component(%struct.core_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.core_component*, align 8
  store %struct.core_component* %0, %struct.core_component** %3, align 8
  %4 = load %struct.core_component*, %struct.core_component** %3, align 8
  %5 = icmp ne %struct.core_component* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.core_component*, %struct.core_component** %3, align 8
  %12 = getelementptr inbounds %struct.core_component, %struct.core_component* %11, i32 0, i32 1
  %13 = call i32 @list_add_tail(i32* %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mc, i32 0, i32 0))
  %14 = load %struct.core_component*, %struct.core_component** %3, align 8
  %15 = getelementptr inbounds %struct.core_component, %struct.core_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %10, %6
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
