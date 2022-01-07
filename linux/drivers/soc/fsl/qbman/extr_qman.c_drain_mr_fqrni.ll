; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_drain_mr_fqrni.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_drain_mr_fqrni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { i32 }
%union.qm_mr_entry = type { i32 }

@QM_MR_VERB_TYPE_MASK = common dso_local global i32 0, align 4
@QM_MR_VERB_FQRNI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Found verb 0x%x in MR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*)* @drain_mr_fqrni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drain_mr_fqrni(%struct.qm_portal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca %union.qm_mr_entry*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  br label %5

5:                                                ; preds = %35, %1
  %6 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %7 = call i32 @qm_mr_pvb_update(%struct.qm_portal* %6)
  %8 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %9 = call %union.qm_mr_entry* @qm_mr_current(%struct.qm_portal* %8)
  store %union.qm_mr_entry* %9, %union.qm_mr_entry** %4, align 8
  %10 = load %union.qm_mr_entry*, %union.qm_mr_entry** %4, align 8
  %11 = icmp ne %union.qm_mr_entry* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = call i32 @mdelay(i32 1)
  %14 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %15 = call i32 @qm_mr_pvb_update(%struct.qm_portal* %14)
  %16 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %17 = call %union.qm_mr_entry* @qm_mr_current(%struct.qm_portal* %16)
  store %union.qm_mr_entry* %17, %union.qm_mr_entry** %4, align 8
  %18 = load %union.qm_mr_entry*, %union.qm_mr_entry** %4, align 8
  %19 = icmp ne %union.qm_mr_entry* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %40

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %5
  %23 = load %union.qm_mr_entry*, %union.qm_mr_entry** %4, align 8
  %24 = bitcast %union.qm_mr_entry* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QM_MR_VERB_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @QM_MR_VERB_FQRNI, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %union.qm_mr_entry*, %union.qm_mr_entry** %4, align 8
  %32 = bitcast %union.qm_mr_entry* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %2, align 4
  br label %40

35:                                               ; preds = %22
  %36 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %37 = call i32 @qm_mr_next(%struct.qm_portal* %36)
  %38 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %39 = call i32 @qm_mr_cci_consume(%struct.qm_portal* %38, i32 1)
  br label %5

40:                                               ; preds = %30, %20
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @qm_mr_pvb_update(%struct.qm_portal*) #1

declare dso_local %union.qm_mr_entry* @qm_mr_current(%struct.qm_portal*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qm_mr_next(%struct.qm_portal*) #1

declare dso_local i32 @qm_mr_cci_consume(%struct.qm_portal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
