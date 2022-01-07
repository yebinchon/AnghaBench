; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c__altera_pcie_cfg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c__altera_pcie_cfg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.altera_pcie*, i64, i32, i32, i32)* }

@DWORD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_pcie*, i64, i32, i32, i32, i32)* @_altera_pcie_cfg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_altera_pcie_cfg_write(%struct.altera_pcie* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.altera_pcie*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.altera_pcie* %0, %struct.altera_pcie** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = and i32 %17, 3
  %19 = mul nsw i32 8, %18
  store i32 %19, i32* %15, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %22 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %6
  %26 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %27 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.altera_pcie*, i64, i32, i32, i32)*, i32 (%struct.altera_pcie*, i64, i32, i32, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.altera_pcie*, i64, i32, i32, i32)* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %36 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.altera_pcie*, i64, i32, i32, i32)*, i32 (%struct.altera_pcie*, i64, i32, i32, i32)** %40, align 8
  %42 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 %41(%struct.altera_pcie* %42, i64 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %81

48:                                               ; preds = %25, %6
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %68 [
    i32 1, label %50
    i32 2, label %59
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %13, align 4
  %52 = and i32 %51, 255
  %53 = load i32, i32* %15, align 4
  %54 = shl i32 %52, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 3
  %57 = shl i32 1, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %16, align 8
  br label %70

59:                                               ; preds = %48
  %60 = load i32, i32* %13, align 4
  %61 = and i32 %60, 65535
  %62 = load i32, i32* %15, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 3
  %66 = shl i32 3, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %16, align 8
  br label %70

68:                                               ; preds = %48
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %14, align 4
  store i64 15, i64* %16, align 8
  br label %70

70:                                               ; preds = %68, %59, %50
  %71 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @DWORD_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = load i64, i64* %16, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @tlp_cfg_dword_write(%struct.altera_pcie* %71, i64 %72, i32 %73, i32 %77, i64 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %70, %34
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @tlp_cfg_dword_write(%struct.altera_pcie*, i64, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
