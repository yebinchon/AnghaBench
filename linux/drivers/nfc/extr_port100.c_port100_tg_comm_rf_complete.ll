; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_tg_comm_rf_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_tg_comm_rf_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100 = type { i32 }
%struct.sk_buff = type { i64 }
%struct.port100_cb_arg = type { i32, i64, i32 (i32, i32, %struct.sk_buff*)* }
%struct.port100_tg_comm_rf_res = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@PORT100_CMD_STATUS_OK = common dso_local global i64 0, align 8
@PORT100_CMD_STATUS_TIMEOUT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port100*, i8*, %struct.sk_buff*)* @port100_tg_comm_rf_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port100_tg_comm_rf_complete(%struct.port100* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.port100*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.port100_cb_arg*, align 8
  %9 = alloca i32 (i32, i32, %struct.sk_buff*)*, align 8
  %10 = alloca %struct.port100_tg_comm_rf_res*, align 8
  store %struct.port100* %0, %struct.port100** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.port100_cb_arg*
  store %struct.port100_cb_arg* %12, %struct.port100_cb_arg** %8, align 8
  %13 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %8, align 8
  %14 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %13, i32 0, i32 2
  %15 = load i32 (i32, i32, %struct.sk_buff*)*, i32 (i32, i32, %struct.sk_buff*)** %14, align 8
  store i32 (i32, i32, %struct.sk_buff*)* %15, i32 (i32, i32, %struct.sk_buff*)** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i64 @IS_ERR(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %68

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.port100_tg_comm_rf_res*
  store %struct.port100_tg_comm_rf_res* %24, %struct.port100_tg_comm_rf_res** %10, align 8
  %25 = load %struct.port100_tg_comm_rf_res*, %struct.port100_tg_comm_rf_res** %10, align 8
  %26 = getelementptr inbounds %struct.port100_tg_comm_rf_res, %struct.port100_tg_comm_rf_res* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32_to_cpu(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %8, align 8
  %30 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %20
  %34 = load %struct.port100*, %struct.port100** %4, align 8
  %35 = load %struct.port100_tg_comm_rf_res*, %struct.port100_tg_comm_rf_res** %10, align 8
  %36 = getelementptr inbounds %struct.port100_tg_comm_rf_res, %struct.port100_tg_comm_rf_res* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @port100_tg_target_activated(%struct.port100* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.sk_buff* @ERR_PTR(i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %6, align 8
  br label %68

46:                                               ; preds = %33, %20
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @skb_pull(%struct.sk_buff* %47, i32 8)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @PORT100_CMD_STATUS_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @PORT100_CMD_STATUS_TIMEOUT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.sk_buff* @ERR_PTR(i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %6, align 8
  br label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.sk_buff* @ERR_PTR(i32 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %6, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %46
  br label %68

68:                                               ; preds = %67, %40, %19
  %69 = load i32 (i32, i32, %struct.sk_buff*)*, i32 (i32, i32, %struct.sk_buff*)** %9, align 8
  %70 = load %struct.port100*, %struct.port100** %4, align 8
  %71 = getelementptr inbounds %struct.port100, %struct.port100* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %8, align 8
  %74 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 %69(i32 %72, i32 %75, %struct.sk_buff* %76)
  %78 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %8, align 8
  %79 = call i32 @kfree(%struct.port100_cb_arg* %78)
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @port100_tg_target_activated(%struct.port100*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(%struct.port100_cb_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
