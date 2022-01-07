; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2482_w1_chan = type { i32, %struct.ds2482_data* }
%struct.ds2482_data = type { i32, i32 }

@DS2482_CMD_1WIRE_RESET = common dso_local global i32 0, align 4
@DS2482_REG_STS_PPD = common dso_local global i32 0, align 4
@DS2482_REG_STS_RST = common dso_local global i32 0, align 4
@DS2482_CMD_WRITE_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ds2482_w1_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2482_w1_reset_bus(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ds2482_w1_chan*, align 8
  %4 = alloca %struct.ds2482_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ds2482_w1_chan*
  store %struct.ds2482_w1_chan* %8, %struct.ds2482_w1_chan** %3, align 8
  %9 = load %struct.ds2482_w1_chan*, %struct.ds2482_w1_chan** %3, align 8
  %10 = getelementptr inbounds %struct.ds2482_w1_chan, %struct.ds2482_w1_chan* %9, i32 0, i32 1
  %11 = load %struct.ds2482_data*, %struct.ds2482_data** %10, align 8
  store %struct.ds2482_data* %11, %struct.ds2482_data** %4, align 8
  store i32 1, i32* %6, align 4
  %12 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %13 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %16 = call i32 @ds2482_wait_1wire_idle(%struct.ds2482_data* %15)
  %17 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %18 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %23 = load %struct.ds2482_w1_chan*, %struct.ds2482_w1_chan** %3, align 8
  %24 = getelementptr inbounds %struct.ds2482_w1_chan, %struct.ds2482_w1_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ds2482_set_channel(%struct.ds2482_data* %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %29 = load i32, i32* @DS2482_CMD_1WIRE_RESET, align 4
  %30 = call i32 @ds2482_send_cmd(%struct.ds2482_data* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %35 = call i32 @ds2482_wait_1wire_idle(%struct.ds2482_data* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DS2482_REG_STS_PPD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @DS2482_REG_STS_RST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %48 = load i32, i32* @DS2482_CMD_WRITE_CONFIG, align 4
  %49 = call i32 @ds2482_calculate_config(i32 0)
  %50 = call i32 @ds2482_send_cmd_data(%struct.ds2482_data* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %33
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.ds2482_data*, %struct.ds2482_data** %4, align 8
  %54 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ds2482_wait_1wire_idle(%struct.ds2482_data*) #1

declare dso_local i32 @ds2482_set_channel(%struct.ds2482_data*, i32) #1

declare dso_local i32 @ds2482_send_cmd(%struct.ds2482_data*, i32) #1

declare dso_local i32 @ds2482_send_cmd_data(%struct.ds2482_data*, i32, i32) #1

declare dso_local i32 @ds2482_calculate_config(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
