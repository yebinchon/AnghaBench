; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9052-battery.c_da9052_bat_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_battery = type { i32, i8*, i32 }

@DA9052_STATUS_A_REG = common dso_local global i32 0, align 4
@DA9052_STATUSA_DCINSEL = common dso_local global i32 0, align 4
@DA9052_STATUSA_DCINDET = common dso_local global i32 0, align 4
@DA9052_STATUSA_VBUSSEL = common dso_local global i32 0, align 4
@DA9052_STATUSA_VBUSDET = common dso_local global i32 0, align 4
@DA9052_CHARGER = common dso_local global i8* null, align 8
@DA9052_STATUSB_CHGEND = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i8* null, align 8
@DA9052_NOCHARGER = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052_battery*, i32*)* @da9052_bat_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_bat_check_status(%struct.da9052_battery* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052_battery*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
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
  store %struct.da9052_battery* %0, %struct.da9052_battery** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %20 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DA9052_STATUS_A_REG, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %24 = call i32 @da9052_group_read(i32 %21, i32 %22, i32 2, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %141

29:                                               ; preds = %2
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DA9052_STATUSA_DCINSEL, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DA9052_STATUSA_DCINDET, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DA9052_STATUSA_VBUSSEL, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @DA9052_STATUSA_VBUSDET, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %29
  %52 = phi i1 [ false, %29 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i1 [ false, %51 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %110

67:                                               ; preds = %64, %59
  %68 = load i8*, i8** @DA9052_CHARGER, align 8
  %69 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %70 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @DA9052_STATUSB_CHGEND, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %67
  %76 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %77 = call i32 @da9052_read_chg_current(%struct.da9052_battery* %76, i32* %10)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %141

82:                                               ; preds = %75
  %83 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %84 = call i32 @da9052_read_chgend_current(%struct.da9052_battery* %83, i32* %11)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %141

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %97 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %103

98:                                               ; preds = %89
  %99 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %102 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %98, %93
  br label %109

104:                                              ; preds = %67
  %105 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %108 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %103
  br label %132

110:                                              ; preds = %64
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113, %110
  %117 = load i8*, i8** @DA9052_CHARGER, align 8
  %118 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %119 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %123 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %131

124:                                              ; preds = %113
  %125 = load i8*, i8** @DA9052_NOCHARGER, align 8
  %126 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %127 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %129 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %130 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %124, %116
  br label %132

132:                                              ; preds = %131, %109
  %133 = load i32*, i32** %5, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.da9052_battery*, %struct.da9052_battery** %4, align 8
  %137 = getelementptr inbounds %struct.da9052_battery, %struct.da9052_battery* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** %5, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %132
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %87, %80, %27
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @da9052_group_read(i32, i32, i32, i32*) #2

declare dso_local i32 @da9052_read_chg_current(%struct.da9052_battery*, i32*) #2

declare dso_local i32 @da9052_read_chgend_current(%struct.da9052_battery*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
