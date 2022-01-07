; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c__qm_dqrr_consume_and_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c__qm_dqrr_consume_and_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { i32 }
%struct.qm_dqrr_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*, i64, i32, i32)* @_qm_dqrr_consume_and_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_qm_dqrr_consume_and_match(%struct.qm_portal* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qm_portal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qm_dqrr_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.qm_portal* %0, %struct.qm_portal** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %28, %4
  %12 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %13 = call i32 @qm_dqrr_pvb_update(%struct.qm_portal* %12)
  %14 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %15 = call %struct.qm_dqrr_entry* @qm_dqrr_current(%struct.qm_portal* %14)
  store %struct.qm_dqrr_entry* %15, %struct.qm_dqrr_entry** %9, align 8
  %16 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %17 = icmp ne %struct.qm_dqrr_entry* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = call i32 (...) @cpu_relax()
  br label %20

20:                                               ; preds = %18, %11
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %26 = icmp ne %struct.qm_dqrr_entry* %25, null
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %11, label %30

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %47, %30
  %32 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %33 = icmp ne %struct.qm_dqrr_entry* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %36 = call i64 @qm_fqid_get(%struct.qm_dqrr_entry* %35)
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %41 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %39, %34
  %48 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %49 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %50 = call i32 @qm_dqrr_cdc_consume_1ptr(%struct.qm_portal* %48, %struct.qm_dqrr_entry* %49, i32 0)
  %51 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %52 = call i32 @qm_dqrr_pvb_update(%struct.qm_portal* %51)
  %53 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %54 = call i32 @qm_dqrr_next(%struct.qm_portal* %53)
  %55 = load %struct.qm_portal*, %struct.qm_portal** %5, align 8
  %56 = call %struct.qm_dqrr_entry* @qm_dqrr_current(%struct.qm_portal* %55)
  store %struct.qm_dqrr_entry* %56, %struct.qm_dqrr_entry** %9, align 8
  br label %31

57:                                               ; preds = %31
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i32 @qm_dqrr_pvb_update(%struct.qm_portal*) #1

declare dso_local %struct.qm_dqrr_entry* @qm_dqrr_current(%struct.qm_portal*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @qm_fqid_get(%struct.qm_dqrr_entry*) #1

declare dso_local i32 @qm_dqrr_cdc_consume_1ptr(%struct.qm_portal*, %struct.qm_dqrr_entry*, i32) #1

declare dso_local i32 @qm_dqrr_next(%struct.qm_portal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
