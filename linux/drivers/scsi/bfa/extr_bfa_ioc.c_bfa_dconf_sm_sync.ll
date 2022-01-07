; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dconf_mod_s = type { i32, i32 }

@bfa_dconf_sm_ready = common dso_local global i32 0, align 4
@bfa_dconf_timer = common dso_local global i32 0, align 4
@BFA_DCONF_UPDATE_TOV = common dso_local global i32 0, align 4
@bfa_dconf_sm_dirty = common dso_local global i32 0, align 4
@bfa_dconf_sm_final_sync = common dso_local global i32 0, align 4
@bfa_dconf_sm_iocdown_dirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dconf_mod_s*, i32)* @bfa_dconf_sm_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dconf_sm_sync(%struct.bfa_dconf_mod_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_dconf_mod_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_dconf_mod_s* %0, %struct.bfa_dconf_mod_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %45 [
    i32 130, label %11
    i32 128, label %15
    i32 131, label %28
    i32 129, label %41
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %13 = load i32, i32* @bfa_dconf_sm_ready, align 4
  %14 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %12, i32 %13)
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %19, i32 0, i32 1
  %21 = load i32, i32* @bfa_dconf_timer, align 4
  %22 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %23 = load i32, i32* @BFA_DCONF_UPDATE_TOV, align 4
  %24 = call i32 @bfa_timer_start(i32 %18, i32* %20, i32 %21, %struct.bfa_dconf_mod_s* %22, i32 %23)
  %25 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %26 = load i32, i32* @bfa_dconf_sm_dirty, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %25, i32 %26)
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %32, i32 0, i32 1
  %34 = load i32, i32* @bfa_dconf_timer, align 4
  %35 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %36 = load i32, i32* @BFA_DCONF_UPDATE_TOV, align 4
  %37 = call i32 @bfa_timer_start(i32 %31, i32* %33, i32 %34, %struct.bfa_dconf_mod_s* %35, i32 %36)
  %38 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %39 = load i32, i32* @bfa_dconf_sm_final_sync, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %38, i32 %39)
  br label %51

41:                                               ; preds = %2
  %42 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %43 = load i32, i32* @bfa_dconf_sm_iocdown_dirty, align 4
  %44 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %42, i32 %43)
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @bfa_sm_fault(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %41, %28, %15, %11
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
