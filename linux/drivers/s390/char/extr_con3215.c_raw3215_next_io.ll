; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_next_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_next_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i64, i32 }
%struct.tty_struct = type { i32 }

@RAW3215_BUFFER_SIZE = common dso_local global i64 0, align 8
@RAW3215_MIN_SPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*, %struct.tty_struct*)* @raw3215_next_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_next_io(%struct.raw3215_info* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.raw3215_info*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.raw3215_info* %0, %struct.raw3215_info** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %6 = call i32 @raw3215_mk_write_req(%struct.raw3215_info* %5)
  %7 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %8 = call i32 @raw3215_try_io(%struct.raw3215_info* %7)
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = icmp ne %struct.tty_struct* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i64, i64* @RAW3215_BUFFER_SIZE, align 8
  %13 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %14 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = load i64, i64* @RAW3215_MIN_SPACE, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %21 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %20, i32 0, i32 1
  %22 = call i32 @tasklet_schedule(i32* %21)
  br label %23

23:                                               ; preds = %19, %11, %2
  ret void
}

declare dso_local i32 @raw3215_mk_write_req(%struct.raw3215_info*) #1

declare dso_local i32 @raw3215_try_io(%struct.raw3215_info*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
