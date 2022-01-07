; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_pinctrl_mmio_access_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_pinctrl_mmio_access_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chv_pinctrl = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@chv_lock = common dso_local global i32 0, align 4
@ACPI_WRITE = common dso_local global i64 0, align 8
@ACPI_READ = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64*, i8*, i8*)* @chv_pinctrl_mmio_access_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_pinctrl_mmio_access_handler(i64 %0, i64 %1, i64 %2, i64* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.chv_pinctrl*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to %struct.chv_pinctrl*
  store %struct.chv_pinctrl* %17, %struct.chv_pinctrl** %13, align 8
  %18 = load i32, i32* @AE_OK, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i64, i64* %14, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* @chv_lock, i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @ACPI_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %13, align 8
  %28 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @chv_writel(i64 %26, i64 %31)
  br label %48

33:                                               ; preds = %6
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @ACPI_READ, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %13, align 8
  %39 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @readl(i64 %42)
  %44 = load i64*, i64** %10, align 8
  store i64 %43, i64* %44, align 8
  br label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %45, %37
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @raw_spin_unlock_irqrestore(i32* @chv_lock, i64 %49)
  %51 = load i32, i32* %15, align 4
  ret i32 %51
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @chv_writel(i64, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
