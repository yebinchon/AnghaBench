; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_down_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_down_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lkb*)* @down_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @down_conversion(%struct.dlm_lkb* %0) #0 {
  %2 = alloca %struct.dlm_lkb*, align 8
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %2, align 8
  %3 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %4 = call i32 @middle_conversion(%struct.dlm_lkb* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %8 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.dlm_lkb*, %struct.dlm_lkb** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi i1 [ false, %1 ], [ %13, %6 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @middle_conversion(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
