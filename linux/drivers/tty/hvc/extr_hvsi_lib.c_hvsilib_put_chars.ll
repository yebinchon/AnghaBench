; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_put_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsilib_put_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_priv = type { i32 }
%struct.hvsi_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HVSI_MAX_OUTGOING_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@VS_DATA_PACKET_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hvsilib_put_chars(%struct.hvsi_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hvsi_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hvsi_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hvsi_priv* %0, %struct.hvsi_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @HVSI_MAX_OUTGOING_DATA, align 4
  %13 = call i32 @min(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %15 = icmp ne %struct.hvsi_priv* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = load i32, i32* @VS_DATA_PACKET_HEADER, align 4
  %25 = getelementptr inbounds %struct.hvsi_data, %struct.hvsi_data* %8, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.hvsi_data, %struct.hvsi_data* %8, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.hvsi_data, %struct.hvsi_data* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @memcpy(i32 %34, i8* %35, i32 %36)
  %38 = load %struct.hvsi_priv*, %struct.hvsi_priv** %5, align 8
  %39 = getelementptr inbounds %struct.hvsi_data, %struct.hvsi_data* %8, i32 0, i32 0
  %40 = call i32 @hvsi_send_packet(%struct.hvsi_priv* %38, %struct.TYPE_2__* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %23
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %43, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hvsi_send_packet(%struct.hvsi_priv*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
