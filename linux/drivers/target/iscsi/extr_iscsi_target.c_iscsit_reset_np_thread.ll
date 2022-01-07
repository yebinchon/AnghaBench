; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_reset_np_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_reset_np_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { i64, i32, i32, i64, i32 }
%struct.iscsi_tpg_np = type { i32, i32 }
%struct.iscsi_portal_group = type { i32 }

@ISCSI_NP_THREAD_INACTIVE = common dso_local global i64 0, align 8
@ISCSI_NP_THREAD_RESET = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@iscsit_login_kref_put = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_reset_np_thread(%struct.iscsi_np* %0, %struct.iscsi_tpg_np* %1, %struct.iscsi_portal_group* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_np*, align 8
  %7 = alloca %struct.iscsi_tpg_np*, align 8
  %8 = alloca %struct.iscsi_portal_group*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_np* %0, %struct.iscsi_np** %6, align 8
  store %struct.iscsi_tpg_np* %1, %struct.iscsi_tpg_np** %7, align 8
  store %struct.iscsi_portal_group* %2, %struct.iscsi_portal_group** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %11 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %14 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ISCSI_NP_THREAD_INACTIVE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock_bh(i32* %20)
  store i32 0, i32* %5, align 4
  br label %66

22:                                               ; preds = %4
  %23 = load i64, i64* @ISCSI_NP_THREAD_RESET, align 8
  %24 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %26, i32 0, i32 4
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %30 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = load i32, i32* @SIGINT, align 4
  %38 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %39 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @send_sig(i32 %37, i64 %40, i32 1)
  %42 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %42, i32 0, i32 2
  %44 = call i32 @wait_for_completion(i32* %43)
  %45 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %46 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %45, i32 0, i32 1
  %47 = call i32 @spin_lock_bh(i32* %46)
  br label %48

48:                                               ; preds = %33, %22
  %49 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %7, align 8
  %53 = icmp ne %struct.iscsi_tpg_np* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %7, align 8
  %59 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %58, i32 0, i32 1
  %60 = load i32, i32* @iscsit_login_kref_put, align 4
  %61 = call i32 @kref_put(i32* %59, i32 %60)
  %62 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %7, align 8
  %63 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %62, i32 0, i32 0
  %64 = call i32 @wait_for_completion(i32* %63)
  br label %65

65:                                               ; preds = %57, %54, %48
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %18
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @send_sig(i32, i64, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
