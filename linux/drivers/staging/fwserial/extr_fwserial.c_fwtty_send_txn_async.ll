; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_send_txn_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_send_txn_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_peer = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fwtty_transaction = type { i32, %struct.fwtty_port*, i32 }
%struct.fwtty_port = type { i32 }

@fwtty_common_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwtty_peer*, %struct.fwtty_transaction*, i32, i64, i8*, i64, i32, %struct.fwtty_port*)* @fwtty_send_txn_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_send_txn_async(%struct.fwtty_peer* %0, %struct.fwtty_transaction* %1, i32 %2, i64 %3, i8* %4, i64 %5, i32 %6, %struct.fwtty_port* %7) #0 {
  %9 = alloca %struct.fwtty_peer*, align 8
  %10 = alloca %struct.fwtty_transaction*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fwtty_port*, align 8
  %17 = alloca i32, align 4
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %9, align 8
  store %struct.fwtty_transaction* %1, %struct.fwtty_transaction** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.fwtty_port* %7, %struct.fwtty_port** %16, align 8
  %18 = load i32, i32* %15, align 4
  %19 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %10, align 8
  %20 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.fwtty_port*, %struct.fwtty_port** %16, align 8
  %22 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %10, align 8
  %23 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %22, i32 0, i32 1
  store %struct.fwtty_port* %21, %struct.fwtty_port** %23, align 8
  %24 = load %struct.fwtty_peer*, %struct.fwtty_peer** %9, align 8
  %25 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = call i32 (...) @smp_rmb()
  %28 = load %struct.fwtty_peer*, %struct.fwtty_peer** %9, align 8
  %29 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %10, align 8
  %34 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %33, i32 0, i32 0
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.fwtty_peer*, %struct.fwtty_peer** %9, align 8
  %37 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load %struct.fwtty_peer*, %struct.fwtty_peer** %9, align 8
  %41 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* @fwtty_common_callback, align 4
  %47 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %10, align 8
  %48 = call i32 @fw_send_request(i32 %32, i32* %34, i32 %35, i32 %38, i32 %39, i32 %42, i64 %43, i8* %44, i64 %45, i32 %46, %struct.fwtty_transaction* %47)
  ret void
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @fw_send_request(i32, i32*, i32, i32, i32, i32, i64, i8*, i64, i32, %struct.fwtty_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
