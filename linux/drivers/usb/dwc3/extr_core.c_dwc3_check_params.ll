; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_check_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i64, i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Interrupt moderation not supported\0A\00", align 1
@DWC3_REVISION_300A = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid maximum_speed parameter %d\0A\00", align 1
@DWC3_GHWPARAMS3_SSPHY_IFC_GEN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_check_params(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 4
  %6 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %13 = call i32 @dwc3_has_imod(%struct.dwc3* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 4
  %18 = load %struct.device*, %struct.device** %17, align 8
  %19 = call i32 @dev_warn(%struct.device* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %21 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %15, %11, %1
  %23 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %29 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DWC3_REVISION_300A, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %35 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %27, %22
  %37 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %41 [
    i32 131, label %40
    i32 133, label %40
    i32 132, label %40
    i32 130, label %40
    i32 129, label %40
    i32 128, label %47
  ]

40:                                               ; preds = %36, %36, %36, %36, %36
  br label %65

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %44 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %36, %41
  %48 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %49 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %48, i32 0, i32 2
  store i32 130, i32* %49, align 8
  %50 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %51 = call i32 @dwc3_is_usb31(%struct.dwc3* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %55 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DWC3_GHWPARAMS3_SSPHY_IFC(i32 %57)
  %59 = load i32, i32* @DWC3_GHWPARAMS3_SSPHY_IFC_GEN2, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 2
  store i32 129, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %53, %47
  br label %65

65:                                               ; preds = %64, %40
  ret void
}

declare dso_local i32 @dwc3_has_imod(%struct.dwc3*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dwc3_is_usb31(%struct.dwc3*) #1

declare dso_local i32 @DWC3_GHWPARAMS3_SSPHY_IFC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
