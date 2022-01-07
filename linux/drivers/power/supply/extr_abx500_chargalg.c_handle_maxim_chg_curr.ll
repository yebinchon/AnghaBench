; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_handle_maxim_chg_curr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_handle_maxim_chg_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to set chg curr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abx500_chargalg*)* @handle_maxim_chg_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_maxim_chg_curr(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca %struct.abx500_chargalg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %2, align 8
  %5 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %6 = call i32 @abx500_chargalg_chg_curr_maxim(%struct.abx500_chargalg* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %48 [
    i32 130, label %8
    i32 129, label %23
    i32 128, label %47
  ]

8:                                                ; preds = %1
  %9 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %10 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %11 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @abx500_chargalg_update_chg_curr(%struct.abx500_chargalg* %9, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %19 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %8
  br label %49

23:                                               ; preds = %1
  %24 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %25 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %26 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %31 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @abx500_chargalg_update_chg_curr(%struct.abx500_chargalg* %24, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %43 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %23
  br label %49

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %1, %47
  br label %49

49:                                               ; preds = %48, %46, %22
  ret void
}

declare dso_local i32 @abx500_chargalg_chg_curr_maxim(%struct.abx500_chargalg*) #1

declare dso_local i32 @abx500_chargalg_update_chg_curr(%struct.abx500_chargalg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
