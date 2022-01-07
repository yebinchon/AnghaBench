; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qman_init_ccsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qman_init_ccsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@qm_memory_fqd = common dso_local global i32 0, align 4
@fqd_a = common dso_local global i32 0, align 4
@fqd_sz = common dso_local global i32 0, align 4
@qm_memory_pfdr = common dso_local global i32 0, align 4
@pfdr_a = common dso_local global i32 0, align 4
@pfdr_sz = common dso_local global i32 0, align 4
@REG_ERR_ISR = common dso_local global i32 0, align 4
@QM_EIRQ_PEBI = common dso_local global i32 0, align 4
@qm_wq_first = common dso_local global i32 0, align 4
@qm_wq_last = common dso_local global i32 0, align 4
@qm_dc_portal_fman0 = common dso_local global i32 0, align 4
@qm_dc_portal_fman1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @qman_init_ccsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_init_ccsr(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @qm_memory_fqd, align 4
  %7 = load i32, i32* @fqd_a, align 4
  %8 = load i32, i32* @fqd_sz, align 4
  %9 = call i32 @qm_set_memory(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load i32, i32* @qm_memory_pfdr, align 4
  %16 = load i32, i32* @pfdr_a, align 4
  %17 = load i32, i32* @pfdr_sz, align 4
  %18 = call i32 @qm_set_memory(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %61

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* @pfdr_sz, align 4
  %29 = sdiv i32 %28, 64
  %30 = sub nsw i32 %29, 8
  %31 = call i32 @qm_init_pfdr(%struct.device* %27, i32 8, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %61

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %23
  %38 = call i32 @qm_set_pfdr_threshold(i32 512, i32 64)
  %39 = call i32 @qm_set_sfdr_threshold(i32 128)
  %40 = load i32, i32* @REG_ERR_ISR, align 4
  %41 = load i32, i32* @QM_EIRQ_PEBI, align 4
  %42 = call i32 @qm_ccsr_out(i32 %40, i32 %41)
  %43 = call i32 (...) @qm_set_corenet_initiator()
  %44 = call i32 (...) @qm_set_hid()
  %45 = load i32, i32* @qm_wq_first, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %53, %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @qm_wq_last, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @qm_set_wq_scheduling(i32 %51, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %46

56:                                               ; preds = %46
  %57 = load i32, i32* @qm_dc_portal_fman0, align 4
  %58 = call i32 @qm_set_dc(i32 %57, i32 1, i32 0)
  %59 = load i32, i32* @qm_dc_portal_fman1, align 4
  %60 = call i32 @qm_set_dc(i32 %59, i32 1, i32 0)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %34, %21, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @qm_set_memory(i32, i32, i32) #1

declare dso_local i32 @qm_init_pfdr(%struct.device*, i32, i32) #1

declare dso_local i32 @qm_set_pfdr_threshold(i32, i32) #1

declare dso_local i32 @qm_set_sfdr_threshold(i32) #1

declare dso_local i32 @qm_ccsr_out(i32, i32) #1

declare dso_local i32 @qm_set_corenet_initiator(...) #1

declare dso_local i32 @qm_set_hid(...) #1

declare dso_local i32 @qm_set_wq_scheduling(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qm_set_dc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
