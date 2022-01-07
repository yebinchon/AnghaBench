; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_is_reservation_holder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_is_reservation_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_pr_registration = type { i32 }

@PR_TYPE_WRITE_EXCLUSIVE_ALLREG = common dso_local global i32 0, align 4
@PR_TYPE_EXCLUSIVE_ACCESS_ALLREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t10_pr_registration*, %struct.t10_pr_registration*)* @is_reservation_holder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_reservation_holder(%struct.t10_pr_registration* %0, %struct.t10_pr_registration* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t10_pr_registration*, align 8
  %5 = alloca %struct.t10_pr_registration*, align 8
  %6 = alloca i32, align 4
  store %struct.t10_pr_registration* %0, %struct.t10_pr_registration** %4, align 8
  store %struct.t10_pr_registration* %1, %struct.t10_pr_registration** %5, align 8
  %7 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %4, align 8
  %8 = icmp ne %struct.t10_pr_registration* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %4, align 8
  %11 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %4, align 8
  %14 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %15 = icmp eq %struct.t10_pr_registration* %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PR_TYPE_WRITE_EXCLUSIVE_ALLREG, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PR_TYPE_EXCLUSIVE_ACCESS_ALLREG, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16, %9
  %25 = phi i1 [ true, %16 ], [ true, %9 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
