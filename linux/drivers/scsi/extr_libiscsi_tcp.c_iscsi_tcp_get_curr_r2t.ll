; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_get_curr_r2t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_get_curr_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_r2t_info = type { i64, i64 }
%struct.iscsi_task = type { i32, %struct.iscsi_r2t_info, %struct.iscsi_tcp_task* }
%struct.iscsi_tcp_task = type { i32, %struct.iscsi_r2t_info*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"  done with r2t %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_r2t_info* (%struct.iscsi_task*)* @iscsi_tcp_get_curr_r2t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_r2t_info* @iscsi_tcp_get_curr_r2t(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_tcp_task*, align 8
  %4 = alloca %struct.iscsi_r2t_info*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %5 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %5, i32 0, i32 2
  %7 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %6, align 8
  store %struct.iscsi_tcp_task* %7, %struct.iscsi_tcp_task** %3, align 8
  store %struct.iscsi_r2t_info* null, %struct.iscsi_r2t_info** %4, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %9 = call i64 @iscsi_task_has_unsol_data(%struct.iscsi_task* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %13 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %12, i32 0, i32 1
  store %struct.iscsi_r2t_info* %13, %struct.iscsi_r2t_info** %4, align 8
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %18, i32 0, i32 1
  %20 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %19, align 8
  %21 = icmp ne %struct.iscsi_r2t_info* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %23, i32 0, i32 1
  %25 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %24, align 8
  store %struct.iscsi_r2t_info* %25, %struct.iscsi_r2t_info** %4, align 8
  %26 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %4, align 8
  %38 = call i32 @ISCSI_DBG_TCP(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.iscsi_r2t_info* %37)
  %39 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %40 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %43 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %42, i32 0, i32 1
  %44 = bitcast %struct.iscsi_r2t_info** %43 to i8*
  %45 = call i32 @kfifo_in(i32* %41, i8* %44, i32 8)
  store %struct.iscsi_r2t_info* null, %struct.iscsi_r2t_info** %4, align 8
  %46 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %47 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %46, i32 0, i32 1
  store %struct.iscsi_r2t_info* null, %struct.iscsi_r2t_info** %47, align 8
  br label %48

48:                                               ; preds = %33, %22
  br label %49

49:                                               ; preds = %48, %14
  %50 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %4, align 8
  %51 = icmp eq %struct.iscsi_r2t_info* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %54 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %53, i32 0, i32 2
  %55 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %56 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %55, i32 0, i32 1
  %57 = bitcast %struct.iscsi_r2t_info** %56 to i8*
  %58 = call i32 @kfifo_out(i32* %54, i8* %57, i32 8)
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 8
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store %struct.iscsi_r2t_info* null, %struct.iscsi_r2t_info** %4, align 8
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %64 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %63, i32 0, i32 1
  %65 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %64, align 8
  store %struct.iscsi_r2t_info* %65, %struct.iscsi_r2t_info** %4, align 8
  br label %66

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %69 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_bh(i32* %69)
  br label %71

71:                                               ; preds = %67, %11
  %72 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %4, align 8
  ret %struct.iscsi_r2t_info* %72
}

declare dso_local i64 @iscsi_task_has_unsol_data(%struct.iscsi_task*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ISCSI_DBG_TCP(i32, i8*, %struct.iscsi_r2t_info*) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @kfifo_out(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
