; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2482.c_ds2482_w1_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2482_w1_chan = type { i32, %struct.ds2482_data* }
%struct.ds2482_data = type { i32, i32 }

@DS2482_CMD_1WIRE_WRITE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ds2482_w1_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds2482_w1_write_byte(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds2482_w1_chan*, align 8
  %6 = alloca %struct.ds2482_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ds2482_w1_chan*
  store %struct.ds2482_w1_chan* %8, %struct.ds2482_w1_chan** %5, align 8
  %9 = load %struct.ds2482_w1_chan*, %struct.ds2482_w1_chan** %5, align 8
  %10 = getelementptr inbounds %struct.ds2482_w1_chan, %struct.ds2482_w1_chan* %9, i32 0, i32 1
  %11 = load %struct.ds2482_data*, %struct.ds2482_data** %10, align 8
  store %struct.ds2482_data* %11, %struct.ds2482_data** %6, align 8
  %12 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %13 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %16 = call i32 @ds2482_wait_1wire_idle(%struct.ds2482_data* %15)
  %17 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %18 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %23 = load %struct.ds2482_w1_chan*, %struct.ds2482_w1_chan** %5, align 8
  %24 = getelementptr inbounds %struct.ds2482_w1_chan, %struct.ds2482_w1_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ds2482_set_channel(%struct.ds2482_data* %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %29 = load i32, i32* @DS2482_CMD_1WIRE_WRITE_BYTE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ds2482_send_cmd_data(%struct.ds2482_data* %28, i32 %29, i32 %30)
  %32 = load %struct.ds2482_data*, %struct.ds2482_data** %6, align 8
  %33 = getelementptr inbounds %struct.ds2482_data, %struct.ds2482_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
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
