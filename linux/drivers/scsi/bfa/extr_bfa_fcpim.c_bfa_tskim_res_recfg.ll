; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_res_recfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_res_recfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_fcpim_s = type { i32, i32, i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_tskim_res_recfg(%struct.bfa_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fcpim_s*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %9 = call %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s* %8)
  store %struct.bfa_fcpim_s* %9, %struct.bfa_fcpim_s** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %10
  %19 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %19, i32 0, i32 2
  %21 = call i32 @bfa_q_deq_tail(i32* %20, %struct.list_head** %6)
  %22 = load %struct.list_head*, %struct.list_head** %6, align 8
  %23 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail(%struct.list_head* %22, i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %10

29:                                               ; preds = %10
  ret void
}

declare dso_local %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s*) #1

declare dso_local i32 @bfa_q_deq_tail(i32*, %struct.list_head**) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
