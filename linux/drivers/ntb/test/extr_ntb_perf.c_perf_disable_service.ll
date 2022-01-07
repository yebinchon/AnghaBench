; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_disable_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_disable_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ctx = type { i64, i32, i32, i32, %struct.perf_peer* }
%struct.perf_peer = type { i32, i32 }

@perf_msg_cmd_send = common dso_local global i64 0, align 8
@PERF_CMD_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_ctx*)* @perf_disable_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_disable_service(%struct.perf_ctx* %0) #0 {
  %2 = alloca %struct.perf_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_peer*, align 8
  store %struct.perf_ctx* %0, %struct.perf_ctx** %2, align 8
  %6 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @perf_msg_cmd_send, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntb_msg_inbits(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ntb_msg_set_mask(i32 %18, i32 %19)
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PERF_SPAD_NOTIFY(i32 %27)
  %29 = call i32 @ntb_db_set_mask(i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %21, %11
  %31 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntb_clear_ctx(i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %50, %30
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %42, i32 0, i32 4
  %44 = load %struct.perf_peer*, %struct.perf_peer** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %44, i64 %46
  %48 = load i32, i32* @PERF_CMD_CLEAR, align 4
  %49 = call i32 @perf_cmd_exec(%struct.perf_peer* %47, i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %35

53:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %61, i32 0, i32 4
  %63 = load %struct.perf_peer*, %struct.perf_peer** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %63, i64 %65
  %67 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %66, i32 0, i32 1
  %68 = call i32 @flush_work(i32* %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %54

72:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %94, %72
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %81 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %80, i32 0, i32 4
  %82 = load %struct.perf_peer*, %struct.perf_peer** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %82, i64 %84
  store %struct.perf_peer* %85, %struct.perf_peer** %5, align 8
  %86 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.perf_peer*, %struct.perf_peer** %5, align 8
  %90 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PERF_SPAD_CMD(i32 %91)
  %93 = call i32 @ntb_spad_write(i32 %88, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %79
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %73

97:                                               ; preds = %73
  %98 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %99 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %102 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @PERF_SPAD_NOTIFY(i32 %103)
  %105 = call i32 @ntb_db_clear(i32 %100, i32 %104)
  %106 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %107 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ntb_link_disable(i32 %108)
  ret void
}

declare dso_local i32 @ntb_msg_inbits(i32) #1

declare dso_local i32 @ntb_msg_set_mask(i32, i32) #1

declare dso_local i32 @ntb_db_set_mask(i32, i32) #1

declare dso_local i32 @PERF_SPAD_NOTIFY(i32) #1

declare dso_local i32 @ntb_clear_ctx(i32) #1

declare dso_local i32 @perf_cmd_exec(%struct.perf_peer*, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @ntb_spad_write(i32, i32, i32) #1

declare dso_local i32 @PERF_SPAD_CMD(i32) #1

declare dso_local i32 @ntb_db_clear(i32, i32) #1

declare dso_local i32 @ntb_link_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
