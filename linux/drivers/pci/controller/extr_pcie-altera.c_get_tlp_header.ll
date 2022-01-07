; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_get_tlp_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_get_tlp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@TLP_READ_TAG = common dso_local global i64 0, align 8
@TLP_WRITE_TAG = common dso_local global i64 0, align 8
@ALTERA_PCIE_V1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_pcie*, i64, i32, i32, i64, i32, i32*)* @get_tlp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tlp_header(%struct.altera_pcie* %0, i64 %1, i32 %2, i32 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.altera_pcie*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.altera_pcie* %0, %struct.altera_pcie** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %7
  %22 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %23 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %33

27:                                               ; preds = %7
  %28 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %29 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i64 [ %26, %21 ], [ %32, %27 ]
  store i64 %34, i64* %16, align 8
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %39 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %45 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i64 [ %42, %37 ], [ %48, %43 ]
  store i64 %50, i64* %17, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @TLP_READ_TAG, align 8
  br label %57

55:                                               ; preds = %49
  %56 = load i64, i64* @TLP_WRITE_TAG, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  store i64 %58, i64* %18, align 8
  %59 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %60 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ALTERA_PCIE_V1, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %69 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* %16, align 8
  br label %76

74:                                               ; preds = %66
  %75 = load i64, i64* %17, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  store i64 %77, i64* %15, align 8
  br label %89

78:                                               ; preds = %57
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %81 = call i64 @S10_RP_SECONDARY(%struct.altera_pcie* %80)
  %82 = icmp sgt i64 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i64, i64* %16, align 8
  br label %87

85:                                               ; preds = %78
  %86 = load i64, i64* %17, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i64 [ %84, %83 ], [ %86, %85 ]
  store i64 %88, i64* %15, align 8
  br label %89

89:                                               ; preds = %87, %76
  %90 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @TLP_CFG_DW0(%struct.altera_pcie* %90, i64 %91)
  %93 = load i32*, i32** %14, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @TLP_CFG_DW1(%struct.altera_pcie* %95, i64 %96, i64 %97)
  %99 = load i32*, i32** %14, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %98, i32* %100, align 4
  %101 = load i64, i64* %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @TLP_CFG_DW2(i64 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %104, i32* %106, align 4
  ret void
}

declare dso_local i64 @S10_RP_SECONDARY(%struct.altera_pcie*) #1

declare dso_local i32 @TLP_CFG_DW0(%struct.altera_pcie*, i64) #1

declare dso_local i32 @TLP_CFG_DW1(%struct.altera_pcie*, i64, i64) #1

declare dso_local i32 @TLP_CFG_DW2(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
