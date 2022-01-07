; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_idle_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_idle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { %struct.cdns3_role_driver**, i32 }
%struct.cdns3_role_driver = type { i8*, i32*, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cdns3_idle_role_start = common dso_local global i32 0, align 4
@cdns3_idle_role_stop = common dso_local global i32 0, align 4
@CDNS3_ROLE_STATE_INACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@USB_ROLE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3*)* @cdns3_idle_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_idle_init(%struct.cdns3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3*, align 8
  %4 = alloca %struct.cdns3_role_driver*, align 8
  store %struct.cdns3* %0, %struct.cdns3** %3, align 8
  %5 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %6 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cdns3_role_driver* @devm_kzalloc(i32 %7, i32 40, i32 %8)
  store %struct.cdns3_role_driver* %9, %struct.cdns3_role_driver** %4, align 8
  %10 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %4, align 8
  %11 = icmp ne %struct.cdns3_role_driver* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load i32, i32* @cdns3_idle_role_start, align 4
  %17 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %4, align 8
  %18 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @cdns3_idle_role_stop, align 4
  %20 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %4, align 8
  %21 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @CDNS3_ROLE_STATE_INACTIVE, align 4
  %23 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %4, align 8
  %24 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %4, align 8
  %26 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %4, align 8
  %28 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %4, align 8
  %30 = getelementptr inbounds %struct.cdns3_role_driver, %struct.cdns3_role_driver* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = load %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %4, align 8
  %32 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %33 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %32, i32 0, i32 0
  %34 = load %struct.cdns3_role_driver**, %struct.cdns3_role_driver*** %33, align 8
  %35 = load i64, i64* @USB_ROLE_NONE, align 8
  %36 = getelementptr inbounds %struct.cdns3_role_driver*, %struct.cdns3_role_driver** %34, i64 %35
  store %struct.cdns3_role_driver* %31, %struct.cdns3_role_driver** %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %15, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.cdns3_role_driver* @devm_kzalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
