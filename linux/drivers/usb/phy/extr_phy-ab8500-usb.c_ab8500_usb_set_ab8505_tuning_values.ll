; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_set_ab8505_tuning_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_set_ab8505_tuning_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i32 }

@AB8500_DEVELOPMENT = common dso_local global i32 0, align 4
@AB8500_BANK12_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to enable bank12 access err=%d\0A\00", align 1
@AB8500_DEBUG = common dso_local global i32 0, align 4
@AB8500_USB_PHY_TUNE1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to set PHY_TUNE1 register err=%d\0A\00", align 1
@AB8500_USB_PHY_TUNE2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to set PHY_TUNE2 register err=%d\0A\00", align 1
@AB8500_USB_PHY_TUNE3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to set PHY_TUNE3 register err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to switch bank12 access err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_usb*)* @ab8500_usb_set_ab8505_tuning_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_usb_set_ab8505_tuning_values(%struct.ab8500_usb* %0) #0 {
  %2 = alloca %struct.ab8500_usb*, align 8
  %3 = alloca i32, align 4
  store %struct.ab8500_usb* %0, %struct.ab8500_usb** %2, align 8
  %4 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %5 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AB8500_DEVELOPMENT, align 4
  %8 = load i32, i32* @AB8500_BANK12_ACCESS, align 4
  %9 = call i32 @abx500_mask_and_set_register_interruptible(i32 %6, i32 %7, i32 %8, i32 1, i32 1)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %14 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %20 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AB8500_DEBUG, align 4
  %23 = load i32, i32* @AB8500_USB_PHY_TUNE1, align 4
  %24 = call i32 @abx500_mask_and_set_register_interruptible(i32 %21, i32 %22, i32 %23, i32 200, i32 200)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %29 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %18
  %34 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %35 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AB8500_DEBUG, align 4
  %38 = load i32, i32* @AB8500_USB_PHY_TUNE2, align 4
  %39 = call i32 @abx500_mask_and_set_register_interruptible(i32 %36, i32 %37, i32 %38, i32 96, i32 96)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %44 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %33
  %49 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %50 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AB8500_DEBUG, align 4
  %53 = load i32, i32* @AB8500_USB_PHY_TUNE3, align 4
  %54 = call i32 @abx500_mask_and_set_register_interruptible(i32 %51, i32 %52, i32 %53, i32 252, i32 128)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %59 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %48
  %64 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %65 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AB8500_DEVELOPMENT, align 4
  %68 = load i32, i32* @AB8500_BANK12_ACCESS, align 4
  %69 = call i32 @abx500_mask_and_set_register_interruptible(i32 %66, i32 %67, i32 %68, i32 0, i32 0)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %74 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %63
  ret void
}

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
