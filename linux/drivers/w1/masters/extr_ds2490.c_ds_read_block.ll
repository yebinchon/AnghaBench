; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds2490.c_ds_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_device = type { i32 }
%struct.ds_status = type { i32 }

@E2BIG = common dso_local global i32 0, align 4
@COMM_BLOCK_IO = common dso_local global i32 0, align 4
@COMM_IM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_device*, i32*, i32)* @ds_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_read_block(%struct.ds_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ds_status, align 4
  %9 = alloca i32, align 4
  store %struct.ds_device* %0, %struct.ds_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %10, 65536
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @E2BIG, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %49

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @memset(i32* %16, i32 255, i32 %17)
  %19 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ds_send_data(%struct.ds_device* %19, i32* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %15
  %28 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %29 = load i32, i32* @COMM_BLOCK_IO, align 4
  %30 = load i32, i32* @COMM_IM, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ds_send_control(%struct.ds_device* %28, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %27
  %39 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %40 = call i32 @ds_wait_status(%struct.ds_device* %39, %struct.ds_status* %8)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @memset(i32* %41, i32 0, i32 %42)
  %44 = load %struct.ds_device*, %struct.ds_device** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ds_recv_data(%struct.ds_device* %44, i32* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %36, %25, %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ds_send_data(%struct.ds_device*, i32*, i32) #1

declare dso_local i32 @ds_send_control(%struct.ds_device*, i32, i32) #1

declare dso_local i32 @ds_wait_status(%struct.ds_device*, %struct.ds_status*) #1

declare dso_local i32 @ds_recv_data(%struct.ds_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
