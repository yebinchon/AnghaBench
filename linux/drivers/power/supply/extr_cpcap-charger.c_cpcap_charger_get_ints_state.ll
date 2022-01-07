; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_get_ints_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_get_ints_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_charger_ddata = type { i32 }
%struct.cpcap_charger_ints_state = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CPCAP_REG_INTS1 = common dso_local global i32 0, align 4
@CPCAP_REG_INTS2 = common dso_local global i32 0, align 4
@CPCAP_REG_INTS4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_charger_ddata*, %struct.cpcap_charger_ints_state*)* @cpcap_charger_get_ints_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_charger_get_ints_state(%struct.cpcap_charger_ddata* %0, %struct.cpcap_charger_ints_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpcap_charger_ddata*, align 8
  %5 = alloca %struct.cpcap_charger_ints_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpcap_charger_ddata* %0, %struct.cpcap_charger_ddata** %4, align 8
  store %struct.cpcap_charger_ints_state* %1, %struct.cpcap_charger_ints_state** %5, align 8
  %8 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %9 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CPCAP_REG_INTS1, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %78

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @BIT(i32 13)
  %20 = and i32 %18, %19
  %21 = load %struct.cpcap_charger_ints_state*, %struct.cpcap_charger_ints_state** %5, align 8
  %22 = getelementptr inbounds %struct.cpcap_charger_ints_state, %struct.cpcap_charger_ints_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @BIT(i32 12)
  %25 = and i32 %23, %24
  %26 = load %struct.cpcap_charger_ints_state*, %struct.cpcap_charger_ints_state** %5, align 8
  %27 = getelementptr inbounds %struct.cpcap_charger_ints_state, %struct.cpcap_charger_ints_state* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @BIT(i32 11)
  %30 = and i32 %28, %29
  %31 = load %struct.cpcap_charger_ints_state*, %struct.cpcap_charger_ints_state** %5, align 8
  %32 = getelementptr inbounds %struct.cpcap_charger_ints_state, %struct.cpcap_charger_ints_state* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %34 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CPCAP_REG_INTS2, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %17
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %78

42:                                               ; preds = %17
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @BIT(i32 13)
  %45 = and i32 %43, %44
  %46 = load %struct.cpcap_charger_ints_state*, %struct.cpcap_charger_ints_state** %5, align 8
  %47 = getelementptr inbounds %struct.cpcap_charger_ints_state, %struct.cpcap_charger_ints_state* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @BIT(i32 6)
  %50 = and i32 %48, %49
  %51 = load %struct.cpcap_charger_ints_state*, %struct.cpcap_charger_ints_state** %5, align 8
  %52 = getelementptr inbounds %struct.cpcap_charger_ints_state, %struct.cpcap_charger_ints_state* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @BIT(i32 4)
  %55 = and i32 %53, %54
  %56 = load %struct.cpcap_charger_ints_state*, %struct.cpcap_charger_ints_state** %5, align 8
  %57 = getelementptr inbounds %struct.cpcap_charger_ints_state, %struct.cpcap_charger_ints_state* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @BIT(i32 3)
  %60 = and i32 %58, %59
  %61 = load %struct.cpcap_charger_ints_state*, %struct.cpcap_charger_ints_state** %5, align 8
  %62 = getelementptr inbounds %struct.cpcap_charger_ints_state, %struct.cpcap_charger_ints_state* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %64 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CPCAP_REG_INTS4, align 4
  %67 = call i32 @regmap_read(i32 %65, i32 %66, i32* %6)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %42
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %78

72:                                               ; preds = %42
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @BIT(i32 6)
  %75 = and i32 %73, %74
  %76 = load %struct.cpcap_charger_ints_state*, %struct.cpcap_charger_ints_state** %5, align 8
  %77 = getelementptr inbounds %struct.cpcap_charger_ints_state, %struct.cpcap_charger_ints_state* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %70, %40, %15
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
