; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_domain_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_qpnpint_irq_domain_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.spmi_pmic_arb* }
%struct.spmi_pmic_arb = type { i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.spmi_pmic_arb*, i8*)* }
%struct.irq_fwspec = type { i32*, i32 }

@.str = private unnamed_addr constant [54 x i8] c"intspec[0] 0x%1x intspec[1] 0x%02x intspec[2] 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"failed to xlate sid = %#x, periph = %#x, irq = %u rc = %d\0A\00", align 1
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"out_hwirq = %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @qpnpint_irq_domain_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpnpint_irq_domain_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.spmi_pmic_arb*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %16 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %15, i32 0, i32 0
  %17 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %16, align 8
  store %struct.spmi_pmic_arb* %17, %struct.spmi_pmic_arb** %10, align 8
  %18 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %19 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %22 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %31, i32 %34)
  %36 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %37 = call i64 @irq_domain_get_of_node(%struct.irq_domain* %36)
  %38 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %39 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %37, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %161

48:                                               ; preds = %4
  %49 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %50 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %161

56:                                               ; preds = %48
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 15
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 255
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 7
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %61, %56
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %161

74:                                               ; preds = %66
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %13, align 8
  %85 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %86 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32 (%struct.spmi_pmic_arb*, i8*)*, i32 (%struct.spmi_pmic_arb*, i8*)** %88, align 8
  %90 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 %89(%struct.spmi_pmic_arb* %90, i8* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %74
  %96 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %97 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @dev_err(%struct.TYPE_7__* %99, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105, i32 %108, i32 %109)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %5, align 4
  br label %161

112:                                              ; preds = %74
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** %12, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %118 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ugt i8* %116, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load i8*, i8** %12, align 8
  %123 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %124 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %112
  %126 = load i8*, i8** %12, align 8
  %127 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %128 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ult i8* %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i8*, i8** %12, align 8
  %133 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %134 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %125
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %12, align 8
  %146 = call i64 @spec_to_hwirq(i32 %138, i32 %141, i32 %144, i8* %145)
  %147 = load i64*, i64** %8, align 8
  store i64 %146, i64* %147, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load i32*, i32** %9, align 8
  store i32 %152, i32* %153, align 4
  %154 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %10, align 8
  %155 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %154, i32 0, i32 2
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64*, i64** %8, align 8
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_7__* %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %159)
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %135, %95, %71, %53, %45
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i64, ...) #1

declare dso_local i64 @irq_domain_get_of_node(%struct.irq_domain*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @spec_to_hwirq(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
