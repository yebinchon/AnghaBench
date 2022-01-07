; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinconf_cfg_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinconf_cfg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.zynq_pinctrl = type { i64, i32 }

@ZYNQ_NUM_MIOS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ZYNQ_PINCONF_PULLUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZYNQ_PINCONF_TRISTATE = common dso_local global i32 0, align 4
@ZYNQ_PINCONF_SPEED = common dso_local global i32 0, align 4
@zynq_iostd_hstl = common dso_local global i32 0, align 4
@ZYNQ_PINCONF_DISABLE_RECVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @zynq_pinconf_cfg_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_pinconf_cfg_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.zynq_pinctrl*, align 8
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pinconf_to_config_param(i64 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %18 = call %struct.zynq_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.zynq_pinctrl* %18, %struct.zynq_pinctrl** %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ZYNQ_NUM_MIOS, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %122

25:                                               ; preds = %3
  %26 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %12, align 8
  %27 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %12, align 8
  %30 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = mul i32 4, %32
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @regmap_read(i32 %28, i64 %35, i32* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %122

42:                                               ; preds = %25
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %114 [
    i32 131, label %44
    i32 132, label %53
    i32 133, label %62
    i32 128, label %76
    i32 129, label %84
    i32 130, label %110
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ZYNQ_PINCONF_PULLUP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %122

52:                                               ; preds = %44
  store i32 1, i32* %10, align 4
  br label %117

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ZYNQ_PINCONF_TRISTATE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %122

61:                                               ; preds = %53
  store i32 1, i32* %10, align 4
  br label %117

62:                                               ; preds = %42
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ZYNQ_PINCONF_PULLUP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ZYNQ_PINCONF_TRISTATE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67, %62
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %122

75:                                               ; preds = %67
  br label %117

76:                                               ; preds = %42
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @ZYNQ_PINCONF_SPEED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %10, align 4
  br label %117

84:                                               ; preds = %42
  %85 = load i32, i32* %8, align 4
  %86 = call i8* @zynq_pinconf_iostd_get(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @zynq_iostd_hstl, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %122

94:                                               ; preds = %84
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @ZYNQ_PINCONF_DISABLE_RECVR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %122

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @ZYNQ_PINCONF_DISABLE_RECVR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %10, align 4
  br label %117

110:                                              ; preds = %42
  %111 = load i32, i32* %8, align 4
  %112 = call i8* @zynq_pinconf_iostd_get(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %10, align 4
  br label %117

114:                                              ; preds = %42
  %115 = load i32, i32* @ENOTSUPP, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %122

117:                                              ; preds = %110, %102, %76, %75, %61, %52
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i64 @pinconf_to_config_packed(i32 %118, i32 %119)
  %121 = load i64*, i64** %7, align 8
  store i64 %120, i64* %121, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %114, %99, %91, %72, %58, %49, %39, %22
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local %struct.zynq_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i8* @zynq_pinconf_iostd_get(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
