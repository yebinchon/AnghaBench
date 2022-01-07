; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c__qm_mr_consume_and_match_verb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c__qm_mr_consume_and_match_verb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { i32 }
%union.qm_mr_entry = type { i32 }

@QM_MR_VERB_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*, i32)* @_qm_mr_consume_and_match_verb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_qm_mr_consume_and_match_verb(%struct.qm_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.qm_mr_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %8 = call i32 @qm_mr_pvb_update(%struct.qm_portal* %7)
  %9 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %10 = call %union.qm_mr_entry* @qm_mr_current(%struct.qm_portal* %9)
  store %union.qm_mr_entry* %10, %union.qm_mr_entry** %5, align 8
  br label %11

11:                                               ; preds = %23, %2
  %12 = load %union.qm_mr_entry*, %union.qm_mr_entry** %5, align 8
  %13 = icmp ne %union.qm_mr_entry* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load %union.qm_mr_entry*, %union.qm_mr_entry** %5, align 8
  %16 = bitcast %union.qm_mr_entry* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QM_MR_VERB_TYPE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %14
  %24 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %25 = call i32 @qm_mr_next(%struct.qm_portal* %24)
  %26 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %27 = call i32 @qm_mr_cci_consume_to_current(%struct.qm_portal* %26)
  %28 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %29 = call i32 @qm_mr_pvb_update(%struct.qm_portal* %28)
  %30 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %31 = call %union.qm_mr_entry* @qm_mr_current(%struct.qm_portal* %30)
  store %union.qm_mr_entry* %31, %union.qm_mr_entry** %5, align 8
  br label %11

32:                                               ; preds = %11
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @qm_mr_pvb_update(%struct.qm_portal*) #1

declare dso_local %union.qm_mr_entry* @qm_mr_current(%struct.qm_portal*) #1

declare dso_local i32 @qm_mr_next(%struct.qm_portal*) #1

declare dso_local i32 @qm_mr_cci_consume_to_current(%struct.qm_portal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
