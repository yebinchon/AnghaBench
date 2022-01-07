; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pxa27x.c_pxa27x_ohci_set_vbus_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pxa27x.c_pxa27x_ohci_set_vbus_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_ohci = type { i32*, %struct.regulator** }
%struct.regulator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa27x_ohci*, i32, i32)* @pxa27x_ohci_set_vbus_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa27x_ohci_set_vbus_power(%struct.pxa27x_ohci* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa27x_ohci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator*, align 8
  %9 = alloca i32, align 4
  store %struct.pxa27x_ohci* %0, %struct.pxa27x_ohci** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %5, align 8
  %11 = getelementptr inbounds %struct.pxa27x_ohci, %struct.pxa27x_ohci* %10, i32 0, i32 1
  %12 = load %struct.regulator**, %struct.regulator*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.regulator*, %struct.regulator** %12, i64 %14
  %16 = load %struct.regulator*, %struct.regulator** %15, align 8
  store %struct.regulator* %16, %struct.regulator** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.regulator*, %struct.regulator** %8, align 8
  %18 = call i64 @IS_ERR_OR_NULL(%struct.regulator* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %5, align 8
  %26 = getelementptr inbounds %struct.pxa27x_ohci, %struct.pxa27x_ohci* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load %struct.regulator*, %struct.regulator** %8, align 8
  %35 = call i32 @regulator_enable(%struct.regulator* %34)
  store i32 %35, i32* %9, align 4
  br label %52

36:                                               ; preds = %24, %21
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %5, align 8
  %41 = getelementptr inbounds %struct.pxa27x_ohci, %struct.pxa27x_ohci* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.regulator*, %struct.regulator** %8, align 8
  %50 = call i32 @regulator_disable(%struct.regulator* %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %39, %36
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %65

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %5, align 8
  %60 = getelementptr inbounds %struct.pxa27x_ohci, %struct.pxa27x_ohci* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %57, %55, %20
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.regulator*) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
