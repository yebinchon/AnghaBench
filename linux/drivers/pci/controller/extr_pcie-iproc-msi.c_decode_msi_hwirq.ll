; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_decode_msi_hwirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_decode_msi_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_msi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_msi*, i32, i32)* @decode_msi_hwirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_msi_hwirq(%struct.iproc_msi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iproc_msi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iproc_msi* %0, %struct.iproc_msi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @iproc_msi_eq_offset(%struct.iproc_msi* %10, i32 %11)
  %13 = sext i32 %12 to i64
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 %13, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %20 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @readl(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 5
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 31
  %32 = add nsw i32 %29, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @hwirq_to_canonical_hwirq(%struct.iproc_msi* %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @iproc_msi_eq_offset(%struct.iproc_msi*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @hwirq_to_canonical_hwirq(%struct.iproc_msi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
