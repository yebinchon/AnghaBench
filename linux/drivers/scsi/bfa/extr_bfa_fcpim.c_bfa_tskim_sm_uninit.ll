; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_sm_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_sm_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_tskim_s = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@bfa_tskim_sm_active = common dso_local global i32 0, align 4
@bfa_tskim_sm_iocleanup = common dso_local global i32 0, align 4
@BFI_TSKIM_STS_OK = common dso_local global i32 0, align 4
@bfa_tskim_sm_qfull = common dso_local global i32 0, align 4
@tm_qwait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_tskim_s*, i32)* @bfa_tskim_sm_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_tskim_sm_uninit(%struct.bfa_tskim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_tskim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_tskim_s* %0, %struct.bfa_tskim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @bfa_trc(i32 %7, i32 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %61 [
    i32 128, label %16
  ]

16:                                               ; preds = %2
  %17 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %18 = load i32, i32* @bfa_tskim_sm_active, align 4
  %19 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %17, i32 %18)
  %20 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %21 = call i32 @bfa_tskim_gather_ios(%struct.bfa_tskim_s* %20)
  %22 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @bfa_itnim_is_online(%struct.TYPE_3__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %16
  %28 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %29 = load i32, i32* @bfa_tskim_sm_iocleanup, align 4
  %30 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %28, i32 %29)
  %31 = load i32, i32* @BFI_TSKIM_STS_OK, align 4
  %32 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %35 = call i32 @bfa_tskim_cleanup_ios(%struct.bfa_tskim_s* %34)
  br label %67

36:                                               ; preds = %16
  %37 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %38 = call i32 @bfa_tskim_send(%struct.bfa_tskim_s* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %42 = load i32, i32* @bfa_tskim_sm_qfull, align 4
  %43 = call i32 @bfa_sm_set_state(%struct.bfa_tskim_s* %41, i32 %42)
  %44 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* @tm_qwait, align 4
  %48 = call i32 @bfa_stats(%struct.TYPE_3__* %46, i32 %47)
  %49 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %50 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %57, i32 0, i32 2
  %59 = call i32 @bfa_reqq_wait(i32 %51, i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %40, %36
  br label %67

61:                                               ; preds = %2
  %62 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @bfa_sm_fault(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %27, %61, %60
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_tskim_s*, i32) #1

declare dso_local i32 @bfa_tskim_gather_ios(%struct.bfa_tskim_s*) #1

declare dso_local i32 @bfa_itnim_is_online(%struct.TYPE_3__*) #1

declare dso_local i32 @bfa_tskim_cleanup_ios(%struct.bfa_tskim_s*) #1

declare dso_local i32 @bfa_tskim_send(%struct.bfa_tskim_s*) #1

declare dso_local i32 @bfa_stats(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
