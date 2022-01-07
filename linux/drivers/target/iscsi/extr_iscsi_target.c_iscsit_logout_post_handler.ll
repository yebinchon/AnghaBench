; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_post_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32 }
%struct.iscsi_conn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_logout_post_handler(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %56 [
    i32 131, label %9
    i32 132, label %18
    i32 130, label %49
  ]

9:                                                ; preds = %2
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %14 [
    i32 128, label %13
    i32 133, label %13
  ]

13:                                               ; preds = %9, %9
  br label %14

14:                                               ; preds = %9, %13
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %16 = call i32 @iscsit_logout_post_handler_closesession(%struct.iscsi_conn* %15)
  br label %17

17:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %31 [
    i32 128, label %30
    i32 133, label %30
  ]

30:                                               ; preds = %26, %26
  br label %31

31:                                               ; preds = %26, %30
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %33 = call i32 @iscsit_logout_post_handler_samecid(%struct.iscsi_conn* %32)
  br label %34

34:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %48

35:                                               ; preds = %18
  %36 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %46 [
    i32 128, label %39
    i32 134, label %45
    i32 133, label %45
  ]

39:                                               ; preds = %35
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @iscsit_logout_post_handler_diffcid(%struct.iscsi_conn* %40, i32 %43)
  br label %47

45:                                               ; preds = %35, %35
  br label %46

46:                                               ; preds = %35, %45
  br label %47

47:                                               ; preds = %46, %39
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %34
  br label %57

49:                                               ; preds = %2
  %50 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %54 [
    i32 128, label %53
    i32 134, label %53
    i32 129, label %53
    i32 133, label %53
  ]

53:                                               ; preds = %49, %49, %49, %49
  br label %54

54:                                               ; preds = %49, %53
  br label %55

55:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %57

56:                                               ; preds = %2
  br label %57

57:                                               ; preds = %56, %55, %48, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @iscsit_logout_post_handler_closesession(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_logout_post_handler_samecid(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_logout_post_handler_diffcid(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
