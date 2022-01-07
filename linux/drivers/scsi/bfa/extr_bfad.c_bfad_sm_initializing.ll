; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_sm_initializing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_sm_initializing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32* }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@bfad_sm_failed = common dso_local global i32 0, align 4
@bfad_sm_operational = common dso_local global i32 0, align 4
@bfad_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfad_s*, i32)* @bfad_sm_initializing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_sm_initializing(%struct.bfad_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(%struct.bfad_s* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %61 [
    i32 128, label %11
    i32 129, label %39
    i32 130, label %57
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kthread_stop(i32* %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %27 = call i32 @bfad_start_ops(%struct.bfad_s* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BFA_STATUS_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %11
  %32 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %33 = load i32, i32* @bfad_sm_failed, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfad_s* %32, i32 %33)
  br label %65

35:                                               ; preds = %11
  %36 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %37 = load i32, i32* @bfad_sm_operational, align 4
  %38 = call i32 @bfa_sm_set_state(%struct.bfad_s* %36, i32 %37)
  br label %65

39:                                               ; preds = %2
  %40 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %41 = load i32, i32* @bfad_sm_uninit, align 4
  %42 = call i32 @bfa_sm_set_state(%struct.bfad_s* %40, i32 %41)
  %43 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kthread_stop(i32* %45)
  %47 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %65

57:                                               ; preds = %2
  %58 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %59 = load i32, i32* @bfad_sm_failed, align 4
  %60 = call i32 @bfa_sm_set_state(%struct.bfad_s* %58, i32 %59)
  br label %65

61:                                               ; preds = %2
  %62 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @bfa_sm_fault(%struct.bfad_s* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %57, %39, %35, %31
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfad_start_ops(%struct.bfad_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfad_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfad_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
