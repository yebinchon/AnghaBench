; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_setup_peer_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_setup_peer_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_peer = type { i64, i32, %struct.perf_ctx*, i32 }
%struct.perf_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@max_mw_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Peer %d outbuf reduced to %pa\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_peer*)* @perf_setup_peer_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_setup_peer_mw(%struct.perf_peer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_peer*, align 8
  %4 = alloca %struct.perf_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_peer* %0, %struct.perf_peer** %3, align 8
  %7 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %8 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %7, i32 0, i32 2
  %9 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  store %struct.perf_ctx* %9, %struct.perf_ctx** %4, align 8
  %10 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %17 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %16, i32 0, i32 0
  %18 = call i32 @ntb_peer_mw_get_addr(%struct.TYPE_2__* %12, i32 %15, i32* %5, i64* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %1
  %24 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %30 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @devm_ioremap_wc(i32* %27, i32 %28, i64 %31)
  %33 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %34 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %36 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %23
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %68

42:                                               ; preds = %23
  %43 = load i64, i64* @max_mw_size, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %47 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @max_mw_size, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load i64, i64* @max_mw_size, align 8
  %53 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %54 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %56 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %55, i32 0, i32 2
  %57 = load %struct.perf_ctx*, %struct.perf_ctx** %56, align 8
  %58 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %62 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %65 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %64, i32 0, i32 0
  %66 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %63, i64* %65)
  br label %67

67:                                               ; preds = %51, %45, %42
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %39, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @ntb_peer_mw_get_addr(%struct.TYPE_2__*, i32, i32*, i64*) #1

declare dso_local i32 @devm_ioremap_wc(i32*, i32, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
