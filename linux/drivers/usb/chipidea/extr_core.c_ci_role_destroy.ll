; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_role_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_role_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i64*, i64 }

@CI_ROLE_GADGET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*)* @ci_role_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_role_destroy(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %4 = call i32 @ci_hdrc_gadget_destroy(%struct.ci_hdrc* %3)
  %5 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %6 = call i32 @ci_hdrc_host_destroy(%struct.ci_hdrc* %5)
  %7 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %8 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @CI_ROLE_GADGET, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %21 = call i32 @ci_hdrc_otg_destroy(%struct.ci_hdrc* %20)
  br label %22

22:                                               ; preds = %19, %11, %1
  ret void
}

declare dso_local i32 @ci_hdrc_gadget_destroy(%struct.ci_hdrc*) #1

declare dso_local i32 @ci_hdrc_host_destroy(%struct.ci_hdrc*) #1

declare dso_local i32 @ci_hdrc_otg_destroy(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
