; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_sgpg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_sgpg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_sgpg_wqe_s = type { i32, i32, i32, i32 }
%struct.bfa_sgpg_mod_s = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_sgpg_wait(%struct.bfa_s* %0, %struct.bfa_sgpg_wqe_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_s*, align 8
  %5 = alloca %struct.bfa_sgpg_wqe_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_sgpg_mod_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %4, align 8
  store %struct.bfa_sgpg_wqe_s* %1, %struct.bfa_sgpg_wqe_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %9 = call %struct.bfa_sgpg_mod_s* @BFA_SGPG_MOD(%struct.bfa_s* %8)
  store %struct.bfa_sgpg_mod_s* %9, %struct.bfa_sgpg_mod_s** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %16 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %27 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %3
  %31 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %32 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %31, i32 0, i32 1
  %33 = call i32 @list_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %39 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %38, i32 0, i32 2
  %40 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %40, i32 0, i32 3
  %42 = call i32 @list_splice_tail_init(i32* %39, i32* %41)
  %43 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %44 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %51 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %30, %3
  %53 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %53, i32 0, i32 2
  %55 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %56 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %55, i32 0, i32 1
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  ret void
}

declare dso_local %struct.bfa_sgpg_mod_s* @BFA_SGPG_MOD(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
