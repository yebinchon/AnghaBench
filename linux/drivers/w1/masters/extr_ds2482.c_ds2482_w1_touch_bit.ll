; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_touch_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_touch_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2482_w1_chan = type { i32, %struct.ds2482_data* }
%struct.ds2482_data = type { i32, i32 }

@DS2482_CMD_1WIRE_SINGLE_BIT = common dso_local global i32 0, align 4
@DS2482_REG_STS_SBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @ds2482_w1_touch_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2482_w1_touch_bit(i8* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.ds2482_w1_chan, %struct.ds2482_w1_chan* %10, i32 0, i32 1
  %12 = load %struct.ds2482_data*, %struct.ds2482_data** %11, align 8
  store %struct.ds2482_data* %12, %struct.ds2482_data** %6, align 8
  store i32 -1, i32* %7, align 4
  %13 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %14 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %17 = call i32 @ds2482_wait_1wire_idle(%struct.ds2482_data* %16)
  %18 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %19 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %24 = load %struct.ds2482_w1_chan*, %struct.ds2482_w1_chan** %5, align 8
  %25 = getelementptr inbounds %struct.ds2482_w1_chan, %struct.ds2482_w1_chan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ds2482_set_channel(%struct.ds2482_data* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %30 = load i32, i32* @DS2482_CMD_1WIRE_SINGLE_BIT, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 255, i32 0
  %35 = call i32 @ds2482_send_cmd_data(%struct.ds2482_data* %29, i32 %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %39 = call i32 @ds2482_wait_1wire_idle(%struct.ds2482_data* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %42 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @DS2482_REG_STS_SBR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ds2482_wait_1wire_idle(%struct.ds2482_data*) #1

declare dso_local i32 @ds2482_set_channel(%struct.ds2482_data*, i32) #1

declare dso_local i32 @ds2482_send_cmd_data(%struct.ds2482_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
