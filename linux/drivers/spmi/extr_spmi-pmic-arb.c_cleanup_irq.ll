; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_cleanup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_cleanup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_pmic_arb = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.spmi_pmic_arb*, i64)* }
%struct.TYPE_4__ = type { i64 }

@SPMI_CMD_EXT_WRITEL = common dso_local global i32 0, align 4
@QPNPINT_REG_LATCHED_CLR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"failed to ack irq_mask = 0x%x for ppid = %x\0A\00", align 1
@QPNPINT_REG_EN_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spmi_pmic_arb*, i64, i32)* @cleanup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_irq(%struct.spmi_pmic_arb* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.spmi_pmic_arb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spmi_pmic_arb* %0, %struct.spmi_pmic_arb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %12 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = lshr i64 %18, 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %21, 255
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @BIT(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %28 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (%struct.spmi_pmic_arb*, i64)*, i32 (%struct.spmi_pmic_arb*, i64)** %30, align 8
  %32 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 %31(%struct.spmi_pmic_arb* %32, i64 %33)
  %35 = call i32 @writel_relaxed(i32 %26, i32 %34)
  %36 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %37 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* @SPMI_CMD_EXT_WRITEL, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @QPNPINT_REG_LATCHED_CLR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i64 @pmic_arb_write_cmd(%struct.TYPE_6__* %38, i32 %39, i32 %40, i64 %45, i32* %10, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %3
  %49 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %50 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %10, align 4
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @dev_err_ratelimited(i32* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %48, %3
  %57 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %58 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* @SPMI_CMD_EXT_WRITEL, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @QPNPINT_REG_EN_CLR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i64 @pmic_arb_write_cmd(%struct.TYPE_6__* %59, i32 %60, i32 %61, i64 %66, i32* %10, i32 1)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %56
  %70 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %4, align 8
  %71 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %10, align 4
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @dev_err_ratelimited(i32* %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %69, %56
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i64 @pmic_arb_write_cmd(%struct.TYPE_6__*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
