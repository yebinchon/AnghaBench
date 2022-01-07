; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_sm_qfull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_sm_qfull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_tskim_s = type { i32, i32, i32 }

@bfa_tskim_sm_active = common dso_local global i32 0, align 4
@bfa_tskim_sm_iocleanup = common dso_local global i32 0, align 4
@bfa_tskim_sm_hcb = common dso_local global i32 0, align 4
@__bfa_cb_tskim_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_tskim_s*, i32)* @bfa_tskim_sm_qfull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_tskim_sm_qfull(%struct.bfa_tskim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_tskim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_tskim_s* %0, %struct.bfa_tskim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @bfa_trc(i32 %7, i32 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %43 [
    i32 128, label %16
    i32 130, label %22
    i32 129, label %31
  ]

16:                                               ; preds = %2
  %17 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %18 = load i32, i32* @bfa_tskim_sm_active, align 4
  %19 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %17, i32 %18)
  %20 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %21 = call i32 @bfa_tskim_send(%struct.bfa_tskim_s* %20)
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %24 = load i32, i32* @bfa_tskim_sm_iocleanup, align 4
  %25 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %23, i32 %24)
  %26 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %26, i32 0, i32 2
  %28 = call i32 @bfa_reqq_wcancel(i32* %27)
  %29 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %30 = call i32 @bfa_tskim_cleanup_ios(%struct.bfa_tskim_s* %29)
  br label %49

31:                                               ; preds = %2
  %32 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %33 = load i32, i32* @bfa_tskim_sm_hcb, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %32, i32 %33)
  %35 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %35, i32 0, i32 2
  %37 = call i32 @bfa_reqq_wcancel(i32* %36)
  %38 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %39 = call i32 @bfa_tskim_iocdisable_ios(%struct.bfa_tskim_s* %38)
  %40 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %41 = load i32, i32* @__bfa_cb_tskim_failed, align 4
  %42 = call i32 @bfa_tskim_qcomp(%struct.bfa_tskim_s* %40, i32 %41)
  br label %49

43:                                               ; preds = %2
  %44 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @bfa_sm_fault(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %31, %22, %16
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_tskim_s*, i32) #1

declare dso_local i32 @bfa_tskim_send(%struct.bfa_tskim_s*) #1

declare dso_local i32 @bfa_reqq_wcancel(i32*) #1

declare dso_local i32 @bfa_tskim_cleanup_ios(%struct.bfa_tskim_s*) #1

declare dso_local i32 @bfa_tskim_iocdisable_ios(%struct.bfa_tskim_s*) #1

declare dso_local i32 @bfa_tskim_qcomp(%struct.bfa_tskim_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
