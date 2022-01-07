; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_release_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_release_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32, i32, i32, i32, %struct.iscsi_session*, %struct.TYPE_2__*, i32, %struct.se_cmd }
%struct.iscsi_session = type { i32 }
%struct.TYPE_2__ = type { %struct.iscsi_session* }
%struct.se_cmd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_release_cmd(%struct.iscsi_cmd* %0) #0 {
  %2 = alloca %struct.iscsi_cmd*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.se_cmd*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %2, align 8
  %5 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %5, i32 0, i32 10
  store %struct.se_cmd* %6, %struct.se_cmd** %4, align 8
  %7 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %7, i32 0, i32 9
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %19, i32 0, i32 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %22, align 8
  store %struct.iscsi_session* %23, %struct.iscsi_session** %3, align 8
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %25, i32 0, i32 7
  %27 = load %struct.iscsi_session*, %struct.iscsi_session** %26, align 8
  store %struct.iscsi_session* %27, %struct.iscsi_session** %3, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %30 = icmp ne %struct.iscsi_session* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ true, %28 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %42 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @kfree(i32 %43)
  %45 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @kfree(i32 %51)
  %53 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %54 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kfree(i32 %55)
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @kfree(i32 %59)
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %62 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @kfree(i32 %63)
  %65 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %66 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @kfree(i32 %67)
  %69 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %70 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %73 = call i32 @target_free_tag(i32 %71, %struct.se_cmd* %72)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @target_free_tag(i32, %struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
