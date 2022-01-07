; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c__altera_pcie_cfg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c__altera_pcie_cfg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.altera_pcie*, i32, i32, i32*)* }

@DWORD_MASK = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_pcie*, i64, i32, i32, i32, i32*)* @_altera_pcie_cfg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_altera_pcie_cfg_read(%struct.altera_pcie* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.altera_pcie*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.altera_pcie* %0, %struct.altera_pcie** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %19 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %6
  %23 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %24 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.altera_pcie*, i32, i32, i32*)*, i32 (%struct.altera_pcie*, i32, i32, i32*)** %28, align 8
  %30 = icmp ne i32 (%struct.altera_pcie*, i32, i32, i32*)* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %33 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.altera_pcie*, i32, i32, i32*)*, i32 (%struct.altera_pcie*, i32, i32, i32*)** %37, align 8
  %39 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 %38(%struct.altera_pcie* %39, i32 %40, i32 %41, i32* %42)
  store i32 %43, i32* %7, align 4
  br label %95

44:                                               ; preds = %22, %6
  %45 = load i32, i32* %12, align 4
  switch i32 %45, label %56 [
    i32 1, label %46
    i32 2, label %51
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 3
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %16, align 8
  br label %57

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 3
  %54 = shl i32 3, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %16, align 8
  br label %57

56:                                               ; preds = %44
  store i64 15, i64* %16, align 8
  br label %57

57:                                               ; preds = %56, %51, %46
  %58 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @DWORD_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load i64, i64* %16, align 8
  %66 = call i32 @tlp_cfg_dword_read(%struct.altera_pcie* %58, i64 %59, i32 %60, i32 %64, i64 %65, i32* %15)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %7, align 4
  br label %95

72:                                               ; preds = %57
  %73 = load i32, i32* %12, align 4
  switch i32 %73, label %90 [
    i32 1, label %74
    i32 2, label %82
  ]

74:                                               ; preds = %72
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, 3
  %78 = mul nsw i32 8, %77
  %79 = ashr i32 %75, %78
  %80 = and i32 %79, 255
  %81 = load i32*, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  br label %93

82:                                               ; preds = %72
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 2
  %86 = mul nsw i32 8, %85
  %87 = ashr i32 %83, %86
  %88 = and i32 %87, 65535
  %89 = load i32*, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  br label %93

90:                                               ; preds = %72
  %91 = load i32, i32* %15, align 4
  %92 = load i32*, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %82, %74
  %94 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %70, %31
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @tlp_cfg_dword_read(%struct.altera_pcie*, i64, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
