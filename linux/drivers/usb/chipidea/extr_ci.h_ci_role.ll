; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_ci_role.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_ci_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_role_driver = type { i32 }
%struct.ci_hdrc = type { i64, %struct.ci_role_driver** }

@CI_ROLE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ci_role_driver* (%struct.ci_hdrc*)* @ci_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ci_role_driver* @ci_role(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CI_ROLE_END, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %10 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %9, i32 0, i32 1
  %11 = load %struct.ci_role_driver**, %struct.ci_role_driver*** %10, align 8
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ci_role_driver*, %struct.ci_role_driver** %11, i64 %14
  %16 = load %struct.ci_role_driver*, %struct.ci_role_driver** %15, align 8
  %17 = icmp ne %struct.ci_role_driver* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %8, %1
  %20 = phi i1 [ true, %1 ], [ %18, %8 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %24 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %23, i32 0, i32 1
  %25 = load %struct.ci_role_driver**, %struct.ci_role_driver*** %24, align 8
  %26 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %27 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.ci_role_driver*, %struct.ci_role_driver** %25, i64 %28
  %30 = load %struct.ci_role_driver*, %struct.ci_role_driver** %29, align 8
  ret %struct.ci_role_driver* %30
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
