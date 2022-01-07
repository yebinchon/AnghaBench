; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_put_tcp_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_put_tcp_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.task_struct = type { i32 }

@cifs_tcp_ses_lock = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@CifsExiting = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_put_tcp_session(%struct.TCP_Server_Info* %0, i32 %1) #0 {
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %8 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %16 = call i32 @cifs_net_ns(%struct.TCP_Server_Info* %15)
  %17 = call i32 @put_net(i32 %16)
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %19 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %18, i32 0, i32 6
  %20 = call i32 @list_del_init(i32* %19)
  %21 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %23 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %22, i32 0, i32 5
  %24 = call i32 @cancel_delayed_work_sync(i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %29 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %28, i32 0, i32 4
  %30 = call i32 @cancel_delayed_work(i32* %29)
  br label %35

31:                                               ; preds = %14
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %33 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %32, i32 0, i32 4
  %34 = call i32 @cancel_delayed_work_sync(i32* %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %37 = load i32, i32* @CifsExiting, align 4
  %38 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %39 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %41 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %42 = call i32 @cifs_crypto_secmech_release(%struct.TCP_Server_Info* %41)
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %44 = call i32 @cifs_fscache_release_client_cookie(%struct.TCP_Server_Info* %43)
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %46 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @kfree(i32* %48)
  %50 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %51 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %54 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %57 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %56, i32 0, i32 1
  %58 = call %struct.task_struct* @xchg(i32* %57, i32* null)
  store %struct.task_struct* %58, %struct.task_struct** %5, align 8
  %59 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %60 = icmp ne %struct.task_struct* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %35
  %62 = load i32, i32* @SIGKILL, align 4
  %63 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %64 = call i32 @send_sig(i32 %62, %struct.task_struct* %63, i32 1)
  br label %65

65:                                               ; preds = %12, %61, %35
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_net(i32) #1

declare dso_local i32 @cifs_net_ns(%struct.TCP_Server_Info*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @cifs_crypto_secmech_release(%struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_fscache_release_client_cookie(%struct.TCP_Server_Info*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.task_struct* @xchg(i32*, i32*) #1

declare dso_local i32 @send_sig(i32, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
