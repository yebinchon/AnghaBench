; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_poison_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/i2c/extr_i2c.c_poison_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.hdm_i2c = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mbo = type { i32 (%struct.mbo*)*, i32, i64, i32 }

@NUM_CHANNELS = common dso_local global i32 0, align 4
@CH_RX = common dso_local global i32 0, align 4
@polling_rate = common dso_local global i32 0, align 4
@MBO_E_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32)* @poison_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poison_channel(%struct.most_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.most_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdm_i2c*, align 8
  %6 = alloca %struct.mbo*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.most_interface*, %struct.most_interface** %3, align 8
  %8 = call %struct.hdm_i2c* @to_hdm(%struct.most_interface* %7)
  store %struct.hdm_i2c* %8, %struct.hdm_i2c** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NUM_CHANNELS, align 4
  %14 = icmp sge i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CH_RX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %15
  %23 = load i32, i32* @polling_rate, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load %struct.hdm_i2c*, %struct.hdm_i2c** %5, align 8
  %27 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hdm_i2c*, %struct.hdm_i2c** %5, align 8
  %32 = call i32 @free_irq(i32 %30, %struct.hdm_i2c* %31)
  br label %33

33:                                               ; preds = %25, %22
  %34 = load %struct.hdm_i2c*, %struct.hdm_i2c** %5, align 8
  %35 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @cancel_delayed_work_sync(i32* %36)
  br label %38

38:                                               ; preds = %45, %33
  %39 = load %struct.hdm_i2c*, %struct.hdm_i2c** %5, align 8
  %40 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @list_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load %struct.hdm_i2c*, %struct.hdm_i2c** %5, align 8
  %47 = getelementptr inbounds %struct.hdm_i2c, %struct.hdm_i2c* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call %struct.mbo* @list_first_mbo(i32* %48)
  store %struct.mbo* %49, %struct.mbo** %6, align 8
  %50 = load %struct.mbo*, %struct.mbo** %6, align 8
  %51 = getelementptr inbounds %struct.mbo, %struct.mbo* %50, i32 0, i32 3
  %52 = call i32 @list_del(i32* %51)
  %53 = load %struct.mbo*, %struct.mbo** %6, align 8
  %54 = getelementptr inbounds %struct.mbo, %struct.mbo* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @MBO_E_CLOSE, align 4
  %56 = load %struct.mbo*, %struct.mbo** %6, align 8
  %57 = getelementptr inbounds %struct.mbo, %struct.mbo* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mbo*, %struct.mbo** %6, align 8
  %59 = getelementptr inbounds %struct.mbo, %struct.mbo* %58, i32 0, i32 0
  %60 = load i32 (%struct.mbo*)*, i32 (%struct.mbo*)** %59, align 8
  %61 = load %struct.mbo*, %struct.mbo** %6, align 8
  %62 = call i32 %60(%struct.mbo* %61)
  br label %38

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %15
  ret i32 0
}

declare dso_local %struct.hdm_i2c* @to_hdm(%struct.most_interface*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_irq(i32, %struct.hdm_i2c*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.mbo* @list_first_mbo(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
