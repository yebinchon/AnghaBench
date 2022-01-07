; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rx8900_trickle_charger_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rx8900_trickle_charger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rv8803_data = type { i64, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@rx_8900 = common dso_local global i64 0, align 8
@RX8900_BACKUP_CTRL = common dso_local global i32 0, align 4
@RX8900_FLAG_VDETOFF = common dso_local global i32 0, align 4
@RX8900_FLAG_SWOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"epson,vdet-disable\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"trickle-diode-disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rv8803_data*)* @rx8900_trickle_charger_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8900_trickle_charger_init(%struct.rv8803_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rv8803_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rv8803_data* %0, %struct.rv8803_data** %3, align 8
  %8 = load %struct.rv8803_data*, %struct.rv8803_data** %3, align 8
  %9 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %8, i32 0, i32 1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.rv8803_data*, %struct.rv8803_data** %3, align 8
  %20 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @rx_8900, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load %struct.rv8803_data*, %struct.rv8803_data** %3, align 8
  %27 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %26, i32 0, i32 1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %27, align 8
  %29 = load i32, i32* @RX8900_BACKUP_CTRL, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %25
  %36 = load i32, i32* @RX8900_FLAG_VDETOFF, align 4
  %37 = load i32, i32* @RX8900_FLAG_SWOFF, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = call i64 @of_property_read_bool(%struct.device_node* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i32, i32* @RX8900_FLAG_VDETOFF, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %35
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = call i64 @of_property_read_bool(%struct.device_node* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @RX8900_FLAG_SWOFF, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.rv8803_data*, %struct.rv8803_data** %3, align 8
  %59 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %58, i32 0, i32 1
  %60 = load %struct.i2c_client*, %struct.i2c_client** %59, align 8
  %61 = load i32, i32* @RX8900_BACKUP_CTRL, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %60, i32 %61, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %33, %24, %17
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
