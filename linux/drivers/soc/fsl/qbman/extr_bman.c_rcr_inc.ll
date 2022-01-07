; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_rcr_inc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_rcr_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_rcr = type { i32, %struct.bm_rcr_entry* }
%struct.bm_rcr_entry = type { i32 }

@BM_RCR_VERB_VBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bm_rcr*)* @rcr_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcr_inc(%struct.bm_rcr* %0) #0 {
  %2 = alloca %struct.bm_rcr*, align 8
  %3 = alloca %struct.bm_rcr_entry*, align 8
  store %struct.bm_rcr* %0, %struct.bm_rcr** %2, align 8
  %4 = load %struct.bm_rcr*, %struct.bm_rcr** %2, align 8
  %5 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %4, i32 0, i32 1
  %6 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %5, align 8
  %7 = getelementptr inbounds %struct.bm_rcr_entry, %struct.bm_rcr_entry* %6, i64 1
  store %struct.bm_rcr_entry* %7, %struct.bm_rcr_entry** %3, align 8
  %8 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %3, align 8
  %9 = call %struct.bm_rcr_entry* @rcr_carryclear(%struct.bm_rcr_entry* %8)
  %10 = load %struct.bm_rcr*, %struct.bm_rcr** %2, align 8
  %11 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %10, i32 0, i32 1
  store %struct.bm_rcr_entry* %9, %struct.bm_rcr_entry** %11, align 8
  %12 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %3, align 8
  %13 = load %struct.bm_rcr*, %struct.bm_rcr** %2, align 8
  %14 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %13, i32 0, i32 1
  %15 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %14, align 8
  %16 = icmp ne %struct.bm_rcr_entry* %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @BM_RCR_VERB_VBIT, align 4
  %19 = load %struct.bm_rcr*, %struct.bm_rcr** %2, align 8
  %20 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.bm_rcr_entry* @rcr_carryclear(%struct.bm_rcr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
