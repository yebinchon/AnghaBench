; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_update_r2t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_update_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i64 }
%struct.iscsi_r2t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i32, i32)* @iscsit_dataout_update_r2t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_dataout_update_r2t(%struct.iscsi_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_r2t*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

14:                                               ; preds = %3
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.iscsi_r2t* @iscsit_get_r2t_for_eos(%struct.iscsi_cmd* %15, i32 %16, i32 %17)
  store %struct.iscsi_r2t* %18, %struct.iscsi_r2t** %8, align 8
  %19 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %8, align 8
  %20 = icmp ne %struct.iscsi_r2t* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %35

22:                                               ; preds = %14
  %23 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %8, align 8
  %27 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %22, %21, %13
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.iscsi_r2t* @iscsit_get_r2t_for_eos(%struct.iscsi_cmd*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
