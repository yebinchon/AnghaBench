; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_check_charger_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_check_charger_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abx500_chargalg*)* @abx500_chargalg_check_charger_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abx500_chargalg_check_charger_voltage(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca %struct.abx500_chargalg*, align 8
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %2, align 8
  %3 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %4 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %8 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %6, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %17 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %21 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %25 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %29 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %27, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %38 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 0, i32* %39, align 8
  br label %44

40:                                               ; preds = %23
  %41 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %42 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
