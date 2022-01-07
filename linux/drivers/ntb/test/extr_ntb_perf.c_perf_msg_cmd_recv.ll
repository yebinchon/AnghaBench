; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_msg_cmd_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_msg_cmd_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ctx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@PERF_MSG_CMD = common dso_local global i32 0, align 4
@PERF_MSG_LDATA = common dso_local global i32 0, align 4
@PERF_MSG_HDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CMD recv: %d 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_ctx*, i32*, i32*, i32*)* @perf_msg_cmd_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_msg_cmd_recv(%struct.perf_ctx* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_ctx* %0, %struct.perf_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i32 @ntb_msg_inbits(%struct.TYPE_5__* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @ntb_msg_read_sts(%struct.TYPE_5__* %18)
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @hweight64(i32 %21)
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENODATA, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %69

27:                                               ; preds = %4
  %28 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @PERF_MSG_CMD, align 4
  %33 = call i32 @ntb_msg_read(%struct.TYPE_5__* %30, i32* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @PERF_MSG_LDATA, align 4
  %41 = call i32 @ntb_msg_read(%struct.TYPE_5__* %38, i32* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @PERF_MSG_HDATA, align 4
  %49 = call i32 @ntb_msg_read(%struct.TYPE_5__* %46, i32* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 %50, 32
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @ntb_msg_clear_sts(%struct.TYPE_5__* %57, i32 %58)
  %60 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %27, %24
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @ntb_msg_inbits(%struct.TYPE_5__*) #1

declare dso_local i32 @hweight64(i32) #1

declare dso_local i32 @ntb_msg_read_sts(%struct.TYPE_5__*) #1

declare dso_local i32 @ntb_msg_read(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @ntb_msg_clear_sts(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
