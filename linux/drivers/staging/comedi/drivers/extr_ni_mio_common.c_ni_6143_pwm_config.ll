; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_6143_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_6143_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NI6143_CALIB_HI_TIME_REG = common dso_local global i32 0, align 4
@NI6143_CALIB_LO_TIME_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_6143_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_6143_pwm_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.ni_private*, %struct.ni_private** %14, align 8
  store %struct.ni_private* %15, %struct.ni_private** %10, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %137 [
    i32 128, label %19
    i32 129, label %133
  ]

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %47 [
    i32 131, label %23
    i32 132, label %31
    i32 130, label %39
  ]

23:                                               ; preds = %19
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %28 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DIV_ROUND_CLOSEST(i32 %26, i32 %29)
  store i32 %30, i32* %11, align 4
  br label %50

31:                                               ; preds = %19
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %36 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = udiv i32 %34, %37
  store i32 %38, i32* %11, align 4
  br label %50

39:                                               ; preds = %19
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %44 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DIV_ROUND_UP(i32 %42, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %50

47:                                               ; preds = %19
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %140

50:                                               ; preds = %39, %31, %23
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %78 [
    i32 131, label %54
    i32 132, label %62
    i32 130, label %70
  ]

54:                                               ; preds = %50
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %59 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DIV_ROUND_CLOSEST(i32 %57, i32 %60)
  store i32 %61, i32* %12, align 4
  br label %81

62:                                               ; preds = %50
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %67 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = udiv i32 %65, %68
  store i32 %69, i32* %12, align 4
  br label %81

70:                                               ; preds = %50
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %75 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DIV_ROUND_UP(i32 %73, i32 %76)
  store i32 %77, i32* %12, align 4
  br label %81

78:                                               ; preds = %50
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %140

81:                                               ; preds = %70, %62, %54
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %84 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul i32 %82, %85
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %101, label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %94 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul i32 %92, %95
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %91, %81
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %104 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = mul i32 %102, %105
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %111 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = mul i32 %109, %112
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @EAGAIN, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %140

118:                                              ; preds = %91
  %119 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @NI6143_CALIB_HI_TIME_REG, align 4
  %122 = call i32 @ni_writel(%struct.comedi_device* %119, i32 %120, i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %125 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @NI6143_CALIB_LO_TIME_REG, align 4
  %129 = call i32 @ni_writel(%struct.comedi_device* %126, i32 %127, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %132 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  store i32 5, i32* %5, align 4
  br label %140

133:                                              ; preds = %4
  %134 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @ni_get_pwm_config(%struct.comedi_device* %134, i32* %135)
  store i32 %136, i32* %5, align 4
  br label %140

137:                                              ; preds = %4
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %137, %133, %118, %101, %78, %47
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_get_pwm_config(%struct.comedi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
