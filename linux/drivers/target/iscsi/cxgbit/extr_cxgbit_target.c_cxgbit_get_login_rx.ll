; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_get_login_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_get_login_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.cxgbit_sock* }
%struct.cxgbit_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_login = type { i32 }

@CSK_LOGIN_PDU_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbit_get_login_rx(%struct.iscsi_conn* %0, %struct.iscsi_login* %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_login*, align 8
  %5 = alloca %struct.cxgbit_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %4, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 0
  %9 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  store %struct.cxgbit_sock* %9, %struct.cxgbit_sock** %5, align 8
  store i32 -1, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* @CSK_LOGIN_PDU_DONE, align 4
  %12 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %5, align 8
  %13 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @test_and_clear_bit(i32 %11, i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %30

18:                                               ; preds = %10
  %19 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %5, align 8
  %20 = call i32 @cxgbit_wait_rxq(%struct.cxgbit_sock* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* @CSK_LOGIN_PDU_DONE, align 4
  %25 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %5, align 8
  %26 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %24, i32* %27)
  br label %30

29:                                               ; preds = %18
  br label %10

30:                                               ; preds = %23, %10
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cxgbit_wait_rxq(%struct.cxgbit_sock*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
