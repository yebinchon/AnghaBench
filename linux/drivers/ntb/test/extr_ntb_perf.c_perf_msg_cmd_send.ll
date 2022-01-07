; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_msg_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_msg_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_peer = type { i32, %struct.perf_ctx* }
%struct.perf_ctx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD send: %d 0x%llx\0A\00", align 1
@MSG_TRIES = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@PERF_MSG_LDATA = common dso_local global i32 0, align 4
@MSG_UDELAY_LOW = common dso_local global i32 0, align 4
@MSG_UDELAY_HIGH = common dso_local global i32 0, align 4
@PERF_MSG_HDATA = common dso_local global i32 0, align 4
@PERF_MSG_CMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_peer*, i32, i32)* @perf_msg_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_msg_cmd_send(%struct.perf_peer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_peer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_peer* %0, %struct.perf_peer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %13 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %12, i32 0, i32 1
  %14 = load %struct.perf_ctx*, %struct.perf_ctx** %13, align 8
  store %struct.perf_ctx* %14, %struct.perf_ctx** %8, align 8
  %15 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call i32 @ntb_msg_outbits(%struct.TYPE_5__* %24)
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %89, %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MSG_TRIES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %26
  %31 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %32 = call i32 @perf_link_is_up(%struct.perf_peer* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOLINK, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %102

37:                                               ; preds = %30
  %38 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @ntb_msg_clear_sts(%struct.TYPE_5__* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %102

47:                                               ; preds = %37
  %48 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %52 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PERF_MSG_LDATA, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @lower_32_bits(i32 %55)
  %57 = call i32 @ntb_peer_msg_write(%struct.TYPE_5__* %50, i32 %53, i32 %54, i32 %56)
  %58 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @ntb_msg_read_sts(%struct.TYPE_5__* %60)
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %47
  %66 = load i32, i32* @MSG_UDELAY_LOW, align 4
  %67 = load i32, i32* @MSG_UDELAY_HIGH, align 4
  %68 = call i32 @usleep_range(i32 %66, i32 %67)
  br label %89

69:                                               ; preds = %47
  %70 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %74 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PERF_MSG_HDATA, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @upper_32_bits(i32 %77)
  %79 = call i32 @ntb_peer_msg_write(%struct.TYPE_5__* %72, i32 %75, i32 %76, i32 %78)
  %80 = load %struct.perf_ctx*, %struct.perf_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %84 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @PERF_MSG_CMD, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @ntb_peer_msg_write(%struct.TYPE_5__* %82, i32 %85, i32 %86, i32 %87)
  br label %92

89:                                               ; preds = %65
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %26

92:                                               ; preds = %69, %26
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @MSG_TRIES, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  br label %100

100:                                              ; preds = %97, %96
  %101 = phi i32 [ 0, %96 ], [ %99, %97 ]
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %45, %34
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ntb_msg_outbits(%struct.TYPE_5__*) #1

declare dso_local i32 @perf_link_is_up(%struct.perf_peer*) #1

declare dso_local i32 @ntb_msg_clear_sts(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ntb_peer_msg_write(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @ntb_msg_read_sts(%struct.TYPE_5__*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
