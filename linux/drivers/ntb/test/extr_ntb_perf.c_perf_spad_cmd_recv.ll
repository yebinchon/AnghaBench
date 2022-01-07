; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_spad_cmd_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_spad_cmd_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ctx = type { i32, %struct.TYPE_4__*, %struct.perf_peer*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.perf_peer = type { i32 }

@PERF_CMD_INVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CMD recv: %d 0x%llx\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_ctx*, i32*, i32*, i32*)* @perf_spad_cmd_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_spad_cmd_recv(%struct.perf_ctx* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.perf_peer*, align 8
  %11 = alloca i64, align 8
  store %struct.perf_ctx* %0, %struct.perf_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PERF_SPAD_NOTIFY(i32 %17)
  %19 = call i32 @ntb_db_clear(%struct.TYPE_4__* %14, i32 %18)
  %20 = load i32*, i32** %7, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %100, %4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %21
  %29 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %29, i32 0, i32 2
  %31 = load %struct.perf_peer*, %struct.perf_peer** %30, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %31, i64 %34
  store %struct.perf_peer* %35, %struct.perf_peer** %10, align 8
  %36 = load %struct.perf_peer*, %struct.perf_peer** %10, align 8
  %37 = call i32 @perf_link_is_up(%struct.perf_peer* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %100

40:                                               ; preds = %28
  %41 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.perf_peer*, %struct.perf_peer** %10, align 8
  %45 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PERF_SPAD_CMD(i32 %46)
  %48 = call i64 @ntb_spad_read(%struct.TYPE_4__* %43, i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @PERF_CMD_INVAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %100

53:                                               ; preds = %40
  %54 = load i64, i64* %11, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.perf_peer*, %struct.perf_peer** %10, align 8
  %61 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PERF_SPAD_LDATA(i32 %62)
  %64 = call i64 @ntb_spad_read(%struct.TYPE_4__* %59, i32 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load %struct.perf_peer*, %struct.perf_peer** %10, align 8
  %72 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PERF_SPAD_HDATA(i32 %73)
  %75 = call i64 @ntb_spad_read(%struct.TYPE_4__* %70, i32 %74)
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 32
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.perf_peer*, %struct.perf_peer** %10, align 8
  %86 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PERF_SPAD_CMD(i32 %87)
  %89 = load i64, i64* @PERF_CMD_INVAL, align 8
  %90 = call i32 @ntb_spad_write(%struct.TYPE_4__* %84, i32 %88, i64 %89)
  %91 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %92 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %98)
  store i32 0, i32* %5, align 4
  br label %107

100:                                              ; preds = %52, %39
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %21

104:                                              ; preds = %21
  %105 = load i32, i32* @ENODATA, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %53
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @ntb_db_clear(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PERF_SPAD_NOTIFY(i32) #1

declare dso_local i32 @perf_link_is_up(%struct.perf_peer*) #1

declare dso_local i64 @ntb_spad_read(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PERF_SPAD_CMD(i32) #1

declare dso_local i32 @PERF_SPAD_LDATA(i32) #1

declare dso_local i32 @PERF_SPAD_HDATA(i32) #1

declare dso_local i32 @ntb_spad_write(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
