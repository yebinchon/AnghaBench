; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinctrl_mdio_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinctrl_mdio_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rzn1_pinctrl = type { i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [33 x i8] c"conflicting setting for mdio%d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"setting mdio%d to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rzn1_pinctrl*, i32, i64)* @rzn1_pinctrl_mdio_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rzn1_pinctrl_mdio_select(%struct.rzn1_pinctrl* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rzn1_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.rzn1_pinctrl* %0, %struct.rzn1_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %8 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %17 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %27 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %15, %3
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %34 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 %32, i64* %38, align 8
  %39 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %40 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %43)
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %47 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @writel(i64 %45, i32* %53)
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @writel(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
