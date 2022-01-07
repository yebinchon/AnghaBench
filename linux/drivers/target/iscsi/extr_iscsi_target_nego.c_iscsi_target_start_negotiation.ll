; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_start_negotiation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_start_negotiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_login = type { i32 }
%struct.iscsi_conn = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }

@LOGIN_FLAGS_READY = common dso_local global i32 0, align 4
@LOGIN_FLAGS_INITIAL_PDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_target_start_negotiation(%struct.iscsi_login* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca %struct.iscsi_login*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  store %struct.iscsi_login* %0, %struct.iscsi_login** %3, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %4, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %6, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = call i32 @write_lock_bh(i32* %18)
  %20 = load i32, i32* @LOGIN_FLAGS_READY, align 4
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 1
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load i32, i32* @LOGIN_FLAGS_INITIAL_PDU, align 4
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 1
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = call i32 @write_unlock_bh(i32* %29)
  br label %31

31:                                               ; preds = %11, %2
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %33 = load %struct.iscsi_login*, %struct.iscsi_login** %3, align 8
  %34 = call i32 @iscsi_target_do_login(%struct.iscsi_conn* %32, %struct.iscsi_login* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %39 = load i32, i32* @LOGIN_FLAGS_INITIAL_PDU, align 4
  %40 = call i64 @iscsi_target_sk_check_and_clear(%struct.iscsi_conn* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %37, %31
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 0
  %49 = call i32 @cancel_delayed_work_sync(i32* %48)
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %51 = call i32 @iscsi_target_restore_sock_callbacks(%struct.iscsi_conn* %50)
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %53 = call i32 @iscsi_remove_failed_auth_entry(%struct.iscsi_conn* %52)
  br label %54

54:                                               ; preds = %46, %43
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %59 = call i32 @iscsi_target_nego_release(%struct.iscsi_conn* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @iscsi_target_do_login(%struct.iscsi_conn*, %struct.iscsi_login*) #1

declare dso_local i64 @iscsi_target_sk_check_and_clear(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @iscsi_target_restore_sock_callbacks(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_remove_failed_auth_entry(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_target_nego_release(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
