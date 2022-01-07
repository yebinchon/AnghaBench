; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_otg_ulpi_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_otg_ulpi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i8*, i32, i32, %struct.usb_otg*, %struct.usb_phy_io_ops* }
%struct.usb_otg = type { i32, i32, %struct.usb_phy* }
%struct.usb_phy_io_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ULPI\00", align 1
@ulpi_init = common dso_local global i32 0, align 4
@ulpi_set_host = common dso_local global i32 0, align 4
@ulpi_set_vbus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_phy* @otg_ulpi_create(%struct.usb_phy_io_ops* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca %struct.usb_phy_io_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_phy*, align 8
  %7 = alloca %struct.usb_otg*, align 8
  store %struct.usb_phy_io_ops* %0, %struct.usb_phy_io_ops** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 32, i32 %8)
  %10 = bitcast i8* %9 to %struct.usb_phy*
  store %struct.usb_phy* %10, %struct.usb_phy** %6, align 8
  %11 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %12 = icmp ne %struct.usb_phy* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.usb_phy* null, %struct.usb_phy** %3, align 8
  br label %48

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 16, i32 %15)
  %17 = bitcast i8* %16 to %struct.usb_otg*
  store %struct.usb_otg* %17, %struct.usb_otg** %7, align 8
  %18 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %19 = icmp ne %struct.usb_otg* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %22 = call i32 @kfree(%struct.usb_phy* %21)
  store %struct.usb_phy* null, %struct.usb_phy** %3, align 8
  br label %48

23:                                               ; preds = %14
  %24 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %25 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %28 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.usb_phy_io_ops*, %struct.usb_phy_io_ops** %4, align 8
  %30 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %31 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %30, i32 0, i32 4
  store %struct.usb_phy_io_ops* %29, %struct.usb_phy_io_ops** %31, align 8
  %32 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %33 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %34 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %33, i32 0, i32 3
  store %struct.usb_otg* %32, %struct.usb_otg** %34, align 8
  %35 = load i32, i32* @ulpi_init, align 4
  %36 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %37 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  %39 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %40 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %39, i32 0, i32 2
  store %struct.usb_phy* %38, %struct.usb_phy** %40, align 8
  %41 = load i32, i32* @ulpi_set_host, align 4
  %42 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %43 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ulpi_set_vbus, align 4
  %45 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %46 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.usb_phy*, %struct.usb_phy** %6, align 8
  store %struct.usb_phy* %47, %struct.usb_phy** %3, align 8
  br label %48

48:                                               ; preds = %23, %20, %13
  %49 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  ret %struct.usb_phy* %49
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
