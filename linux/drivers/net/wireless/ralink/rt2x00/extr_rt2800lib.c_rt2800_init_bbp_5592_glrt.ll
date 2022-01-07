; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_5592_glrt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_5592_glrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@rt2800_init_bbp_5592_glrt.glrt_table = internal constant [84 x i32] [i32 224, i32 31, i32 56, i32 50, i32 8, i32 40, i32 25, i32 10, i32 255, i32 0, i32 22, i32 16, i32 16, i32 11, i32 54, i32 44, i32 38, i32 36, i32 66, i32 54, i32 48, i32 45, i32 76, i32 70, i32 61, i32 64, i32 62, i32 66, i32 61, i32 64, i32 60, i32 52, i32 44, i32 47, i32 60, i32 53, i32 46, i32 42, i32 73, i32 65, i32 54, i32 49, i32 48, i32 48, i32 14, i32 13, i32 40, i32 33, i32 28, i32 22, i32 80, i32 74, i32 67, i32 64, i32 16, i32 16, i32 16, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 125, i32 20, i32 50, i32 44, i32 54, i32 76, i32 67, i32 44, i32 46, i32 54, i32 48, i32 110], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_bbp_5592_glrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_bbp_5592_glrt(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([84 x i32], [84 x i32]* @rt2800_init_bbp_5592_glrt.glrt_table, i64 0, i64 0))
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 128, %10
  %12 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %9, i32 195, i32 %11)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [84 x i32], [84 x i32]* @rt2800_init_bbp_5592_glrt.glrt_table, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %13, i32 196, i32 %17)
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
