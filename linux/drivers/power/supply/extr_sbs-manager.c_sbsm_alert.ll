; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.sbsm_data = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@SBSM_CMD_BATSYSSTATE = common dso_local global i32 0, align 4
@SBSM_CMD_BATSYSSTATECONT = common dso_local global i32 0, align 4
@SBSM_BIT_AC_PRESENT = common dso_local global i32 0, align 4
@SBSM_MAX_BATS = common dso_local global i32 0, align 4
@sbsm_do_alert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, i32)* @sbsm_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbsm_alert(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sbsm_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = call %struct.sbsm_data* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.sbsm_data* %13, %struct.sbsm_data** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %15 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SBSM_CMD_BATSYSSTATE, align 4
  %18 = call i32 @sbsm_read_word(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %24 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = xor i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %29 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %21, %3
  %32 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %33 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SBSM_CMD_BATSYSSTATECONT, align 4
  %36 = call i32 @sbsm_read_word(i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %42 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %40, %43
  %45 = load i32, i32* @SBSM_BIT_AC_PRESENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %50 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %57 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @power_supply_changed(i32 %58)
  br label %60

60:                                               ; preds = %48, %39, %31
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %63 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %88, %60
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SBSM_MAX_BATS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %76 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %79, i64 %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* @sbsm_do_alert, align 4
  %86 = call i32 @device_for_each_child(i32* %84, i32* null, i32 %85)
  br label %87

87:                                               ; preds = %74, %68
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %64

91:                                               ; preds = %64
  ret void
}

declare dso_local %struct.sbsm_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @sbsm_read_word(i32, i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
