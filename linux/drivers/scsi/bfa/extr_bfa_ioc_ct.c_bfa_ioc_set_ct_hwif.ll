; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_set_ct_hwif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_set_ct_hwif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.bfa_ioc_s = type { %struct.TYPE_3__* }

@hwif_ct = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@bfa_ioc_ct_pll_init = common dso_local global i32 0, align 4
@bfa_ioc_ct_reg_init = common dso_local global i32 0, align 4
@bfa_ioc_ct_map_port = common dso_local global i32 0, align 4
@bfa_ioc_ct_isr_mode_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_set_ct_hwif(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %3 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %4 = call i32 @bfa_ioc_set_ctx_hwif(%struct.bfa_ioc_s* %3, %struct.TYPE_3__* @hwif_ct)
  %5 = load i32, i32* @bfa_ioc_ct_pll_init, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hwif_ct, i32 0, i32 3), align 4
  %6 = load i32, i32* @bfa_ioc_ct_reg_init, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hwif_ct, i32 0, i32 2), align 4
  %7 = load i32, i32* @bfa_ioc_ct_map_port, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hwif_ct, i32 0, i32 1), align 4
  %8 = load i32, i32* @bfa_ioc_ct_isr_mode_set, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hwif_ct, i32 0, i32 0), align 4
  %9 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %9, i32 0, i32 0
  store %struct.TYPE_3__* @hwif_ct, %struct.TYPE_3__** %10, align 8
  ret void
}

declare dso_local i32 @bfa_ioc_set_ctx_hwif(%struct.bfa_ioc_s*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
