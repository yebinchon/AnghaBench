; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sh_pfc_pinctrl = type { %struct.sh_pfc* }
%struct.sh_pfc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sh_pfc*, i32)*, i32 (%struct.sh_pfc*, i32, i32*)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid pin %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @sh_pfc_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_pfc_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.sh_pfc_pinctrl*, align 8
  %9 = alloca %struct.sh_pfc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %19 = call %struct.sh_pfc_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %18)
  store %struct.sh_pfc_pinctrl* %19, %struct.sh_pfc_pinctrl** %8, align 8
  %20 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %8, align 8
  %21 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.sh_pfc*, %struct.sh_pfc** %21, align 8
  store %struct.sh_pfc* %22, %struct.sh_pfc** %9, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pinconf_to_config_param(i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @sh_pfc_pinconf_validate(%struct.sh_pfc* %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %156

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %148 [
    i32 132, label %36
    i32 130, label %36
    i32 131, label %36
    i32 129, label %81
    i32 128, label %91
  ]

36:                                               ; preds = %34, %34, %34
  %37 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %38 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %45 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.sh_pfc*, i32)*, i32 (%struct.sh_pfc*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.sh_pfc*, i32)* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43, %36
  %53 = load i32, i32* @ENOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %156

55:                                               ; preds = %43
  %56 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %57 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %56, i32 0, i32 0
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %61 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.sh_pfc*, i32)*, i32 (%struct.sh_pfc*, i32)** %65, align 8
  %67 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 %66(%struct.sh_pfc* %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %71 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %70, i32 0, i32 0
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %55
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %156

80:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %151

81:                                               ; preds = %34
  %82 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @sh_pfc_pinconf_get_drive_strength(%struct.sh_pfc* %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %4, align 4
  br label %156

89:                                               ; preds = %81
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %12, align 4
  br label %151

91:                                               ; preds = %34
  %92 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %93 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = icmp ne %struct.TYPE_3__* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %100 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32 (%struct.sh_pfc*, i32, i32*)*, i32 (%struct.sh_pfc*, i32, i32*)** %104, align 8
  %106 = icmp ne i32 (%struct.sh_pfc*, i32, i32*)* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %98, %91
  %108 = load i32, i32* @ENOTSUPP, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %156

110:                                              ; preds = %98
  %111 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %112 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32 (%struct.sh_pfc*, i32, i32*)*, i32 (%struct.sh_pfc*, i32, i32*)** %116, align 8
  %118 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 %117(%struct.sh_pfc* %118, i32 %119, i32* %15)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @WARN(i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %110
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %4, align 4
  br label %156

129:                                              ; preds = %110
  %130 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %131 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %130, i32 0, i32 0
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @spin_lock_irqsave(i32* %131, i64 %132)
  %134 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @sh_pfc_read(%struct.sh_pfc* %134, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load %struct.sh_pfc*, %struct.sh_pfc** %9, align 8
  %138 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %137, i32 0, i32 0
  %139 = load i64, i64* %11, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i64 %139)
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @BIT(i32 %142)
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 3300, i32 1800
  store i32 %147, i32* %12, align 4
  br label %151

148:                                              ; preds = %34
  %149 = load i32, i32* @ENOTSUPP, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %156

151:                                              ; preds = %129, %89, %80
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i64 @pinconf_to_config_packed(i32 %152, i32 %153)
  %155 = load i64*, i64** %7, align 8
  store i64 %154, i64* %155, align 8
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %151, %148, %127, %107, %87, %77, %52, %31
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.sh_pfc_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @sh_pfc_pinconf_validate(%struct.sh_pfc*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sh_pfc_pinconf_get_drive_strength(%struct.sh_pfc*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @sh_pfc_read(%struct.sh_pfc*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
