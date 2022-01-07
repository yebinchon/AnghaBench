; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_deliver_cb_tell_me_about_yourself.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_deliver_cb_tell_me_about_yourself.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_CALL_SV_REPLYING = common dso_local global i32 0, align 4
@afs_io_error_cm_reply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_cb_tell_me_about_yourself to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_cb_tell_me_about_yourself(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %5 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %7 = call i32 @afs_extract_discard(%struct.afs_call* %6, i32 0)
  %8 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %9 = call i32 @afs_extract_data(%struct.afs_call* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %16 = load i32, i32* @AFS_CALL_SV_REPLYING, align 4
  %17 = call i32 @afs_check_call_state(%struct.afs_call* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %21 = load i32, i32* @afs_io_error_cm_reply, align 4
  %22 = call i32 @afs_io_error(%struct.afs_call* %20, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %14
  %24 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %25 = call i32 @afs_find_cm_server_by_peer(%struct.afs_call* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %19, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @afs_extract_discard(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_extract_data(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_check_call_state(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_io_error(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_find_cm_server_by_peer(%struct.afs_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
