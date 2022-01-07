; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_func_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_func_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sh_pfc_pinctrl = type { %struct.sh_pfc_pin_config*, %struct.sh_pfc* }
%struct.sh_pfc_pin_config = type { i32, i32, i64 }
%struct.sh_pfc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sh_pfc_pin_group* }
%struct.sh_pfc_pin_group = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Configuring pin group %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PINMUX_TYPE_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @sh_pfc_func_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_pfc_func_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_pfc_pinctrl*, align 8
  %8 = alloca %struct.sh_pfc*, align 8
  %9 = alloca %struct.sh_pfc_pin_group*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sh_pfc_pin_config*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sh_pfc_pin_config*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %18 = call %struct.sh_pfc_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.sh_pfc_pinctrl* %18, %struct.sh_pfc_pinctrl** %7, align 8
  %19 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %7, align 8
  %20 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %19, i32 0, i32 1
  %21 = load %struct.sh_pfc*, %struct.sh_pfc** %20, align 8
  store %struct.sh_pfc* %21, %struct.sh_pfc** %8, align 8
  %22 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %23 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.sh_pfc_pin_group*, %struct.sh_pfc_pin_group** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sh_pfc_pin_group, %struct.sh_pfc_pin_group* %26, i64 %28
  store %struct.sh_pfc_pin_group* %29, %struct.sh_pfc_pin_group** %9, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sh_pfc_pin_group*, %struct.sh_pfc_pin_group** %9, align 8
  %34 = getelementptr inbounds %struct.sh_pfc_pin_group, %struct.sh_pfc_pin_group* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %38 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %37, i32 0, i32 0
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %85, %3
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.sh_pfc_pin_group*, %struct.sh_pfc_pin_group** %9, align 8
  %44 = getelementptr inbounds %struct.sh_pfc_pin_group, %struct.sh_pfc_pin_group* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %41
  %48 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %49 = load %struct.sh_pfc_pin_group*, %struct.sh_pfc_pin_group** %9, align 8
  %50 = getelementptr inbounds %struct.sh_pfc_pin_group, %struct.sh_pfc_pin_group* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sh_pfc_get_pin_index(%struct.sh_pfc* %48, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %7, align 8
  %58 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %57, i32 0, i32 0
  %59 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %59, i64 %61
  store %struct.sh_pfc_pin_config* %62, %struct.sh_pfc_pin_config** %14, align 8
  %63 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %14, align 8
  %64 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %126

70:                                               ; preds = %47
  %71 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %72 = load %struct.sh_pfc_pin_group*, %struct.sh_pfc_pin_group** %9, align 8
  %73 = getelementptr inbounds %struct.sh_pfc_pin_group, %struct.sh_pfc_pin_group* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PINMUX_TYPE_FUNCTION, align 4
  %80 = call i32 @sh_pfc_config_mux(%struct.sh_pfc* %71, i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %126

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %41

88:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %122, %88
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.sh_pfc_pin_group*, %struct.sh_pfc_pin_group** %9, align 8
  %92 = getelementptr inbounds %struct.sh_pfc_pin_group, %struct.sh_pfc_pin_group* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %89
  %96 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %97 = load %struct.sh_pfc_pin_group*, %struct.sh_pfc_pin_group** %9, align 8
  %98 = getelementptr inbounds %struct.sh_pfc_pin_group, %struct.sh_pfc_pin_group* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @sh_pfc_get_pin_index(%struct.sh_pfc* %96, i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %7, align 8
  %106 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %105, i32 0, i32 0
  %107 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %107, i64 %109
  store %struct.sh_pfc_pin_config* %110, %struct.sh_pfc_pin_config** %16, align 8
  %111 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %16, align 8
  %112 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.sh_pfc_pin_group*, %struct.sh_pfc_pin_group** %9, align 8
  %114 = getelementptr inbounds %struct.sh_pfc_pin_group, %struct.sh_pfc_pin_group* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %16, align 8
  %121 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %95
  %123 = load i32, i32* %11, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %89

125:                                              ; preds = %89
  br label %126

126:                                              ; preds = %125, %83, %67
  %127 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %128 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %127, i32 0, i32 0
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load i32, i32* %12, align 4
  ret i32 %131
}

declare dso_local %struct.sh_pfc_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_pfc_get_pin_index(%struct.sh_pfc*, i32) #1

declare dso_local i32 @sh_pfc_config_mux(%struct.sh_pfc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
