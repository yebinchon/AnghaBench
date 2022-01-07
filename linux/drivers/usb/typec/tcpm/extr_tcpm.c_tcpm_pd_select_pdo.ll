; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_select_pdo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_select_pdo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32*, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_PD = common dso_local global i32 0, align 4
@APDO_TYPE_PPS = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_PD_PPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid source PDO type, ignoring\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid sink PDO type, ignoring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32*, i32*)* @tcpm_pd_select_pdo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pd_select_pdo(%struct.tcpm_port* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %17, align 4
  %22 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %23 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @POWER_SUPPLY_USB_TYPE_PD, align 4
  %26 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %27 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %149, %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %31 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %152

34:                                               ; preds = %28
  %35 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %36 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @pdo_type(i32 %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  switch i32 %44, label %67 [
    i32 129, label %45
    i32 130, label %49
    i32 128, label %49
    i32 131, label %54
  ]

45:                                               ; preds = %34
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @pdo_fixed_voltage(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %10, align 4
  br label %70

49:                                               ; preds = %34, %34
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @pdo_max_voltage(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @pdo_min_voltage(i32 %52)
  store i32 %53, i32* %10, align 4
  br label %70

54:                                               ; preds = %34
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @pdo_apdo_type(i32 %55)
  %57 = load i32, i32* @APDO_TYPE_PPS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %61 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* @POWER_SUPPLY_USB_TYPE_PD_PPS, align 4
  %64 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %65 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %59, %54
  br label %149

67:                                               ; preds = %34
  %68 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %69 = call i32 @tcpm_log(%struct.tcpm_port* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %149

70:                                               ; preds = %49, %45
  %71 = load i32, i32* %19, align 4
  switch i32 %71, label %83 [
    i32 129, label %72
    i32 128, label %72
    i32 130, label %79
    i32 131, label %82
  ]

72:                                               ; preds = %70, %70
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @pdo_max_current(i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %10, align 4
  %77 = mul i32 %75, %76
  %78 = udiv i32 %77, 1000
  store i32 %78, i32* %13, align 4
  br label %86

79:                                               ; preds = %70
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @pdo_max_power(i32 %80)
  store i32 %81, i32* %13, align 4
  br label %86

82:                                               ; preds = %70
  br label %149

83:                                               ; preds = %70
  %84 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %85 = call i32 @tcpm_log(%struct.tcpm_port* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %149

86:                                               ; preds = %79, %72
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %145, %86
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %90 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %148

93:                                               ; preds = %87
  %94 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %95 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @pdo_type(i32 %101)
  switch i32 %102, label %113 [
    i32 129, label %103
    i32 130, label %107
    i32 128, label %107
    i32 131, label %112
  ]

103:                                              ; preds = %93
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @pdo_fixed_voltage(i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %16, align 4
  br label %116

107:                                              ; preds = %93, %93
  %108 = load i32, i32* %18, align 4
  %109 = call i32 @pdo_max_voltage(i32 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @pdo_min_voltage(i32 %110)
  store i32 %111, i32* %16, align 4
  br label %116

112:                                              ; preds = %93
  br label %145

113:                                              ; preds = %93
  %114 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %115 = call i32 @tcpm_log(%struct.tcpm_port* %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %145

116:                                              ; preds = %107, %103
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp ule i32 %117, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp uge i32 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %128, %124
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ugt i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132, %128
  %137 = load i32, i32* %7, align 4
  %138 = load i32*, i32** %6, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32*, i32** %5, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %143

143:                                              ; preds = %136, %132
  br label %144

144:                                              ; preds = %143, %120, %116
  br label %145

145:                                              ; preds = %144, %113, %112
  %146 = load i32, i32* %8, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %87

148:                                              ; preds = %87
  br label %149

149:                                              ; preds = %148, %83, %82, %67, %66
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %28

152:                                              ; preds = %28
  %153 = load i32, i32* %17, align 4
  ret i32 %153
}

declare dso_local i32 @pdo_type(i32) #1

declare dso_local i32 @pdo_fixed_voltage(i32) #1

declare dso_local i32 @pdo_max_voltage(i32) #1

declare dso_local i32 @pdo_min_voltage(i32) #1

declare dso_local i32 @pdo_apdo_type(i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*) #1

declare dso_local i32 @pdo_max_current(i32) #1

declare dso_local i32 @pdo_max_power(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
