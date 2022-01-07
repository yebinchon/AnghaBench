; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_ci_role_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_ci_role_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 (%struct.ci_hdrc*)* }

@CI_ROLE_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*, i32)* @ci_role_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_role_start(%struct.ci_hdrc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ci_hdrc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @CI_ROLE_END, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %15 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %13
  %26 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %27 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ci_hdrc*)*, i32 (%struct.ci_hdrc*)** %33, align 8
  %35 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %36 = call i32 %34(%struct.ci_hdrc* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %42 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %22, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
