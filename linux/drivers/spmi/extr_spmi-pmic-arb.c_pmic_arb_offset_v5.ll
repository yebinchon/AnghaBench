; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_offset_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_offset_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_pmic_arb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_pmic_arb*, i32, i32, i32)* @pmic_arb_offset_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_arb_offset_v5(%struct.spmi_pmic_arb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spmi_pmic_arb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spmi_pmic_arb* %0, %struct.spmi_pmic_arb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 8
  %18 = or i32 %15, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %6, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @pmic_arb_ppid_to_apid_v5(%struct.spmi_pmic_arb* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %42

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %40 [
    i32 129, label %29
    i32 128, label %37
  ]

29:                                               ; preds = %26
  %30 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %6, align 8
  %31 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 65536, %32
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 128, %34
  %36 = add nsw i32 %33, %35
  store i32 %36, i32* %12, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 65536, %38
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %26, %37, %29
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %24
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @pmic_arb_ppid_to_apid_v5(%struct.spmi_pmic_arb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
