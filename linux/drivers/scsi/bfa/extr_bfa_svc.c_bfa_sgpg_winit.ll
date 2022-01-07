; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_sgpg_winit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_sgpg_winit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sgpg_wqe_s = type { void (i8*)*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_sgpg_winit(%struct.bfa_sgpg_wqe_s* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.bfa_sgpg_wqe_s*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.bfa_sgpg_wqe_s* %0, %struct.bfa_sgpg_wqe_s** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %8 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %7, i32 0, i32 2
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load void (i8*)*, void (i8*)** %5, align 8
  %11 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %11, i32 0, i32 0
  store void (i8*)* %10, void (i8*)** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
