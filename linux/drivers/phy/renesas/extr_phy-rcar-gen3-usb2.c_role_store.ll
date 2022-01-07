; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_role_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen3-usb2.c_role_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rcar_gen3_chan = type { i32 }

@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @role_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @role_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rcar_gen3_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.rcar_gen3_chan* @dev_get_drvdata(%struct.device* %14)
  store %struct.rcar_gen3_chan* %15, %struct.rcar_gen3_chan** %10, align 8
  %16 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %10, align 8
  %17 = getelementptr inbounds %struct.rcar_gen3_chan, %struct.rcar_gen3_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %10, align 8
  %22 = call i32 @rcar_gen3_is_any_rphy_initialized(%struct.rcar_gen3_chan* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %4
  %25 = load i64, i64* @EIO, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %82

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  store i32 %33, i32* %13, align 4
  br label %45

34:                                               ; preds = %27
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  store i32 %40, i32* %13, align 4
  br label %44

41:                                               ; preds = %34
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %82

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %32
  %46 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %10, align 8
  %47 = call i32 @rcar_gen3_check_id(%struct.rcar_gen3_chan* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %10, align 8
  %49 = call i32 @rcar_gen3_get_phy_mode(%struct.rcar_gen3_chan* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %82

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %10, align 8
  %65 = call i32 @rcar_gen3_init_from_a_peri_to_a_host(%struct.rcar_gen3_chan* %64)
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %10, align 8
  %68 = call i32 @rcar_gen3_init_for_b_host(%struct.rcar_gen3_chan* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %80

70:                                               ; preds = %56
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %10, align 8
  %75 = call i32 @rcar_gen3_init_for_a_peri(%struct.rcar_gen3_chan* %74)
  br label %79

76:                                               ; preds = %70
  %77 = load %struct.rcar_gen3_chan*, %struct.rcar_gen3_chan** %10, align 8
  %78 = call i32 @rcar_gen3_init_for_peri(%struct.rcar_gen3_chan* %77)
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %69
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %80, %53, %41, %24
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local %struct.rcar_gen3_chan* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rcar_gen3_is_any_rphy_initialized(%struct.rcar_gen3_chan*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @rcar_gen3_check_id(%struct.rcar_gen3_chan*) #1

declare dso_local i32 @rcar_gen3_get_phy_mode(%struct.rcar_gen3_chan*) #1

declare dso_local i32 @rcar_gen3_init_from_a_peri_to_a_host(%struct.rcar_gen3_chan*) #1

declare dso_local i32 @rcar_gen3_init_for_b_host(%struct.rcar_gen3_chan*) #1

declare dso_local i32 @rcar_gen3_init_for_a_peri(%struct.rcar_gen3_chan*) #1

declare dso_local i32 @rcar_gen3_init_for_peri(%struct.rcar_gen3_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
