; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_nego_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_nego_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_login* }
%struct.iscsi_login = type { %struct.iscsi_login*, %struct.iscsi_login* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_target_nego_release(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.iscsi_login*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %4 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %4, i32 0, i32 0
  %6 = load %struct.iscsi_login*, %struct.iscsi_login** %5, align 8
  store %struct.iscsi_login* %6, %struct.iscsi_login** %3, align 8
  %7 = load %struct.iscsi_login*, %struct.iscsi_login** %3, align 8
  %8 = icmp ne %struct.iscsi_login* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.iscsi_login*, %struct.iscsi_login** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %11, i32 0, i32 1
  %13 = load %struct.iscsi_login*, %struct.iscsi_login** %12, align 8
  %14 = call i32 @kfree(%struct.iscsi_login* %13)
  %15 = load %struct.iscsi_login*, %struct.iscsi_login** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %15, i32 0, i32 0
  %17 = load %struct.iscsi_login*, %struct.iscsi_login** %16, align 8
  %18 = call i32 @kfree(%struct.iscsi_login* %17)
  %19 = load %struct.iscsi_login*, %struct.iscsi_login** %3, align 8
  %20 = call i32 @kfree(%struct.iscsi_login* %19)
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  store %struct.iscsi_login* null, %struct.iscsi_login** %22, align 8
  br label %23

23:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @kfree(%struct.iscsi_login*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
