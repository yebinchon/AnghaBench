; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps62360-regulator.c_find_voltage_set_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps62360-regulator.c_find_voltage_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps62360_chip = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps62360_chip*, i32, i32*)* @find_voltage_set_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_voltage_set_register(%struct.tps62360_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.tps62360_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tps62360_chip* %0, %struct.tps62360_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.tps62360_chip*, %struct.tps62360_chip** %4, align 8
  %12 = getelementptr inbounds %struct.tps62360_chip, %struct.tps62360_chip* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %45, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load %struct.tps62360_chip*, %struct.tps62360_chip** %4, align 8
  %21 = getelementptr inbounds %struct.tps62360_chip, %struct.tps62360_chip* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.tps62360_chip*, %struct.tps62360_chip** %4, align 8
  %24 = getelementptr inbounds %struct.tps62360_chip, %struct.tps62360_chip* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %22, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %19
  %36 = load %struct.tps62360_chip*, %struct.tps62360_chip** %4, align 8
  %37 = getelementptr inbounds %struct.tps62360_chip, %struct.tps62360_chip* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %49

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %16

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %69, %49
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load %struct.tps62360_chip*, %struct.tps62360_chip** %4, align 8
  %56 = getelementptr inbounds %struct.tps62360_chip, %struct.tps62360_chip* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tps62360_chip*, %struct.tps62360_chip** %4, align 8
  %64 = getelementptr inbounds %struct.tps62360_chip, %struct.tps62360_chip* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.tps62360_chip*, %struct.tps62360_chip** %4, align 8
  %75 = getelementptr inbounds %struct.tps62360_chip, %struct.tps62360_chip* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
