; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_modify_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_modify_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_tcb = type { i32 }
%struct.sym_ccb = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.sym_pmc, %struct.sym_pmc }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sym_pmc = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@HF_SENSE = common dso_local global i32 0, align 4
@SYM_CONF_MAX_SG = common dso_local global i32 0, align 4
@HF_PRT = common dso_local global i32 0, align 4
@HF_DP_SAVED = common dso_local global i32 0, align 4
@HF_ACT_PM = common dso_local global i32 0, align 4
@pm0_data = common dso_local global i32 0, align 4
@pm1_data = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@msg_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*, i32)* @sym_modify_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_modify_dp(%struct.sym_hcb* %0, %struct.sym_tcb* %1, %struct.sym_ccb* %2, i32 %3) #0 {
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca %struct.sym_tcb*, align 8
  %7 = alloca %struct.sym_ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sym_pmc*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %5, align 8
  store %struct.sym_tcb* %1, %struct.sym_tcb** %6, align 8
  store %struct.sym_ccb* %2, %struct.sym_ccb** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %18 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %19 = call i32 @sym_get_script_dp(%struct.sym_hcb* %17, %struct.sym_ccb* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %21 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HF_SENSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %143

27:                                               ; preds = %4
  %28 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %29 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @sym_evaluate_dp(%struct.sym_hcb* %28, %struct.sym_ccb* %29, i32 %30, i32* %9)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %143

35:                                               ; preds = %27
  %36 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %37 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_scr(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 8
  %43 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sub nsw i32 %43, %44
  %46 = mul nsw i32 %45, 8
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %10, align 4
  br label %133

52:                                               ; preds = %35
  %53 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %54 = load i32, i32* @HF_PRT, align 4
  %55 = call i32 @INB(%struct.sym_hcb* %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @HF_DP_SAVED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @HF_ACT_PM, align 4
  %62 = load i32, i32* %13, align 4
  %63 = xor i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @HF_ACT_PM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %71 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store %struct.sym_pmc* %72, %struct.sym_pmc** %15, align 8
  %73 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %74 = load i32, i32* @pm0_data, align 4
  %75 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %83

76:                                               ; preds = %64
  %77 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %78 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store %struct.sym_pmc* %79, %struct.sym_pmc** %15, align 8
  %80 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %81 = load i32, i32* @pm1_data, align 4
  %82 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i32, i32* @HF_DP_SAVED, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %89 = load i32, i32* @HF_PRT, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @OUTB(%struct.sym_hcb* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = call i8* @cpu_to_scr(i32 %92)
  %94 = load %struct.sym_pmc*, %struct.sym_pmc** %15, align 8
  %95 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %97 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @scr_to_cpu(i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %108 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @scr_to_cpu(i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i8* @cpu_to_scr(i32 %122)
  %124 = load %struct.sym_pmc*, %struct.sym_pmc** %15, align 8
  %125 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i8* %123, i8** %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 0, %127
  %129 = call i8* @cpu_to_scr(i32 %128)
  %130 = load %struct.sym_pmc*, %struct.sym_pmc** %15, align 8
  %131 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  br label %133

133:                                              ; preds = %83, %50
  %134 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %135 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @sym_set_script_dp(%struct.sym_hcb* %134, %struct.sym_ccb* %135, i32 %136)
  %138 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %139 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %140 = load i32, i32* @clrack, align 4
  %141 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %139, i32 %140)
  %142 = call i32 @OUTL_DSP(%struct.sym_hcb* %138, i32 %141)
  br label %149

143:                                              ; preds = %34, %26
  %144 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %145 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %146 = load i32, i32* @msg_bad, align 4
  %147 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %145, i32 %146)
  %148 = call i32 @OUTL_DSP(%struct.sym_hcb* %144, i32 %147)
  br label %149

149:                                              ; preds = %143, %133
  ret void
}

declare dso_local i32 @sym_get_script_dp(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_evaluate_dp(%struct.sym_hcb*, %struct.sym_ccb*, i32, i32*) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

declare dso_local i32 @sym_set_script_dp(%struct.sym_hcb*, %struct.sym_ccb*, i32) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
