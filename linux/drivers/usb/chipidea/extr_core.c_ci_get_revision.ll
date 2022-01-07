; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_get_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_get_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }

@ID_ID = common dso_local global i32 0, align 4
@VERSION = common dso_local global i32 0, align 4
@CI_REVISION_UNKNOWN = common dso_local global i32 0, align 4
@REVISION = common dso_local global i32 0, align 4
@CI_REVISION_20 = common dso_local global i64 0, align 8
@CI_REVISION_1X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @ci_get_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_get_revision(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %5 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %6 = load i32, i32* @ID_ID, align 4
  %7 = load i32, i32* @VERSION, align 4
  %8 = call i32 @hw_read_id_reg(%struct.ci_hdrc* %5, i32 %6, i32 %7)
  %9 = load i32, i32* @VERSION, align 4
  %10 = call i32 @__ffs(i32 %9)
  %11 = ashr i32 %8, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @CI_REVISION_UNKNOWN, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %17 = load i32, i32* @ID_ID, align 4
  %18 = load i32, i32* @REVISION, align 4
  %19 = call i32 @hw_read_id_reg(%struct.ci_hdrc* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @REVISION, align 4
  %21 = call i32 @__ffs(i32 %20)
  %22 = ashr i32 %19, %21
  store i32 %22, i32* %4, align 4
  %23 = load i64, i64* @CI_REVISION_20, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @CI_REVISION_1X, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @hw_read_id_reg(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
