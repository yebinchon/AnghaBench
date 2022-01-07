; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_ci_role_to_usb_role.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_ci_role_to_usb_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i64, i64 }

@CI_ROLE_HOST = common dso_local global i64 0, align 8
@USB_ROLE_HOST = common dso_local global i32 0, align 4
@CI_ROLE_GADGET = common dso_local global i64 0, align 8
@USB_ROLE_DEVICE = common dso_local global i32 0, align 4
@USB_ROLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @ci_role_to_usb_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_role_to_usb_role(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CI_ROLE_HOST, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @USB_ROLE_HOST, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CI_ROLE_GADGET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %19 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @USB_ROLE_DEVICE, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %17, %11
  %25 = load i32, i32* @USB_ROLE_NONE, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
