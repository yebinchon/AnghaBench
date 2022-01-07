; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_make_room.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_make_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, i32, i32, i32 }

@RAW3215_BUFFER_SIZE = common dso_local global i32 0, align 4
@RAW3215_FLUSHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*, i32)* @raw3215_make_room to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_make_room(%struct.raw3215_info* %0, i32 %1) #0 {
  %3 = alloca %struct.raw3215_info*, align 8
  %4 = alloca i32, align 4
  store %struct.raw3215_info* %0, %struct.raw3215_info** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %45, %18, %2
  %6 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %7 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %8 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub i32 %6, %9
  %11 = load i32, i32* %4, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %5
  %14 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %15 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %14, i32 0, i32 3
  %16 = call i64 @tty_port_suspended(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %20 = call i32 @raw3215_drop_line(%struct.raw3215_info* %19)
  br label %5

21:                                               ; preds = %13
  %22 = load i32, i32* @RAW3215_FLUSHING, align 4
  %23 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %24 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %28 = call i32 @raw3215_mk_write_req(%struct.raw3215_info* %27)
  %29 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %30 = call i32 @raw3215_try_io(%struct.raw3215_info* %29)
  %31 = load i32, i32* @RAW3215_FLUSHING, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %34 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %38 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %39 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %37, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  br label %57

45:                                               ; preds = %21
  %46 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %47 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @get_ccwdev_lock(i32 %48)
  %50 = call i32 @spin_unlock(i32 %49)
  %51 = call i32 @udelay(i32 100)
  %52 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %53 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @get_ccwdev_lock(i32 %54)
  %56 = call i32 @spin_lock(i32 %55)
  br label %5

57:                                               ; preds = %44, %5
  ret void
}

declare dso_local i64 @tty_port_suspended(i32*) #1

declare dso_local i32 @raw3215_drop_line(%struct.raw3215_info*) #1

declare dso_local i32 @raw3215_mk_write_req(%struct.raw3215_info*) #1

declare dso_local i32 @raw3215_try_io(%struct.raw3215_info*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
