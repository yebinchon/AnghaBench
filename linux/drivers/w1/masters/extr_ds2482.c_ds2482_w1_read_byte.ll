; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2482_w1_chan = type { i32, %struct.ds2482_data* }
%struct.ds2482_data = type { i32, i32, i32 }

@DS2482_CMD_1WIRE_READ_BYTE = common dso_local global i32 0, align 4
@DS2482_PTR_CODE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ds2482_w1_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2482_w1_read_byte(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ds2482_w1_chan*, align 8
  %4 = alloca %struct.ds2482_data*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ds2482_w1_chan*
  store %struct.ds2482_w1_chan* %7, %struct.ds2482_w1_chan** %3, align 8
  %8 = load %struct.ds2482_w1_chan*, %struct.ds2482_w1_chan** %3, align 8
  %9 = getelementptr inbounds %struct.ds2482_w1_chan, %struct.ds2482_w1_chan* %8, i32 0, i32 1
  %10 = load %struct.ds2482_data*, %struct.ds2482_data** %9, align 8
  store %struct.ds2482_data* %10, %struct.ds2482_data** %4, align 8
  %11 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %12 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %15 = call i32 @ds2482_wait_1wire_idle(%struct.ds2482_data* %14)
  %16 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %17 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %22 = load %struct.ds2482_w1_chan*, %struct.ds2482_w1_chan** %3, align 8
  %23 = getelementptr inbounds %struct.ds2482_w1_chan, %struct.ds2482_w1_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ds2482_set_channel(%struct.ds2482_data* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %28 = load i32, i32* @DS2482_CMD_1WIRE_READ_BYTE, align 4
  %29 = call i32 @ds2482_send_cmd(%struct.ds2482_data* %27, i32 %28)
  %30 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %31 = call i32 @ds2482_wait_1wire_idle(%struct.ds2482_data* %30)
  %32 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %33 = load i32, i32* @DS2482_PTR_CODE_DATA, align 4
  %34 = call i32 @ds2482_select_register(%struct.ds2482_data* %32, i32 %33)
  %35 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %36 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @i2c_smbus_read_byte(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %40 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ds2482_wait_1wire_idle(%struct.ds2482_data*) #1

declare dso_local i32 @ds2482_set_channel(%struct.ds2482_data*, i32) #1

declare dso_local i32 @ds2482_send_cmd(%struct.ds2482_data*, i32) #1

declare dso_local i32 @ds2482_select_register(%struct.ds2482_data*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
