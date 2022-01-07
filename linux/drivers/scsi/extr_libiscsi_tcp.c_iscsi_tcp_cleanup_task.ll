; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, %struct.iscsi_tcp_task* }
%struct.iscsi_tcp_task = type { i32, %struct.iscsi_r2t_info*, %struct.TYPE_2__, i32 }
%struct.iscsi_r2t_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"pending r2t dropped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_tcp_cleanup_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_tcp_task*, align 8
  %4 = alloca %struct.iscsi_r2t_info*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %5 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %5, i32 0, i32 2
  %7 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %6, align 8
  store %struct.iscsi_tcp_task* %7, %struct.iscsi_tcp_task** %3, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  br label %17

17:                                               ; preds = %23, %13
  %18 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %18, i32 0, i32 3
  %20 = bitcast %struct.iscsi_r2t_info** %4 to i8*
  %21 = call i64 @kfifo_out(i32* %19, i8* %20, i32 8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %25 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast %struct.iscsi_r2t_info** %4 to i8*
  %28 = call i32 @kfifo_in(i32* %26, i8* %27, i32 8)
  %29 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %30 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ISCSI_DBG_TCP(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %34, i32 0, i32 1
  %36 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %35, align 8
  store %struct.iscsi_r2t_info* %36, %struct.iscsi_r2t_info** %4, align 8
  %37 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %4, align 8
  %38 = icmp ne %struct.iscsi_r2t_info* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %41 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast %struct.iscsi_r2t_info** %4 to i8*
  %44 = call i32 @kfifo_in(i32* %42, i8* %43, i32 8)
  %45 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %46 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %45, i32 0, i32 1
  store %struct.iscsi_r2t_info* null, %struct.iscsi_r2t_info** %46, align 8
  br label %47

47:                                               ; preds = %39, %33
  %48 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_bh(i32* %49)
  br label %51

51:                                               ; preds = %47, %12
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @kfifo_out(i32*, i8*, i32) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @ISCSI_DBG_TCP(i32, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
