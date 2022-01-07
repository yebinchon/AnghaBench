; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-mips.c_brcmstb_pm_s2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/brcmstb/pm/extr_pm-mips.c_brcmstb_pm_s2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ctrl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@current_cpu_data = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BMIPS_WARM_RESTART_VEC = common dso_local global i64 0, align 8
@bmips_smp_int_vec_end = common dso_local global i64 0, align 8
@bmips_smp_int_vec = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @brcmstb_pm_s2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_pm_s2() #0 {
  %1 = alloca [6 x i64], align 16
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctrl, i32 0, i32 2), align 8
  %3 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  store i64 %2, i64* %3, align 16
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctrl, i32 0, i32 1), align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i64 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 1
  store i64 %7, i64* %8, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctrl, i32 0, i32 0), align 8
  %10 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 2
  store i64 %9, i64* %10, align 16
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_cpu_data, i32 0, i32 0, i32 0), align 8
  %12 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 3
  store i64 %11, i64* %12, align 8
  %13 = load i64, i64* @BMIPS_WARM_RESTART_VEC, align 8
  %14 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 4
  store i64 %13, i64* %14, align 16
  %15 = load i64, i64* @bmips_smp_int_vec_end, align 8
  %16 = load i64, i64* @bmips_smp_int_vec, align 8
  %17 = sub nsw i64 %15, %16
  %18 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 5
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  %20 = call i32 @brcm_pm_do_s2(i64* %19)
  ret i32 0
}

declare dso_local i32 @brcm_pm_do_s2(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
