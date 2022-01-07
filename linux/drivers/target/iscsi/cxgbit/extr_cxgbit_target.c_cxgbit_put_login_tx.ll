; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_put_login_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_put_login_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.cxgbit_sock* }
%struct.cxgbit_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_login = type { i32*, i32*, i32, i64 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ISCSI_HDR_LEN = common dso_local global i32 0, align 4
@CSK_LOGIN_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbit_put_login_tx(%struct.iscsi_conn* %0, %struct.iscsi_login* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_login*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxgbit_sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 1
  %14 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %13, align 8
  store %struct.cxgbit_sock* %14, %struct.cxgbit_sock** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 0, %15
  %17 = and i32 %16, 3
  store i32 %17, i32* %11, align 4
  %18 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %19, %20
  %22 = call %struct.sk_buff* @cxgbit_alloc_skb(%struct.cxgbit_sock* %18, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %90

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %31 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %34 = call i32 @skb_store_bits(%struct.sk_buff* %29, i32 0, i32* %32, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %37 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %38 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @skb_store_bits(%struct.sk_buff* %35, i32 %36, i32* %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %28
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @skb_store_bits(%struct.sk_buff* %45, i32 %48, i32* %10, i32 %49)
  br label %51

51:                                               ; preds = %44, %28
  %52 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %58 = call i64 @cxgbit_set_params(%struct.iscsi_conn* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  store i32 -1, i32* %4, align 4
  br label %90

63:                                               ; preds = %56
  %64 = load i32, i32* @CSK_LOGIN_DONE, align 4
  %65 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %66 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @set_bit(i32 %64, i32* %67)
  br label %69

69:                                               ; preds = %63, %51
  %70 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %8, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = call i64 @cxgbit_queue_skb(%struct.cxgbit_sock* %70, %struct.sk_buff* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %90

75:                                               ; preds = %69
  %76 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %77 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %82 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %87 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %86, i32 0, i32 0
  %88 = call i32 @schedule_delayed_work(i32* %87, i32 0)
  br label %89

89:                                               ; preds = %85, %80, %75
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %74, %60, %25
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.sk_buff* @cxgbit_alloc_skb(%struct.cxgbit_sock*, i32) #1

declare dso_local i32 @skb_store_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i64 @cxgbit_set_params(%struct.iscsi_conn*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @cxgbit_queue_skb(%struct.cxgbit_sock*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
