; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_rx_frame_is_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_rx_frame_is_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533_std_frame = type { i64, i64, i32 }

@PN533_STD_FRAME_SOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pn533_rx_frame_is_ack(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pn533_std_frame*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.pn533_std_frame*
  store %struct.pn533_std_frame* %6, %struct.pn533_std_frame** %4, align 8
  %7 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %4, align 8
  %8 = getelementptr inbounds %struct.pn533_std_frame, %struct.pn533_std_frame* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @PN533_STD_FRAME_SOF, align 4
  %11 = call i64 @cpu_to_be16(i32 %10)
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %4, align 8
  %16 = getelementptr inbounds %struct.pn533_std_frame, %struct.pn533_std_frame* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.pn533_std_frame*, %struct.pn533_std_frame** %4, align 8
  %21 = getelementptr inbounds %struct.pn533_std_frame, %struct.pn533_std_frame* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 255
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
