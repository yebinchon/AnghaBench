; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_find_pci_config_dword.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_find_pci_config_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_error = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.aer_error*, i32, i32*)* @find_pci_config_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_pci_config_dword(%struct.aer_error* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aer_error*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.aer_error* %0, %struct.aer_error** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %11 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %53

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %18 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  switch i32 %20, label %45 [
    i32 128, label %21
    i32 132, label %24
    i32 131, label %27
    i32 135, label %30
    i32 139, label %33
    i32 143, label %36
    i32 129, label %39
    i32 130, label %42
  ]

21:                                               ; preds = %15
  %22 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %23 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %22, i32 0, i32 8
  store i32* %23, i32** %9, align 8
  store i32 1, i32* %8, align 4
  br label %45

24:                                               ; preds = %15
  %25 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %26 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %25, i32 0, i32 7
  store i32* %26, i32** %9, align 8
  store i32 1, i32* %8, align 4
  br label %45

27:                                               ; preds = %15
  %28 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %29 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %28, i32 0, i32 6
  store i32* %29, i32** %9, align 8
  br label %45

30:                                               ; preds = %15
  %31 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %32 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %31, i32 0, i32 5
  store i32* %32, i32** %9, align 8
  br label %45

33:                                               ; preds = %15
  %34 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %35 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %34, i32 0, i32 4
  store i32* %35, i32** %9, align 8
  br label %45

36:                                               ; preds = %15
  %37 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %38 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %37, i32 0, i32 3
  store i32* %38, i32** %9, align 8
  br label %45

39:                                               ; preds = %15
  %40 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %41 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %40, i32 0, i32 2
  store i32* %41, i32** %9, align 8
  store i32 1, i32* %8, align 4
  br label %45

42:                                               ; preds = %15
  %43 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %44 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %43, i32 0, i32 1
  store i32* %44, i32** %9, align 8
  br label %45

45:                                               ; preds = %15, %42, %39, %36, %33, %30, %27, %24, %21
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32*, i32** %9, align 8
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %51, %14
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
