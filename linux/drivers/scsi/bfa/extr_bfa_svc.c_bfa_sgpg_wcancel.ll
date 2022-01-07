; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_sgpg_wcancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_sgpg_wcancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_sgpg_wqe_s = type { i64, i64, i32, i32 }
%struct.bfa_sgpg_mod_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_sgpg_wcancel(%struct.bfa_s* %0, %struct.bfa_sgpg_wqe_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfa_sgpg_wqe_s*, align 8
  %5 = alloca %struct.bfa_sgpg_mod_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfa_sgpg_wqe_s* %1, %struct.bfa_sgpg_wqe_s** %4, align 8
  %6 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %7 = call %struct.bfa_sgpg_mod_s* @BFA_SGPG_MOD(%struct.bfa_s* %6)
  store %struct.bfa_sgpg_mod_s* %7, %struct.bfa_sgpg_mod_s** %5, align 8
  %8 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %5, align 8
  %9 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %8, i32 0, i32 0
  %10 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %11 = call i32 @bfa_q_is_on_q(i32* %9, %struct.bfa_sgpg_wqe_s* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %17 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %16, i32 0, i32 3
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %28 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %28, i32 0, i32 2
  %30 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i32 @bfa_sgpg_mfree(%struct.bfa_s* %27, i32* %29, i64 %36)
  br label %38

38:                                               ; preds = %26, %2
  ret void
}

declare dso_local %struct.bfa_sgpg_mod_s* @BFA_SGPG_MOD(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_q_is_on_q(i32*, %struct.bfa_sgpg_wqe_s*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @bfa_sgpg_mfree(%struct.bfa_s*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
