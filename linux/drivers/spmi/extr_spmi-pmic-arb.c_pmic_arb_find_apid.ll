; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_find_apid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_find_apid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_pmic_arb = type { i64, i64, i64, i64, i64*, %struct.TYPE_2__*, %struct.apid_data* }
%struct.TYPE_2__ = type { i64 (i64)* }
%struct.apid_data = type { i64, i32, i32 }

@PMIC_ARB_PPID_MASK = common dso_local global i64 0, align 8
@PMIC_ARB_APID_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.spmi_pmic_arb*, i64)* @pmic_arb_find_apid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmic_arb_find_apid(%struct.spmi_pmic_arb* %0, i64 %1) #0 {
  %3 = alloca %struct.spmi_pmic_arb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.apid_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.spmi_pmic_arb* %0, %struct.spmi_pmic_arb** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %11 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %10, i32 0, i32 6
  %12 = load %struct.apid_data*, %struct.apid_data** %11, align 8
  %13 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %14 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %12, i64 %15
  store %struct.apid_data* %16, %struct.apid_data** %5, align 8
  %17 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %18 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %84, %2
  %21 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %22 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64 (i64)*, i64 (i64)** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 %25(i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %30 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %89

34:                                               ; preds = %20
  %35 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %36 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @SPMI_OWNERSHIP_TABLE_REG(i64 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i64 @readl_relaxed(i64 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @SPMI_OWNERSHIP_PERIPH2OWNER(i64 %42)
  %44 = load %struct.apid_data*, %struct.apid_data** %5, align 8
  %45 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.apid_data*, %struct.apid_data** %5, align 8
  %47 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.apid_data*, %struct.apid_data** %5, align 8
  %50 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %52 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i64 @readl_relaxed(i64 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %34
  br label %84

60:                                               ; preds = %34
  %61 = load i64, i64* %6, align 8
  %62 = ashr i64 %61, 8
  %63 = load i64, i64* @PMIC_ARB_PPID_MASK, align 8
  %64 = and i64 %62, %63
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %67 = or i64 %65, %66
  %68 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %69 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %68, i32 0, i32 4
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %67, i64* %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.apid_data*, %struct.apid_data** %5, align 8
  %75 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %60
  %80 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %81 = load i64, i64* %9, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %9, align 8
  br label %89

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  %87 = load %struct.apid_data*, %struct.apid_data** %5, align 8
  %88 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %87, i32 1
  store %struct.apid_data* %88, %struct.apid_data** %5, align 8
  br label %20

89:                                               ; preds = %79, %33
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %92 = xor i64 %91, -1
  %93 = and i64 %90, %92
  %94 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %3, align 8
  %95 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %9, align 8
  ret i64 %96
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i64 @SPMI_OWNERSHIP_TABLE_REG(i64) #1

declare dso_local i32 @SPMI_OWNERSHIP_PERIPH2OWNER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
