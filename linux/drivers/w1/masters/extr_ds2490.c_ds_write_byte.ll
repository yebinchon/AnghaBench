; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32, i64, i32 }
%struct.ds_status = type { i32 }

@COMM_BYTE_IO = common dso_local global i32 0, align 4
@COMM_IM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_device*, i64)* @ds_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_write_byte(%struct.ds_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ds_status, align 4
  store %struct.ds_device* %0, %struct.ds_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %9 = load i32, i32* @COMM_BYTE_IO, align 4
  %10 = load i32, i32* @COMM_IM, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %13 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %11, %14
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ds_send_control(%struct.ds_device* %8, i32 %15, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %56

22:                                               ; preds = %2
  %23 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %24 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %29 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @msleep(i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %34 = call i32 @ds_wait_status(%struct.ds_device* %33, %struct.ds_status* %7)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %32
  %40 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %41 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %42 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %41, i32 0, i32 1
  %43 = call i32 @ds_recv_data(%struct.ds_device* %40, i64* %42, i32 1)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %56

48:                                               ; preds = %39
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.ds_device*, %struct.ds_device** %4, align 8
  %51 = getelementptr inbounds %struct.ds_device, %struct.ds_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %46, %37, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ds_send_control(%struct.ds_device*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ds_wait_status(%struct.ds_device*, %struct.ds_status*) #1

declare dso_local i32 @ds_recv_data(%struct.ds_device*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
