; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_hcb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_hcb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@bfa_ioim_sm_resfree = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*, i32)* @bfa_ioim_sm_hcb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_sm_hcb_free(%struct.bfa_ioim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(i32 %7, i32 %10)
  %12 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %43 [
    i32 129, label %18
    i32 130, label %32
    i32 131, label %36
    i32 128, label %39
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %20 = load i32, i32* @bfa_ioim_sm_resfree, align 4
  %21 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %19, i32 %20)
  %22 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %22, i32 0, i32 3
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %25, i32 0, i32 3
  %27 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %26, i32* %30)
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %34 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %35 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %33, i32 %34)
  br label %49

36:                                               ; preds = %2
  %37 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %38 = call i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s* %37)
  br label %49

39:                                               ; preds = %2
  %40 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %41 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %42 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %40, i32 %41)
  br label %49

43:                                               ; preds = %2
  %44 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @bfa_sm_fault(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %39, %36, %32, %18
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
