; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.mbo = type { i32 (%struct.mbo*)*, i32, i64, i64, i32, i32 }
%struct.hdm_i2c = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@NUM_CHANNELS = common dso_local global i32 0, align 4
@CH_RX = common dso_local global i32 0, align 4
@polling_rate = common dso_local global i64 0, align 8
@MBO_E_INVAL = common dso_local global i32 0, align 4
@MBO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32, %struct.mbo*)* @enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue(%struct.most_interface* %0, i32 %1, %struct.mbo* %2) #0 {
  %4 = alloca %struct.most_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbo*, align 8
  %7 = alloca %struct.hdm_i2c*, align 8
  %8 = alloca i32, align 4
  store %struct.most_interface* %0, %struct.most_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mbo* %2, %struct.mbo** %6, align 8
  %9 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %10 = call %struct.hdm_i2c* @to_hdm(%struct.most_interface* %9)
  store %struct.hdm_i2c* %10, %struct.hdm_i2c** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @NUM_CHANNELS, align 4
  %16 = icmp sge i32 %14, %15
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ true, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CH_RX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %17
  %25 = load i64, i64* @polling_rate, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.hdm_i2c*, %struct.hdm_i2c** %7, align 8
  %29 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @disable_irq(i32 %32)
  br label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.hdm_i2c*, %struct.hdm_i2c** %7, align 8
  %36 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @cancel_delayed_work_sync(%struct.TYPE_6__* %37)
  %39 = load %struct.mbo*, %struct.mbo** %6, align 8
  %40 = getelementptr inbounds %struct.mbo, %struct.mbo* %39, i32 0, i32 5
  %41 = load %struct.hdm_i2c*, %struct.hdm_i2c** %7, align 8
  %42 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = call i32 @list_add_tail(i32* %40, i32* %43)
  %45 = load %struct.hdm_i2c*, %struct.hdm_i2c** %7, align 8
  %46 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %34
  %51 = load i64, i64* @polling_rate, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50, %34
  %54 = load %struct.hdm_i2c*, %struct.hdm_i2c** %7, align 8
  %55 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @pending_rx_work(i32* %57)
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i64, i64* @polling_rate, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load %struct.hdm_i2c*, %struct.hdm_i2c** %7, align 8
  %64 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @enable_irq(i32 %67)
  br label %69

69:                                               ; preds = %62, %59
  br label %104

70:                                               ; preds = %17
  %71 = load %struct.hdm_i2c*, %struct.hdm_i2c** %7, align 8
  %72 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load %struct.mbo*, %struct.mbo** %6, align 8
  %75 = getelementptr inbounds %struct.mbo, %struct.mbo* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mbo*, %struct.mbo** %6, align 8
  %78 = getelementptr inbounds %struct.mbo, %struct.mbo* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @i2c_master_send(%struct.TYPE_5__* %73, i32 %76, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %70
  %84 = load %struct.mbo*, %struct.mbo** %6, align 8
  %85 = getelementptr inbounds %struct.mbo, %struct.mbo* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @MBO_E_INVAL, align 4
  %87 = load %struct.mbo*, %struct.mbo** %6, align 8
  %88 = getelementptr inbounds %struct.mbo, %struct.mbo* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  br label %98

89:                                               ; preds = %70
  %90 = load %struct.mbo*, %struct.mbo** %6, align 8
  %91 = getelementptr inbounds %struct.mbo, %struct.mbo* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.mbo*, %struct.mbo** %6, align 8
  %94 = getelementptr inbounds %struct.mbo, %struct.mbo* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* @MBO_SUCCESS, align 4
  %96 = load %struct.mbo*, %struct.mbo** %6, align 8
  %97 = getelementptr inbounds %struct.mbo, %struct.mbo* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %89, %83
  %99 = load %struct.mbo*, %struct.mbo** %6, align 8
  %100 = getelementptr inbounds %struct.mbo, %struct.mbo* %99, i32 0, i32 0
  %101 = load i32 (%struct.mbo*)*, i32 (%struct.mbo*)** %100, align 8
  %102 = load %struct.mbo*, %struct.mbo** %6, align 8
  %103 = call i32 %101(%struct.mbo* %102)
  br label %104

104:                                              ; preds = %98, %69
  ret i32 0
}

declare dso_local %struct.hdm_i2c* @to_hdm(%struct.most_interface*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pending_rx_work(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_5__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
