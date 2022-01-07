; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_3390.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_3390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT3390 = common dso_local global i32 0, align 4
@REV_RT3390E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_bbp_3390 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_bbp_3390(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %4 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %3, i32 65, i32 44)
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %5, i32 66, i32 56)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %7, i32 69, i32 18)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %9, i32 73, i32 16)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %11, i32 70, i32 10)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %13, i32 79, i32 19)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %15, i32 80, i32 5)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %17, i32 81, i32 51)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %20 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %19, i32 82, i32 98)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %21, i32 83, i32 106)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %23, i32 84, i32 153)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %25, i32 86, i32 0)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %27, i32 91, i32 4)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %29, i32 92, i32 0)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %32 = load i32, i32* @RT3390, align 4
  %33 = load i32, i32* @REV_RT3390E, align 4
  %34 = call i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %37, i32 103, i32 192)
  br label %42

39:                                               ; preds = %1
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %40, i32 103, i32 0)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %43, i32 105, i32 5)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %45, i32 106, i32 53)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = call i32 @rt2800_disable_unused_dac_adc(%struct.rt2x00_dev* %47)
  ret void
}

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt_rev_gte(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_disable_unused_dac_adc(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
