; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_in_comm_rf_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_in_comm_rf_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.port100_cb_arg = type { i32, i32 (i32, i32, %struct.sk_buff*)* }

@.str = private unnamed_addr constant [32 x i8] c"Invalid packet length received\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PORT100_CMD_STATUS_TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@PORT100_CMD_STATUS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"in_comm_rf failed with status 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port100*, i8*, %struct.sk_buff*)* @port100_in_comm_rf_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port100_in_comm_rf_complete(%struct.port100* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.port100*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.port100_cb_arg*, align 8
  %8 = alloca i32 (i32, i32, %struct.sk_buff*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.port100* %0, %struct.port100** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.port100_cb_arg*
  store %struct.port100_cb_arg* %12, %struct.port100_cb_arg** %7, align 8
  %13 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %7, align 8
  %14 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %13, i32 0, i32 1
  %15 = load i32 (i32, i32, %struct.sk_buff*)*, i32 (i32, i32, %struct.sk_buff*)** %14, align 8
  store i32 (i32, i32, %struct.sk_buff*)* %15, i32 (i32, i32, %struct.sk_buff*)** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i64 @IS_ERR(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.sk_buff* %20)
  store i32 %21, i32* %10, align 4
  br label %71

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.port100*, %struct.port100** %4, align 8
  %29 = getelementptr inbounds %struct.port100, %struct.port100* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @nfc_err(i32* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %66

35:                                               ; preds = %22
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @skb_pull(%struct.sk_buff* %42, i32 8)
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @PORT100_CMD_STATUS_TIMEOUT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %66

50:                                               ; preds = %35
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @PORT100_CMD_STATUS_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.port100*, %struct.port100** %4, align 8
  %56 = getelementptr inbounds %struct.port100, %struct.port100* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %9, align 8
  %60 = call i32 (i32*, i8*, ...) @nfc_err(i32* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %66

63:                                               ; preds = %50
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call i32 @skb_pull(%struct.sk_buff* %64, i32 1)
  br label %71

66:                                               ; preds = %54, %47, %27
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  %69 = load i32, i32* %10, align 4
  %70 = call %struct.sk_buff* @ERR_PTR(i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %6, align 8
  br label %71

71:                                               ; preds = %66, %63, %19
  %72 = load i32 (i32, i32, %struct.sk_buff*)*, i32 (i32, i32, %struct.sk_buff*)** %8, align 8
  %73 = load %struct.port100*, %struct.port100** %4, align 8
  %74 = getelementptr inbounds %struct.port100, %struct.port100* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %7, align 8
  %77 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32 %72(i32 %75, i32 %78, %struct.sk_buff* %79)
  %81 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %7, align 8
  %82 = call i32 @kfree(%struct.port100_cb_arg* %81)
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @nfc_err(i32*, i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.port100_cb_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
