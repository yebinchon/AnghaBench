; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_sm_fwcreate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_sm_fwcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_itnim_sm_online = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@bfa_itnim_sm_delete_pending = common dso_local global i32 0, align 4
@bfa_itnim_sm_fwdelete = common dso_local global i32 0, align 4
@bfa_itnim_sm_fwdelete_qfull = common dso_local global i32 0, align 4
@bfa_itnim_sm_iocdisable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_itnim_s*, i32)* @bfa_itnim_sm_fwcreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_itnim_sm_fwcreate(%struct.bfa_itnim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_itnim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %8, i32 0, i32 2
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
  switch i32 %19, label %52 [
    i32 130, label %20
    i32 131, label %31
    i32 128, label %35
    i32 129, label %48
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %22 = load i32, i32* @bfa_itnim_sm_online, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %21, i32 %22)
  %24 = load i32, i32* @BFA_TRUE, align 4
  %25 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %28 = call i32 @bfa_itnim_iotov_online(%struct.bfa_itnim_s* %27)
  %29 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %30 = call i32 @bfa_itnim_online_cb(%struct.bfa_itnim_s* %29)
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %33 = load i32, i32* @bfa_itnim_sm_delete_pending, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %32, i32 %33)
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %37 = call i32 @bfa_itnim_send_fwdelete(%struct.bfa_itnim_s* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %41 = load i32, i32* @bfa_itnim_sm_fwdelete, align 4
  %42 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %40, i32 %41)
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %45 = load i32, i32* @bfa_itnim_sm_fwdelete_qfull, align 4
  %46 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %58

48:                                               ; preds = %2
  %49 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %50 = load i32, i32* @bfa_itnim_sm_iocdisable, align 4
  %51 = call i32 @bfa_sm_set_state(%struct.bfa_itnim_s* %49, i32 %50)
  br label %58

52:                                               ; preds = %2
  %53 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @bfa_sm_fault(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %48, %47, %31, %20
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_itnim_s*, i32) #1

declare dso_local i32 @bfa_itnim_iotov_online(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_itnim_online_cb(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_itnim_send_fwdelete(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
