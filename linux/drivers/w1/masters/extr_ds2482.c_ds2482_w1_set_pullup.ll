; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_set_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_set_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2482_w1_chan = type { %struct.ds2482_data* }
%struct.ds2482_data = type { i32 }

@DS2482_CMD_WRITE_CONFIG = common dso_local global i32 0, align 4
@DS2482_REG_CFG_SPU = common dso_local global i32 0, align 4
@DS2482_REG_CFG_APU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @ds2482_w1_set_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2482_w1_set_pullup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds2482_w1_chan*, align 8
  %6 = alloca %struct.ds2482_data*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ds2482_w1_chan*
  store %struct.ds2482_w1_chan* %9, %struct.ds2482_w1_chan** %5, align 8
  %10 = load %struct.ds2482_w1_chan*, %struct.ds2482_w1_chan** %5, align 8
  %11 = getelementptr inbounds %struct.ds2482_w1_chan, %struct.ds2482_w1_chan* %10, i32 0, i32 0
  %12 = load %struct.ds2482_data*, %struct.ds2482_data** %11, align 8
  store %struct.ds2482_data* %12, %struct.ds2482_data** %6, align 8
  store i32 1, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %17 = call i32 @ds2482_wait_1wire_idle(%struct.ds2482_data* %16)
  %18 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %19 = load i32, i32* @DS2482_CMD_WRITE_CONFIG, align 4
  %20 = load i32, i32* @DS2482_REG_CFG_SPU, align 4
  %21 = load i32, i32* @DS2482_REG_CFG_APU, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @ds2482_calculate_config(i32 %22)
  %24 = call i32 @ds2482_send_cmd_data(%struct.ds2482_data* %18, i32 %19, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %26 = call i32 @ds2482_wait_1wire_idle(%struct.ds2482_data* %25)
  br label %27

27:                                               ; preds = %15, %2
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @ds2482_wait_1wire_idle(%struct.ds2482_data*) #1

declare dso_local i32 @ds2482_send_cmd_data(%struct.ds2482_data*, i32, i32) #1

declare dso_local i32 @ds2482_calculate_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
