; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_spad_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_spad_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_peer = type { i32, i32, %struct.perf_ctx* }
%struct.perf_ctx = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD send: %d 0x%llx\0A\00", align 1
@MSG_TRIES = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@PERF_CMD_INVAL = common dso_local global i64 0, align 8
@MSG_UDELAY_LOW = common dso_local global i32 0, align 4
@MSG_UDELAY_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"DB ring peer %#llx\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_peer*, i32, i32)* @perf_spad_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_spad_cmd_send(%struct.perf_peer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_peer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.perf_peer* %0, %struct.perf_peer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %12 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %11, i32 0, i32 2
  %13 = load %struct.perf_ctx*, %struct.perf_ctx** %12, align 8
  store %struct.perf_ctx* %13, %struct.perf_ctx** %8, align 8
  %14 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %107, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MSG_TRIES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %110

25:                                               ; preds = %21
  %26 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %27 = call i32 @perf_link_is_up(%struct.perf_peer* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOLINK, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %120

32:                                               ; preds = %25
  %33 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %37 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PERF_SPAD_CMD(i32 %41)
  %43 = call i64 @ntb_peer_spad_read(%struct.TYPE_4__* %35, i32 %38, i32 %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @PERF_CMD_INVAL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load i32, i32* @MSG_UDELAY_LOW, align 4
  %49 = load i32, i32* @MSG_UDELAY_HIGH, align 4
  %50 = call i32 @usleep_range(i32 %48, i32 %49)
  br label %107

51:                                               ; preds = %32
  %52 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %56 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PERF_SPAD_LDATA(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @lower_32_bits(i32 %62)
  %64 = call i32 @ntb_peer_spad_write(%struct.TYPE_4__* %54, i32 %57, i32 %61, i32 %63)
  %65 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %69 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PERF_SPAD_HDATA(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @upper_32_bits(i32 %75)
  %77 = call i32 @ntb_peer_spad_write(%struct.TYPE_4__* %67, i32 %70, i32 %74, i32 %76)
  %78 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %82 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PERF_SPAD_CMD(i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ntb_peer_spad_write(%struct.TYPE_4__* %80, i32 %83, i32 %87, i32 %88)
  %90 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %94 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @PERF_SPAD_NOTIFY(i32 %95)
  %97 = call i32 @ntb_peer_db_set(%struct.TYPE_4__* %92, i32 %96)
  %98 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %103 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @PERF_SPAD_NOTIFY(i32 %104)
  %106 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %110

107:                                              ; preds = %47
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %21

110:                                              ; preds = %51, %21
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @MSG_TRIES, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @EAGAIN, align 4
  %117 = sub nsw i32 0, %116
  br label %118

118:                                              ; preds = %115, %114
  %119 = phi i32 [ 0, %114 ], [ %117, %115 ]
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %29
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @perf_link_is_up(%struct.perf_peer*) #1

declare dso_local i64 @ntb_peer_spad_read(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @PERF_SPAD_CMD(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ntb_peer_spad_write(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @PERF_SPAD_LDATA(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @PERF_SPAD_HDATA(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @ntb_peer_db_set(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PERF_SPAD_NOTIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
