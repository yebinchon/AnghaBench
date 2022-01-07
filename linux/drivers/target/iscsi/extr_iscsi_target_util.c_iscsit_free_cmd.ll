; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_free_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_free_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, %struct.se_cmd }
%struct.se_cmd = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_free_cmd(%struct.iscsi_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 1
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi %struct.se_cmd* [ %14, %12 ], [ null, %15 ]
  store %struct.se_cmd* %17, %struct.se_cmd** %5, align 8
  %18 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @__iscsit_free_cmd(%struct.iscsi_cmd* %25, i32 %26)
  %28 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %29 = icmp ne %struct.se_cmd* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %16
  %31 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @transport_generic_free_cmd(%struct.se_cmd* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @__iscsit_free_cmd(%struct.iscsi_cmd* %45, i32 %46)
  %48 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %49 = call i32 @target_put_sess_cmd(%struct.se_cmd* %48)
  br label %50

50:                                               ; preds = %44, %39, %36, %30
  br label %54

51:                                               ; preds = %16
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %53 = call i32 @iscsit_release_cmd(%struct.iscsi_cmd* %52)
  br label %54

54:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__iscsit_free_cmd(%struct.iscsi_cmd*, i32) #1

declare dso_local i32 @transport_generic_free_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @target_put_sess_cmd(%struct.se_cmd*) #1

declare dso_local i32 @iscsit_release_cmd(%struct.iscsi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
