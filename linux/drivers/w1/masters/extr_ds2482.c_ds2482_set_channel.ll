; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2482_data = type { i32, i32, i32 }

@DS2482_CMD_CHANNEL_SELECT = common dso_local global i32 0, align 4
@ds2482_chan_wr = common dso_local global i32* null, align 8
@DS2482_PTR_CODE_CHANNEL = common dso_local global i32 0, align 4
@ds2482_chan_rd = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds2482_data*, i64)* @ds2482_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2482_set_channel(%struct.ds2482_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds2482_data*, align 8
  %5 = alloca i64, align 8
  store %struct.ds2482_data* %0, %struct.ds2482_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %7 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DS2482_CMD_CHANNEL_SELECT, align 4
  %10 = load i32*, i32** @ds2482_chan_wr, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @i2c_smbus_write_byte_data(i32 %8, i32 %9, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* @DS2482_PTR_CODE_CHANNEL, align 4
  %19 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %20 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %22 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 4
  %23 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %24 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @i2c_smbus_read_byte(i32 %25)
  %27 = load i64*, i64** @ds2482_chan_rd, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load i64, i64* %5, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %36 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i64 @i2c_smbus_read_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
