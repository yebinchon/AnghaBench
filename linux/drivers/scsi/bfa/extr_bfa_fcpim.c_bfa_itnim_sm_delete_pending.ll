; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_sm_delete_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_sm_delete_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_itnim_sm_deleting = common dso_local global i32 0, align 4
@bfa_itnim_sm_deleting_qfull = common dso_local global i32 0, align 4
@bfa_itnim_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_itnim_s*, i32)* @bfa_itnim_sm_delete_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_itnim_sm_delete_pending(%struct.bfa_itnim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_itnim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(i32 %7, i32 %12)
  %14 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_trc(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %39 [
    i32 129, label %20
    i32 128, label %33
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %22 = call i32 @bfa_itnim_send_fwdelete(%struct.bfa_itnim_s* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %26 = load i32, i32* @bfa_itnim_sm_deleting, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %25, i32 %26)
  br label %32

28:                                               ; preds = %20
  %29 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %30 = load i32, i32* @bfa_itnim_sm_deleting_qfull, align 4
  %31 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  br label %45

33:                                               ; preds = %2
  %34 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %35 = load i32, i32* @bfa_itnim_sm_uninit, align 4
  %36 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %34, i32 %35)
  %37 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %38 = call i32 @bfa_fcpim_delitn(%struct.bfa_itnim_s* %37)
  br label %45

39:                                               ; preds = %2
  %40 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @bfa_sm_fault(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %33, %32
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_itnim_send_fwdelete(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_itnim_s*, i32) #1

declare dso_local i32 @bfa_fcpim_delitn(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
