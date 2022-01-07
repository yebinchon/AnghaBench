; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_ppid_to_apid_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_ppid_to_apid_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_pmic_arb = type { i64*, %struct.TYPE_2__*, i64, i32, i32* }
%struct.TYPE_2__ = type { i64 }

@PMIC_ARB_APID_VALID = common dso_local global i64 0, align 8
@SPMI_MAPPING_TABLE_TREE_DEPTH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_pmic_arb*, i64)* @pmic_arb_ppid_to_apid_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_arb_ppid_to_apid_v1(%struct.spmi_pmic_arb* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spmi_pmic_arb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.spmi_pmic_arb* %0, %struct.spmi_pmic_arb** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %13 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %16 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %28 = xor i64 %27, -1
  %29 = and i64 %26, %28
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %135

32:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %129, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SPMI_MAPPING_TABLE_TREE_DEPTH, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %132

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %40 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @test_and_set_bit(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %46 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @SPMI_MAPPING_TABLE_REG(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @readl_relaxed(i64 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %37
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @SPMI_MAPPING_BIT_INDEX(i32 %63)
  %65 = call i64 @BIT(i32 %64)
  %66 = and i64 %62, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @SPMI_MAPPING_BIT_IS_1_FLAG(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = call i8* @SPMI_MAPPING_BIT_IS_1_RESULT(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %7, align 4
  br label %97

76:                                               ; preds = %68
  %77 = load i32, i32* %11, align 4
  %78 = call i8* @SPMI_MAPPING_BIT_IS_1_RESULT(i32 %77)
  %79 = ptrtoint i8* %78 to i64
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %82 = or i64 %80, %81
  %83 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %84 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %82, i64* %87, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %90 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i64 %88, i64* %94, align 8
  %95 = load i64, i64* %10, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %135

97:                                               ; preds = %72
  br label %128

98:                                               ; preds = %56
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @SPMI_MAPPING_BIT_IS_0_FLAG(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = call i8* @SPMI_MAPPING_BIT_IS_0_RESULT(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %7, align 4
  br label %127

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  %108 = call i8* @SPMI_MAPPING_BIT_IS_0_RESULT(i32 %107)
  %109 = ptrtoint i8* %108 to i64
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %112 = or i64 %110, %111
  %113 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %114 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64 %112, i64* %117, align 8
  %118 = load i64, i64* %5, align 8
  %119 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %120 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i64 %118, i64* %124, align 8
  %125 = load i64, i64* %10, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %3, align 4
  br label %135

127:                                              ; preds = %102
  br label %128

128:                                              ; preds = %127, %97
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %33

132:                                              ; preds = %33
  %133 = load i32, i32* @ENODEV, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %132, %106, %76, %25
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @SPMI_MAPPING_TABLE_REG(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @SPMI_MAPPING_BIT_INDEX(i32) #1

declare dso_local i64 @SPMI_MAPPING_BIT_IS_1_FLAG(i32) #1

declare dso_local i8* @SPMI_MAPPING_BIT_IS_1_RESULT(i32) #1

declare dso_local i64 @SPMI_MAPPING_BIT_IS_0_FLAG(i32) #1

declare dso_local i8* @SPMI_MAPPING_BIT_IS_0_RESULT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
