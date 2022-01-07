; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_sync_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_sync_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i32 }
%struct.gb_loopback_transfer_request = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_LOOPBACK_TYPE_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_loopback*, i64)* @gb_loopback_sync_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_sync_sink(%struct.gb_loopback* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_loopback*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gb_loopback_transfer_request*, align 8
  %7 = alloca i32, align 4
  store %struct.gb_loopback* %0, %struct.gb_loopback** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add i64 %8, 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gb_loopback_transfer_request* @kmalloc(i64 %9, i32 %10)
  store %struct.gb_loopback_transfer_request* %11, %struct.gb_loopback_transfer_request** %6, align 8
  %12 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %13 = icmp ne %struct.gb_loopback_transfer_request* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @cpu_to_le32(i64 %18)
  %20 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %21 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %23 = load i32, i32* @GB_LOOPBACK_TYPE_SINK, align 4
  %24 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 4
  %27 = call i32 @gb_loopback_operation_sync(%struct.gb_loopback* %22, i32 %23, %struct.gb_loopback_transfer_request* %24, i64 %26, i32* null, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %29 = call i32 @kfree(%struct.gb_loopback_transfer_request* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %17, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.gb_loopback_transfer_request* @kmalloc(i64, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @gb_loopback_operation_sync(%struct.gb_loopback*, i32, %struct.gb_loopback_transfer_request*, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.gb_loopback_transfer_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
