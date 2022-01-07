; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_access_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_access_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { i64, i32 }
%struct.iscsi_portal_group = type { i64, i32, i32 }

@ISCSI_NP_THREAD_ACTIVE = common dso_local global i64 0, align 8
@TPG_STATE_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_access_np(%struct.iscsi_np* %0, %struct.iscsi_portal_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_np*, align 8
  %5 = alloca %struct.iscsi_portal_group*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_np* %0, %struct.iscsi_np** %4, align 8
  store %struct.iscsi_portal_group* %1, %struct.iscsi_portal_group** %5, align 8
  %7 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ISCSI_NP_THREAD_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %16, i32 0, i32 1
  %18 = call i32 @spin_unlock_bh(i32* %17)
  store i32 -1, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.iscsi_np*, %struct.iscsi_np** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock_bh(i32* %21)
  %23 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TPG_STATE_ACTIVE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %33 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_bh(i32* %33)
  store i32 -1, i32* %3, align 4
  br label %65

35:                                               ; preds = %19
  %36 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %40 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %39, i32 0, i32 2
  %41 = call i32 @down_interruptible(i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %65

45:                                               ; preds = %35
  %46 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %46, i32 0, i32 1
  %48 = call i32 @spin_lock_bh(i32* %47)
  %49 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TPG_STATE_ACTIVE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %56 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %59 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %58, i32 0, i32 2
  %60 = call i32 @up(i32* %59)
  store i32 -1, i32* %3, align 4
  br label %65

61:                                               ; preds = %45
  %62 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %63 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock_bh(i32* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %54, %44, %31, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
