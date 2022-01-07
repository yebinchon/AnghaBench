; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_host.c_ci_hdrc_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_host.c_ci_hdrc_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.ci_role_driver**, i32 }
%struct.ci_role_driver = type { i8*, i32, i32, i32 }

@CAP_DCCPARAMS = common dso_local global i32 0, align 4
@DCCPARAMS_HC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@host_start = common dso_local global i32 0, align 4
@host_stop = common dso_local global i32 0, align 4
@host_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@CI_ROLE_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_hdrc_host_init(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca %struct.ci_role_driver*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %5 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %6 = load i32, i32* @CAP_DCCPARAMS, align 4
  %7 = load i32, i32* @DCCPARAMS_HC, align 4
  %8 = call i32 @hw_read(%struct.ci_hdrc* %5, i32 %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %15 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ci_role_driver* @devm_kzalloc(i32 %16, i32 24, i32 %17)
  store %struct.ci_role_driver* %18, %struct.ci_role_driver** %4, align 8
  %19 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %20 = icmp ne %struct.ci_role_driver* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %13
  %25 = load i32, i32* @host_start, align 4
  %26 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %27 = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @host_stop, align 4
  %29 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %30 = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @host_irq, align 4
  %32 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %33 = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %35 = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %38 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %37, i32 0, i32 0
  %39 = load %struct.ci_role_driver**, %struct.ci_role_driver*** %38, align 8
  %40 = load i64, i64* @CI_ROLE_HOST, align 8
  %41 = getelementptr inbounds %struct.ci_role_driver*, %struct.ci_role_driver** %39, i64 %40
  store %struct.ci_role_driver* %36, %struct.ci_role_driver** %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %24, %21, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local %struct.ci_role_driver* @devm_kzalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
