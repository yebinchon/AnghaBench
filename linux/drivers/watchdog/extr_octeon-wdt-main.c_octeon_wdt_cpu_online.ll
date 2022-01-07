; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_cpu_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_cpu_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%union.cvmx_ciu_wdogx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.irq_domain = type { i32 }

@octeon_wdt_nmi_stage2 = common dso_local global i64 0, align 8
@octeon_wdt_bootvector = common dso_local global %struct.TYPE_4__* null, align 8
@countdown_reset = common dso_local global i32 0, align 4
@per_cpu_countdown = common dso_local global i32* null, align 8
@OCTEON_FEATURE_CIU3 = common dso_local global i32 0, align 4
@WD_BLOCK_NUMBER = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@OCTEON_IRQ_WDOG0 = common dso_local global i32 0, align 4
@octeon_wdt_poke_irq = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"octeon_wdt\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"octeon_wdt: Couldn't obtain irq %d\00", align 1
@irq_enabled_cpus = common dso_local global i32 0, align 4
@timeout_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octeon_wdt_cpu_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_wdt_cpu_online(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_ciu_wdogx, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @cpu2core(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @cpu_to_node(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @octeon_wdt_nmi_stage2, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @octeon_wdt_bootvector, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %14, i64* %19, align 8
  %20 = bitcast %union.cvmx_ciu_wdogx* %5 to i32*
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @CVMX_CIU_WDOGX(i32 %22)
  %24 = bitcast %union.cvmx_ciu_wdogx* %5 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cvmx_write_csr_node(i32 %21, i32 %23, i32 %25)
  %27 = load i32, i32* @countdown_reset, align 4
  %28 = load i32*, i32** @per_cpu_countdown, align 8
  %29 = load i32, i32* %2, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @OCTEON_FEATURE_CIU3, align 4
  %33 = call i64 @octeon_has_feature(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %1
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @WD_BLOCK_NUMBER, align 4
  %38 = call %struct.irq_domain* @octeon_irq_get_block_domain(i32 %36, i32 %37)
  store %struct.irq_domain* %38, %struct.irq_domain** %7, align 8
  %39 = load i32, i32* @WD_BLOCK_NUMBER, align 4
  %40 = shl i32 %39, 12
  %41 = or i32 %40, 512
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @irq_create_mapping(%struct.irq_domain* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @irq_get_irq_data(i32 %47)
  %49 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %50 = call i32 @irqd_set_trigger_type(i32 %48, i32 %49)
  br label %55

51:                                               ; preds = %1
  %52 = load i32, i32* @OCTEON_IRQ_WDOG0, align 4
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %52, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %35
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @octeon_wdt_poke_irq, align 4
  %58 = load i32, i32* @IRQF_NO_THREAD, align 4
  %59 = load i32, i32* @octeon_wdt_poke_irq, align 4
  %60 = call i64 @request_irq(i32 %56, i32 %57, i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* @OCTEON_FEATURE_CIU3, align 4
  %67 = call i64 @octeon_has_feature(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = call i32 @cpumask_clear(i32* %9)
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @cpumask_set_cpu(i32 %71, i32* %9)
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @irq_set_affinity(i32 %73, i32* %9)
  br label %75

75:                                               ; preds = %69, %65
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @cpumask_set_cpu(i32 %76, i32* @irq_enabled_cpus)
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @CVMX_CIU_PP_POKEX(i32 %79)
  %81 = call i32 @cvmx_write_csr_node(i32 %78, i32 %80, i32 1)
  %82 = bitcast %union.cvmx_ciu_wdogx* %5 to i32*
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* @timeout_cnt, align 4
  %84 = bitcast %union.cvmx_ciu_wdogx* %5 to %struct.TYPE_3__*
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = bitcast %union.cvmx_ciu_wdogx* %5 to %struct.TYPE_3__*
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 3, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @CVMX_CIU_WDOGX(i32 %89)
  %91 = bitcast %union.cvmx_ciu_wdogx* %5 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cvmx_write_csr_node(i32 %88, i32 %90, i32 %92)
  ret i32 0
}

declare dso_local i32 @cpu2core(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @cvmx_write_csr_node(i32, i32, i32) #1

declare dso_local i32 @CVMX_CIU_WDOGX(i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local %struct.irq_domain* @octeon_irq_get_block_domain(i32, i32) #1

declare dso_local i32 @irq_create_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @irqd_set_trigger_type(i32, i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @cpumask_clear(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @irq_set_affinity(i32, i32*) #1

declare dso_local i32 @CVMX_CIU_PP_POKEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
