; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_ppid_to_apid_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_ppid_to_apid_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_pmic_arb = type { i64* }

@PMIC_ARB_APID_VALID = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_pmic_arb*, i64)* @pmic_arb_ppid_to_apid_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_arb_ppid_to_apid_v2(%struct.spmi_pmic_arb* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spmi_pmic_arb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.spmi_pmic_arb* %0, %struct.spmi_pmic_arb** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %8 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @pmic_arb_find_apid(%struct.spmi_pmic_arb* %18, i64 %19)
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @pmic_arb_find_apid(%struct.spmi_pmic_arb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
