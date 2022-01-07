; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_reset_host_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_reset_host_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, %struct.qed_ll2_params*)*, i32 (i32)* }
%struct.qed_ll2_params = type { i32, i32, i64, i64 }
%struct.qedi_ctx = type { i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@qedi_ops = common dso_local global %struct.TYPE_8__* null, align 8
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"old MTU %u, new MTU %u\0A\00", align 1
@IPV6_HDR_LEN = common dso_local global i64 0, align 8
@TCP_HDR_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedi_reset_host_mtu(%struct.qedi_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qed_ll2_params, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %7 = call i32 @qedi_recover_all_conns(%struct.qedi_ctx* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @qedi_ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %12(i32 %15)
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %18 = call i32 @qedi_ll2_free_skbs(%struct.qedi_ctx* %17)
  %19 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %19, i32 0, i32 3
  %21 = load i32, i32* @QEDI_LOG_INFO, align 4
  %22 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @QEDI_INFO(i32* %20, i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25)
  %27 = call i32 @memset(%struct.qed_ll2_params* %5, i32 0, i32 24)
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IPV6_HDR_LEN, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* @TCP_HDR_LEN, align 8
  %37 = add nsw i64 %35, %36
  %38 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %5, i32 0, i32 3
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %5, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %5, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %5, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ether_addr_copy(i32 %42, i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @qedi_ops, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32 (i32, %struct.qed_ll2_params*)*, i32 (i32, %struct.qed_ll2_params*)** %52, align 8
  %54 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56, %struct.qed_ll2_params* %5)
  ret void
}

declare dso_local i32 @qedi_recover_all_conns(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_ll2_free_skbs(%struct.qedi_ctx*) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i64, i64) #1

declare dso_local i32 @memset(%struct.qed_ll2_params*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
