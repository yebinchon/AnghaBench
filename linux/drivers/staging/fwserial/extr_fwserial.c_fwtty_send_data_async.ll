; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_send_data_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_send_data_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_peer = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fwtty_port = type { i32 }
%struct.fwtty_transaction = type { i32, %struct.fwtty_port*, i32 }

@fwtty_txn_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fwtty_common_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_peer*, i32, i64, i8*, i64, i32, %struct.fwtty_port*)* @fwtty_send_data_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_send_data_async(%struct.fwtty_peer* %0, i32 %1, i64 %2, i8* %3, i64 %4, i32 %5, %struct.fwtty_port* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.fwtty_peer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fwtty_port*, align 8
  %16 = alloca %struct.fwtty_transaction*, align 8
  %17 = alloca i32, align 4
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.fwtty_port* %6, %struct.fwtty_port** %15, align 8
  %18 = load i32, i32* @fwtty_txn_cache, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.fwtty_transaction* @kmem_cache_alloc(i32 %18, i32 %19)
  store %struct.fwtty_transaction* %20, %struct.fwtty_transaction** %16, align 8
  %21 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %16, align 8
  %22 = icmp ne %struct.fwtty_transaction* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %58

26:                                               ; preds = %7
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %16, align 8
  %29 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.fwtty_port*, %struct.fwtty_port** %15, align 8
  %31 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %16, align 8
  %32 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %31, i32 0, i32 1
  store %struct.fwtty_port* %30, %struct.fwtty_port** %32, align 8
  %33 = load %struct.fwtty_peer*, %struct.fwtty_peer** %9, align 8
  %34 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %17, align 4
  %36 = call i32 (...) @smp_rmb()
  %37 = load %struct.fwtty_peer*, %struct.fwtty_peer** %9, align 8
  %38 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %16, align 8
  %43 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %42, i32 0, i32 0
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.fwtty_peer*, %struct.fwtty_peer** %9, align 8
  %46 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.fwtty_peer*, %struct.fwtty_peer** %9, align 8
  %50 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* @fwtty_common_callback, align 4
  %56 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %16, align 8
  %57 = call i32 @fw_send_request(i32 %41, i32* %43, i32 %44, i32 %47, i32 %48, i32 %51, i64 %52, i8* %53, i64 %54, i32 %55, %struct.fwtty_transaction* %56)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %26, %23
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.fwtty_transaction* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @fw_send_request(i32, i32*, i32, i32, i32, i32, i64, i8*, i64, i32, %struct.fwtty_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
