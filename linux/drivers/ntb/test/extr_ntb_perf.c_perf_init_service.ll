; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_init_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_init_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ctx = type { i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Not enough memory windows\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PERF_MSG_CNT = common dso_local global i64 0, align 8
@perf_msg_cmd_send = common dso_local global i32 0, align 4
@perf_msg_cmd_recv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Message service initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Message service unsupported\0A\00", align 1
@perf_spad_cmd_send = common dso_local global i32 0, align 4
@perf_spad_cmd_recv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Scratchpad service initialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Scratchpad service unsupported\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Command services unsupported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_ctx*)* @perf_init_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_init_service(%struct.perf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_ctx* %0, %struct.perf_ctx** %3, align 8
  %5 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = call i64 @ntb_peer_mw_count(%struct.TYPE_5__* %7)
  %9 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %94

22:                                               ; preds = %1
  %23 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = call i64 @ntb_msg_count(%struct.TYPE_5__* %25)
  %27 = load i64, i64* @PERF_MSG_CNT, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load i32, i32* @perf_msg_cmd_send, align 4
  %31 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @perf_msg_cmd_recv, align 4
  %34 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

41:                                               ; preds = %22
  %42 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @GENMASK_ULL(i64 %49, i32 0)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i64 @ntb_spad_count(%struct.TYPE_5__* %53)
  %55 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @PERF_SPAD_CNT(i64 %57)
  %59 = icmp sge i64 %54, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %41
  %61 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i32 @ntb_db_valid_mask(%struct.TYPE_5__* %63)
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %60
  %70 = load i32, i32* @perf_spad_cmd_send, align 4
  %71 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @perf_spad_cmd_recv, align 4
  %74 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @dev_dbg(i32* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

81:                                               ; preds = %60, %41
  %82 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.perf_ctx*, %struct.perf_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %81, %69, %29, %14
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @ntb_peer_mw_count(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @ntb_msg_count(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @GENMASK_ULL(i64, i32) #1

declare dso_local i64 @ntb_spad_count(%struct.TYPE_5__*) #1

declare dso_local i64 @PERF_SPAD_CNT(i64) #1

declare dso_local i32 @ntb_db_valid_mask(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
