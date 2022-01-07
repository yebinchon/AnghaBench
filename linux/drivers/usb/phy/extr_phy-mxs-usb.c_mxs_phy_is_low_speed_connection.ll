; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_is_low_speed_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_is_low_speed_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_phy = type { i32, i32 }

@BM_ANADIG_USB1_MISC_RX_VPIN_FS = common dso_local global i32 0, align 4
@BM_ANADIG_USB1_MISC_RX_VMIN_FS = common dso_local global i32 0, align 4
@ANADIG_USB1_MISC = common dso_local global i32 0, align 4
@ANADIG_USB2_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_phy*)* @mxs_phy_is_low_speed_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_phy_is_low_speed_connection(%struct.mxs_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxs_phy* %0, %struct.mxs_phy** %3, align 8
  %8 = load i32, i32* @BM_ANADIG_USB1_MISC_RX_VPIN_FS, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @BM_ANADIG_USB1_MISC_RX_VMIN_FS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @ANADIG_USB1_MISC, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %12 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %18 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ANADIG_USB1_MISC, align 4
  store i32 %22, i32* %7, align 4
  br label %31

23:                                               ; preds = %16
  %24 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %25 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @ANADIG_USB2_MISC, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %33 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %4)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %46

45:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
