; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__opp_add_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__opp_add_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i64, i32 }
%struct.device = type { i32 }
%struct.dev_pm_opp = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@OPP_EVENT_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_opp_add_v1(%struct.opp_table* %0, %struct.device* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.opp_table*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dev_pm_opp*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.opp_table* %0, %struct.opp_table** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %16 = call %struct.dev_pm_opp* @_opp_allocate(%struct.opp_table* %15)
  store %struct.dev_pm_opp* %16, %struct.dev_pm_opp** %12, align 8
  %17 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %18 = icmp ne %struct.dev_pm_opp* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %82

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %25 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %28 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = mul nsw i64 %26, %29
  %31 = sdiv i64 %30, 100
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %34 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %32, i64* %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %13, align 8
  %40 = sub i64 %38, %39
  %41 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %42 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 %40, i64* %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %13, align 8
  %48 = add i64 %46, %47
  %49 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %50 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i64 %48, i64* %53, align 8
  %54 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %55 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %58 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.device*, %struct.device** %8, align 8
  %60 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %61 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %62 = call i32 @_opp_add(%struct.device* %59, %struct.dev_pm_opp* %60, %struct.opp_table* %61, i32 0)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %22
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %70, %65
  br label %78

72:                                               ; preds = %22
  %73 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %74 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %73, i32 0, i32 1
  %75 = load i32, i32* @OPP_EVENT_ADD, align 4
  %76 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %77 = call i32 @blocking_notifier_call_chain(i32* %74, i32 %75, %struct.dev_pm_opp* %76)
  store i32 0, i32* %6, align 4
  br label %82

78:                                               ; preds = %71
  %79 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %80 = call i32 @_opp_free(%struct.dev_pm_opp* %79)
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %72, %19
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.dev_pm_opp* @_opp_allocate(%struct.opp_table*) #1

declare dso_local i32 @_opp_add(%struct.device*, %struct.dev_pm_opp*, %struct.opp_table*, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.dev_pm_opp*) #1

declare dso_local i32 @_opp_free(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
