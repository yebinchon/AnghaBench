; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_check_charger_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_check_charger_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@AC_CHG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Charging source is AC\0A\00", align 1
@STATE_NORMAL_INIT = common dso_local global i32 0, align 4
@USB_CHG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Charging source is USB\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Charging is suspended\0A\00", align 1
@NO_CHG = common dso_local global i8* null, align 8
@STATE_SUSPENDED_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Charging source is OFF\0A\00", align 1
@STATE_HANDHELD_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_chargalg*)* @abx500_chargalg_check_charger_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_check_charger_connection(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca %struct.abx500_chargalg*, align 8
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %2, align 8
  %3 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %4 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %8 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %6, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %14 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %135

18:                                               ; preds = %12, %1
  %19 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %20 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AC_CHG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %18
  %27 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %28 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %34 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %38 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AC_CHG, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load i32, i32* @AC_CHG, align 4
  %45 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %46 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %49 = load i32, i32* @STATE_NORMAL_INIT, align 4
  %50 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %32
  br label %124

52:                                               ; preds = %26, %18
  %53 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %54 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @USB_CHG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %52
  %61 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %62 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %68 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @USB_CHG, align 4
  %72 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %73 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %76 = load i32, i32* @STATE_NORMAL_INIT, align 4
  %77 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %75, i32 %76)
  br label %123

78:                                               ; preds = %60, %52
  %79 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %80 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %78
  %85 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %86 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %92 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %90, %84
  %97 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %98 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_dbg(i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i8*, i8** @NO_CHG, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %104 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %107 = load i32, i32* @STATE_SUSPENDED_INIT, align 4
  %108 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %106, i32 %107)
  br label %122

109:                                              ; preds = %90, %78
  %110 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %111 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_dbg(i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i8*, i8** @NO_CHG, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %117 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 8
  %119 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %120 = load i32, i32* @STATE_HANDHELD_INIT, align 4
  %121 = call i32 @abx500_chargalg_state_to(%struct.abx500_chargalg* %119, i32 %120)
  br label %122

122:                                              ; preds = %109, %96
  br label %123

123:                                              ; preds = %122, %66
  br label %124

124:                                              ; preds = %123, %51
  %125 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %126 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %130 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %133 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %124, %12
  %136 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %137 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  ret i32 %139
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @abx500_chargalg_state_to(%struct.abx500_chargalg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
