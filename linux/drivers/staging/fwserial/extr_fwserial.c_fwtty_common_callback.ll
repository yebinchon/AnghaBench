; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_common_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_common_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fwtty_transaction = type { i32 (%struct.fw_card.0*, i32, i8*, i64, %struct.fwtty_transaction*)*, %struct.fwtty_port* }
%struct.fw_card.0 = type opaque
%struct.fwtty_port = type { i32 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@fwtty_txn_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, i32, i8*, i64, i8*)* @fwtty_common_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_common_callback(%struct.fw_card* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.fwtty_transaction*, align 8
  %12 = alloca %struct.fwtty_port*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.fwtty_transaction*
  store %struct.fwtty_transaction* %14, %struct.fwtty_transaction** %11, align 8
  %15 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %11, align 8
  %16 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %15, i32 0, i32 1
  %17 = load %struct.fwtty_port*, %struct.fwtty_port** %16, align 8
  store %struct.fwtty_port* %17, %struct.fwtty_port** %12, align 8
  %18 = load %struct.fwtty_port*, %struct.fwtty_port** %12, align 8
  %19 = icmp ne %struct.fwtty_port* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RCODE_COMPLETE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.fwtty_port*, %struct.fwtty_port** %12, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @fwtty_log_tx_error(%struct.fwtty_port* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20, %5
  %29 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %11, align 8
  %30 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %29, i32 0, i32 0
  %31 = load i32 (%struct.fw_card.0*, i32, i8*, i64, %struct.fwtty_transaction*)*, i32 (%struct.fw_card.0*, i32, i8*, i64, %struct.fwtty_transaction*)** %30, align 8
  %32 = icmp ne i32 (%struct.fw_card.0*, i32, i8*, i64, %struct.fwtty_transaction*)* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %11, align 8
  %35 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %34, i32 0, i32 0
  %36 = load i32 (%struct.fw_card.0*, i32, i8*, i64, %struct.fwtty_transaction*)*, i32 (%struct.fw_card.0*, i32, i8*, i64, %struct.fwtty_transaction*)** %35, align 8
  %37 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %38 = bitcast %struct.fw_card* %37 to %struct.fw_card.0*
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %11, align 8
  %43 = call i32 %36(%struct.fw_card.0* %38, i32 %39, i8* %40, i64 %41, %struct.fwtty_transaction* %42)
  br label %44

44:                                               ; preds = %33, %28
  %45 = load i32, i32* @fwtty_txn_cache, align 4
  %46 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %11, align 8
  %47 = call i32 @kmem_cache_free(i32 %45, %struct.fwtty_transaction* %46)
  ret void
}

declare dso_local i32 @fwtty_log_tx_error(%struct.fwtty_port*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fwtty_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
