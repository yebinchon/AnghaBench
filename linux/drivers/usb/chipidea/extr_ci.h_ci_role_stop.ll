; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_ci_role_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_ci_role_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 (%struct.ci_hdrc*)* }

@CI_ROLE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*)* @ci_role_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_role_stop(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  %3 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CI_ROLE_END, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @CI_ROLE_END, align 4
  %13 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %14 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ci_hdrc*)*, i32 (%struct.ci_hdrc*)** %22, align 8
  %24 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %25 = call i32 %23(%struct.ci_hdrc* %24)
  br label %26

26:                                               ; preds = %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
