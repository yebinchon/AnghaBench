; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_ep_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_ep_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.bnx2i_endpoint* }
%struct.bnx2i_endpoint = type { i64, i32 }

@EP_STATE_IDLE = common dso_local global i64 0, align 8
@EP_STATE_CONNECT_FAILED = common dso_local global i64 0, align 8
@EP_STATE_OFLD_FAILED = common dso_local global i64 0, align 8
@EP_STATE_CONNECT_COMPL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_endpoint*, i32)* @bnx2i_ep_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_ep_poll(%struct.iscsi_endpoint* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2i_endpoint*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %8, i32 0, i32 0
  %10 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %9, align 8
  store %struct.bnx2i_endpoint* %10, %struct.bnx2i_endpoint** %6, align 8
  %11 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %12 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EP_STATE_IDLE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EP_STATE_CONNECT_FAILED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %24 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EP_STATE_OFLD_FAILED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %2
  store i32 -1, i32* %3, align 4
  br label %79

29:                                               ; preds = %22
  %30 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %31 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EP_STATE_CONNECT_COMPL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %79

36:                                               ; preds = %29
  %37 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EP_STATE_OFLD_FAILED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %36
  %46 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EP_STATE_CONNECT_FAILED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %53 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EP_STATE_CONNECT_COMPL, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %51, %45, %36
  %58 = phi i1 [ true, %45 ], [ true, %36 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @msecs_to_jiffies(i32 %60)
  %62 = call i32 @wait_event_interruptible_timeout(i32 %39, i32 %59, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %64 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EP_STATE_OFLD_FAILED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i32 -1, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i32, i32* %7, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %76, %72, %35, %28
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
