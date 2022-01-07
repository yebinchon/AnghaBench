; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_iotov_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_iotov_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@BFA_TRUE = common dso_local global i32 0, align 4
@bfa_itnim_iotov = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_itnim_s*)* @bfa_itnim_iotov_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_itnim_iotov_start(%struct.bfa_itnim_s* %0) #0 {
  %2 = alloca %struct.bfa_itnim_s*, align 8
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %2, align 8
  %3 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load i32, i32* @BFA_TRUE, align 4
  %11 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %14 = call i32 @bfa_itnim_hold_io(%struct.bfa_itnim_s* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %22, i32 0, i32 1
  %24 = load i32, i32* @bfa_itnim_iotov, align 4
  %25 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %26 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %27 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @bfa_timer_start(i32 %21, i32* %23, i32 %24, %struct.bfa_itnim_s* %25, i64 %30)
  br label %32

32:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_itnim_hold_io(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_itnim_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
