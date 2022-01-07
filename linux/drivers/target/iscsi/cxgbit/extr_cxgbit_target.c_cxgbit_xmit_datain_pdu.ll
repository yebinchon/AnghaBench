; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_xmit_datain_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_xmit_datain_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.cxgbit_sock* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cxgbit_sock = type { i64 }
%struct.iscsi_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iscsi_datain_req = type { i32 }
%struct.iscsi_datain = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_datain_req*, %struct.iscsi_datain*)* @cxgbit_xmit_datain_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_xmit_datain_pdu(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, %struct.iscsi_datain_req* %2, %struct.iscsi_datain* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_cmd*, align 8
  %8 = alloca %struct.iscsi_datain_req*, align 8
  %9 = alloca %struct.iscsi_datain*, align 8
  %10 = alloca %struct.cxgbit_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %7, align 8
  store %struct.iscsi_datain_req* %2, %struct.iscsi_datain_req** %8, align 8
  store %struct.iscsi_datain* %3, %struct.iscsi_datain** %9, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 2
  %16 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %15, align 8
  store %struct.cxgbit_sock* %16, %struct.cxgbit_sock** %10, align 8
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 0, %21
  %23 = and i32 %22, 3
  store i32 %23, i32* %12, align 4
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %4
  %33 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %8, align 8
  %34 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = load %struct.iscsi_datain*, %struct.iscsi_datain** %9, align 8
  %42 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %40
  %46 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %10, align 8
  %47 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.iscsi_datain*, %struct.iscsi_datain** %9, align 8
  %54 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %58 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @atomic_long_add(i64 %56, i32* %60)
  %62 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %10, align 8
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %64 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %8, align 8
  %65 = call i32 @cxgbit_tx_datain_iso(%struct.cxgbit_sock* %62, %struct.iscsi_cmd* %63, %struct.iscsi_datain_req* %64)
  store i32 %65, i32* %5, align 4
  br label %71

66:                                               ; preds = %45, %40, %37, %32, %4
  %67 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %10, align 8
  %68 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %69 = load %struct.iscsi_datain*, %struct.iscsi_datain** %9, align 8
  %70 = call i32 @cxgbit_tx_datain(%struct.cxgbit_sock* %67, %struct.iscsi_cmd* %68, %struct.iscsi_datain* %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %50
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @atomic_long_add(i64, i32*) #1

declare dso_local i32 @cxgbit_tx_datain_iso(%struct.cxgbit_sock*, %struct.iscsi_cmd*, %struct.iscsi_datain_req*) #1

declare dso_local i32 @cxgbit_tx_datain(%struct.cxgbit_sock*, %struct.iscsi_cmd*, %struct.iscsi_datain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
