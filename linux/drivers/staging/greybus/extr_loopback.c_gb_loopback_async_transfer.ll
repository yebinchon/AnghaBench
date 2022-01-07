; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i32 }
%struct.gb_loopback_transfer_request = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_LOOPBACK_TYPE_TRANSFER = common dso_local global i32 0, align 4
@gb_loopback_async_transfer_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_loopback*, i64)* @gb_loopback_async_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_async_transfer(%struct.gb_loopback* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_loopback*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gb_loopback_transfer_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gb_loopback* %0, %struct.gb_loopback** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = add i64 %9, 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gb_loopback_transfer_request* @kmalloc(i64 %10, i32 %11)
  store %struct.gb_loopback_transfer_request* %12, %struct.gb_loopback_transfer_request** %6, align 8
  %13 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %14 = icmp ne %struct.gb_loopback_transfer_request* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %20 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @memset(i32 %21, i32 90, i64 %22)
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @cpu_to_le32(i64 %24)
  %26 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %27 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 4, i32* %8, align 4
  %28 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %29 = load i32, i32* @GB_LOOPBACK_TYPE_TRANSFER, align 4
  %30 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i32, i32* @gb_loopback_async_transfer_complete, align 4
  %38 = call i32 @gb_loopback_async_operation(%struct.gb_loopback* %28, i32 %29, %struct.gb_loopback_transfer_request* %30, i64 %32, i64 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %18
  br label %43

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %45 = call i32 @kfree(%struct.gb_loopback_transfer_request* %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.gb_loopback_transfer_request* @kmalloc(i64, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @gb_loopback_async_operation(%struct.gb_loopback*, i32, %struct.gb_loopback_transfer_request*, i64, i64, i32) #1

declare dso_local i32 @kfree(%struct.gb_loopback_transfer_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
