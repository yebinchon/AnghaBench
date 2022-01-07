; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_isr_bscn_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_isr_bscn_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bm_portal*)* @bm_isr_bscn_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bm_isr_bscn_disable(%struct.bm_portal* %0) #0 {
  %2 = alloca %struct.bm_portal*, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %2, align 8
  %3 = load %struct.bm_portal*, %struct.bm_portal** %2, align 8
  %4 = call i32 @BM_REG_SCN(i32 0)
  %5 = call i32 @bm_out(%struct.bm_portal* %3, i32 %4, i32 0)
  %6 = load %struct.bm_portal*, %struct.bm_portal** %2, align 8
  %7 = call i32 @BM_REG_SCN(i32 1)
  %8 = call i32 @bm_out(%struct.bm_portal* %6, i32 %7, i32 0)
  ret void
}

declare dso_local i32 @bm_out(%struct.bm_portal*, i32, i32) #1

declare dso_local i32 @BM_REG_SCN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
