; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_send_lancmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_send_lancmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32, i32, i32, i32, i32 }
%struct.lcs_buffer = type { i32, i64 }
%struct.lcs_cmd = type { i64, i64 }
%struct.lcs_reply = type { void (%struct.lcs_card.0*, %struct.lcs_cmd.1*)*, i32, i32, i32, i32, i32, %struct.lcs_card* }
%struct.lcs_card.0 = type opaque
%struct.lcs_cmd.1 = type opaque

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sendcmd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lcs_release_buffer = common dso_local global i32 0, align 4
@lcs_lancmd_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rc:%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*, %struct.lcs_buffer*, void (%struct.lcs_card*, %struct.lcs_cmd*)*)* @lcs_send_lancmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_send_lancmd(%struct.lcs_card* %0, %struct.lcs_buffer* %1, void (%struct.lcs_card*, %struct.lcs_cmd*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcs_card*, align 8
  %6 = alloca %struct.lcs_buffer*, align 8
  %7 = alloca void (%struct.lcs_card*, %struct.lcs_cmd*)*, align 8
  %8 = alloca %struct.lcs_reply*, align 8
  %9 = alloca %struct.lcs_cmd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %5, align 8
  store %struct.lcs_buffer* %1, %struct.lcs_buffer** %6, align 8
  store void (%struct.lcs_card*, %struct.lcs_cmd*)* %2, void (%struct.lcs_card*, %struct.lcs_cmd*)** %7, align 8
  %12 = load i32, i32* @trace, align 4
  %13 = call i32 @LCS_DBF_TEXT(i32 4, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.lcs_buffer*, %struct.lcs_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.lcs_cmd*
  store %struct.lcs_cmd* %17, %struct.lcs_cmd** %9, align 8
  %18 = load %struct.lcs_cmd*, %struct.lcs_cmd** %9, align 8
  %19 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %21 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = sext i32 %22 to i64
  %25 = load %struct.lcs_cmd*, %struct.lcs_cmd** %9, align 8
  %26 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.lcs_cmd*, %struct.lcs_cmd** %9, align 8
  %28 = call %struct.lcs_reply* @lcs_alloc_reply(%struct.lcs_cmd* %27)
  store %struct.lcs_reply* %28, %struct.lcs_reply** %8, align 8
  %29 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %30 = icmp ne %struct.lcs_reply* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %110

34:                                               ; preds = %3
  %35 = load void (%struct.lcs_card*, %struct.lcs_cmd*)*, void (%struct.lcs_card*, %struct.lcs_cmd*)** %7, align 8
  %36 = bitcast void (%struct.lcs_card*, %struct.lcs_cmd*)* %35 to void (%struct.lcs_card.0*, %struct.lcs_cmd.1*)*
  %37 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %38 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %37, i32 0, i32 0
  store void (%struct.lcs_card.0*, %struct.lcs_cmd.1*)* %36, void (%struct.lcs_card.0*, %struct.lcs_cmd.1*)** %38, align 8
  %39 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %40 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %41 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %40, i32 0, i32 6
  store %struct.lcs_card* %39, %struct.lcs_card** %41, align 8
  %42 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %43 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %42, i32 0, i32 2
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %47 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %46, i32 0, i32 5
  %48 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %49 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %48, i32 0, i32 3
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %52 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %51, i32 0, i32 2
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* @lcs_release_buffer, align 4
  %56 = load %struct.lcs_buffer*, %struct.lcs_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %59 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %58, i32 0, i32 1
  %60 = load %struct.lcs_buffer*, %struct.lcs_buffer** %6, align 8
  %61 = call i32 @lcs_ready_buffer(i32* %59, %struct.lcs_buffer* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %34
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %110

66:                                               ; preds = %34
  %67 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %68 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %67, i32 0, i32 2
  %69 = load i32, i32* @lcs_lancmd_timeout, align 4
  %70 = call i32 @timer_setup(i32* %68, i32 %69, i32 0)
  %71 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %72 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %71, i32 0, i32 2
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i32, i32* @HZ, align 4
  %75 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %76 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %73, %79
  %81 = call i32 @mod_timer(i32* %72, i64 %80)
  %82 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %83 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %86 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @wait_event(i32 %84, i32 %87)
  %89 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %90 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %89, i32 0, i32 2
  %91 = call i32 @del_timer_sync(i32* %90)
  %92 = load i32, i32* @trace, align 4
  %93 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %94 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %98 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %11, align 4
  %100 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %101 = call i32 @lcs_put_reply(%struct.lcs_reply* %100)
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %66
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  br label %108

107:                                              ; preds = %66
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 0, %107 ]
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %64, %31
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.lcs_reply* @lcs_alloc_reply(%struct.lcs_cmd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lcs_ready_buffer(i32*, %struct.lcs_buffer*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @lcs_put_reply(%struct.lcs_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
