; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_rx_frame_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_rx_frame_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100_frame = type { i64, i64, i64, i32, i32 }

@PORT100_FRAME_SOF = common dso_local global i32 0, align 4
@PORT100_FRAME_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @port100_rx_frame_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_rx_frame_is_valid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.port100_frame*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.port100_frame*
  store %struct.port100_frame* %7, %struct.port100_frame** %5, align 8
  %8 = load %struct.port100_frame*, %struct.port100_frame** %5, align 8
  %9 = getelementptr inbounds %struct.port100_frame, %struct.port100_frame* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @PORT100_FRAME_SOF, align 4
  %12 = call i64 @cpu_to_be16(i32 %11)
  %13 = icmp ne i64 %10, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.port100_frame*, %struct.port100_frame** %5, align 8
  %16 = getelementptr inbounds %struct.port100_frame, %struct.port100_frame* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @PORT100_FRAME_EXT, align 4
  %19 = call i64 @cpu_to_be16(i32 %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %49

22:                                               ; preds = %14
  %23 = load %struct.port100_frame*, %struct.port100_frame** %5, align 8
  %24 = getelementptr inbounds %struct.port100_frame, %struct.port100_frame* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = call i64 @port100_checksum(i32 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.port100_frame*, %struct.port100_frame** %5, align 8
  %30 = getelementptr inbounds %struct.port100_frame, %struct.port100_frame* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %49

34:                                               ; preds = %22
  %35 = load %struct.port100_frame*, %struct.port100_frame** %5, align 8
  %36 = getelementptr inbounds %struct.port100_frame, %struct.port100_frame* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.port100_frame*, %struct.port100_frame** %5, align 8
  %39 = getelementptr inbounds %struct.port100_frame, %struct.port100_frame* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = call i64 @port100_data_checksum(i32 %37, i32 %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.port100_frame*, %struct.port100_frame** %5, align 8
  %45 = call i64 @PORT100_FRAME_CHECKSUM(%struct.port100_frame* %44)
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %33, %21
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @port100_checksum(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @port100_data_checksum(i32, i32) #1

declare dso_local i64 @PORT100_FRAME_CHECKSUM(%struct.port100_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
