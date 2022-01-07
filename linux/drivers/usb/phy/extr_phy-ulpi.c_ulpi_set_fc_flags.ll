; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_ulpi_set_fc_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ulpi.c_ulpi_set_fc_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32 }

@ULPI_FC_HS = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_HIGH_SPEED = common dso_local global i32 0, align 4
@ULPI_FC_LS = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_LOW_SPEED = common dso_local global i32 0, align 4
@ULPI_FC_FS4LS = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_FS4LS = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_FULL_SPEED = common dso_local global i32 0, align 4
@ULPI_FC_TERMSEL = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_TERMSELECT = common dso_local global i32 0, align 4
@ULPI_FC_OP_NODRV = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_OPMODE_NONDRIVING = common dso_local global i32 0, align 4
@ULPI_FC_OP_DIS_NRZI = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_OPMODE_DISABLE_NRZI = common dso_local global i32 0, align 4
@ULPI_FC_OP_NSYNC_NEOP = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_OPMODE_NOSYNC_NOEOP = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_OPMODE_NORMAL = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL_SUSPENDM = common dso_local global i32 0, align 4
@ULPI_FUNC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_phy*)* @ulpi_set_fc_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpi_set_fc_flags(%struct.usb_phy* %0) #0 {
  %2 = alloca %struct.usb_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %5 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ULPI_FC_HS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @ULPI_FUNC_CTRL_HIGH_SPEED, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %16 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ULPI_FC_LS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @ULPI_FUNC_CTRL_LOW_SPEED, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %14
  %26 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %27 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ULPI_FC_FS4LS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @ULPI_FUNC_CTRL_FS4LS, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %25
  %37 = load i32, i32* @ULPI_FUNC_CTRL_FULL_SPEED, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %21
  br label %42

42:                                               ; preds = %41, %10
  %43 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %44 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ULPI_FC_TERMSEL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @ULPI_FUNC_CTRL_TERMSELECT, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %55 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ULPI_FC_OP_NODRV, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @ULPI_FUNC_CTRL_OPMODE_NONDRIVING, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %92

64:                                               ; preds = %53
  %65 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %66 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ULPI_FC_OP_DIS_NRZI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @ULPI_FUNC_CTRL_OPMODE_DISABLE_NRZI, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %91

75:                                               ; preds = %64
  %76 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %77 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ULPI_FC_OP_NSYNC_NEOP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* @ULPI_FUNC_CTRL_OPMODE_NOSYNC_NOEOP, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  br label %90

86:                                               ; preds = %75
  %87 = load i32, i32* @ULPI_FUNC_CTRL_OPMODE_NORMAL, align 4
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %60
  %93 = load i32, i32* @ULPI_FUNC_CTRL_SUSPENDM, align 4
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  %96 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @ULPI_FUNC_CTRL, align 4
  %99 = call i32 @usb_phy_io_write(%struct.usb_phy* %96, i32 %97, i32 %98)
  ret i32 %99
}

declare dso_local i32 @usb_phy_io_write(%struct.usb_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
