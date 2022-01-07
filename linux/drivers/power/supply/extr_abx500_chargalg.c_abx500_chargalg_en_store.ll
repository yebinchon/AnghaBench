; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_en_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_en_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [91 x i8] c"Wrong input\0AEnter 0. Disable AC/USB Charging\0A1. Enable AC charging\0A2. Enable USB Charging\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_chargalg*, i8*, i64)* @abx500_chargalg_en_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_en_store(%struct.abx500_chargalg* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.abx500_chargalg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @kstrtol(i8* %11, i32 10, i64* %8)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %71

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %63 [
    i32 0, label %21
    i32 1, label %37
    i32 2, label %50
  ]

21:                                               ; preds = %17
  %22 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %23 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %26 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %29 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 1, i32* %30, align 4
  %31 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %32 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %35 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %34, i32 0, i32 1
  %36 = call i32 @queue_work(i32 %33, i32* %35)
  br label %68

37:                                               ; preds = %17
  %38 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %39 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %42 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  %44 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %45 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %48 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %47, i32 0, i32 1
  %49 = call i32 @queue_work(i32 %46, i32* %48)
  br label %68

50:                                               ; preds = %17
  %51 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %52 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %55 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 4
  %57 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %58 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %61 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %60, i32 0, i32 1
  %62 = call i32 @queue_work(i32 %59, i32* %61)
  br label %68

63:                                               ; preds = %17
  %64 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %65 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_info(i32 %66, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %50, %37, %21
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
