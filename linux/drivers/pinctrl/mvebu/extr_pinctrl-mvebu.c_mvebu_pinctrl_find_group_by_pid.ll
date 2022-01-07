; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_find_group_by_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_find_group_by_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pinctrl_group = type { i32*, i32 }
%struct.mvebu_pinctrl = type { i32, %struct.mvebu_pinctrl_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvebu_pinctrl_group* (%struct.mvebu_pinctrl*, i32)* @mvebu_pinctrl_find_group_by_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvebu_pinctrl_group* @mvebu_pinctrl_find_group_by_pid(%struct.mvebu_pinctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.mvebu_pinctrl_group*, align 8
  %4 = alloca %struct.mvebu_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvebu_pinctrl* %0, %struct.mvebu_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %56, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %4, align 8
  %10 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %4, align 8
  %16 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %15, i32 0, i32 1
  %17 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %17, i64 %19
  %21 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %14, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %4, align 8
  %29 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %28, i32 0, i32 1
  %30 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %30, i64 %32
  %34 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %4, align 8
  %39 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %38, i32 0, i32 1
  %40 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %40, i64 %42
  %44 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %37, %45
  %47 = icmp ult i32 %27, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %26
  %49 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %4, align 8
  %50 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %49, i32 0, i32 1
  %51 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %51, i64 %53
  store %struct.mvebu_pinctrl_group* %54, %struct.mvebu_pinctrl_group** %3, align 8
  br label %60

55:                                               ; preds = %26, %13
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %7

59:                                               ; preds = %7
  store %struct.mvebu_pinctrl_group* null, %struct.mvebu_pinctrl_group** %3, align 8
  br label %60

60:                                               ; preds = %59, %48
  %61 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %3, align 8
  ret %struct.mvebu_pinctrl_group* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
