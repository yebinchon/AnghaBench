; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_comp_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_comp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.list_head = type { i32 }
%struct.bfa_cb_qe_s = type { i32, i32 (i32, i32)*, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_comp_free(%struct.bfa_s* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.bfa_cb_qe_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  br label %7

7:                                                ; preds = %12, %2
  %8 = load %struct.list_head*, %struct.list_head** %4, align 8
  %9 = call i32 @list_empty(%struct.list_head* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.list_head*, %struct.list_head** %4, align 8
  %14 = call i32 @bfa_q_deq(%struct.list_head* %13, %struct.list_head** %5)
  %15 = load %struct.list_head*, %struct.list_head** %5, align 8
  %16 = bitcast %struct.list_head* %15 to %struct.bfa_cb_qe_s*
  store %struct.bfa_cb_qe_s* %16, %struct.bfa_cb_qe_s** %6, align 8
  %17 = load %struct.bfa_cb_qe_s*, %struct.bfa_cb_qe_s** %6, align 8
  %18 = getelementptr inbounds %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.bfa_cb_qe_s*, %struct.bfa_cb_qe_s** %6, align 8
  %22 = getelementptr inbounds %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s* %21, i32 0, i32 1
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = load %struct.bfa_cb_qe_s*, %struct.bfa_cb_qe_s** %6, align 8
  %25 = getelementptr inbounds %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BFA_FALSE, align 4
  %28 = call i32 %23(i32 %26, i32 %27)
  br label %7

29:                                               ; preds = %7
  ret void
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @bfa_q_deq(%struct.list_head*, %struct.list_head**) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
