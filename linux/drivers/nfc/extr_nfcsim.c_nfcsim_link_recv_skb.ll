; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_link_recv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_link_recv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfcsim_link = type { i64, i64, i64, i32, i64, %struct.sk_buff*, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nfcsim_link*, i32, i64, i64)* @nfcsim_link_recv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nfcsim_link_recv_skb(%struct.nfcsim_link* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.nfcsim_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.nfcsim_link* %0, %struct.nfcsim_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %12 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %15 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @msecs_to_jiffies(i32 %17)
  %19 = call i32 @wait_event_interruptible_timeout(i32 %13, i64 %16, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %21 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %20, i32 0, i32 3
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %24 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %23, i32 0, i32 5
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %10, align 8
  %26 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %27 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %26, i32 0, i32 5
  store %struct.sk_buff* null, %struct.sk_buff** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %60

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %38 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %44 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36, %33
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %60

51:                                               ; preds = %42
  %52 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %53 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %56, %48, %30
  %61 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %62 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %61, i32 0, i32 3
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i32 @dev_kfree_skb(%struct.sk_buff* %67)
  %69 = load i32, i32* %9, align 4
  %70 = call %struct.sk_buff* @ERR_PTR(i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %10, align 8
  br label %71

71:                                               ; preds = %66, %60
  %72 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %73 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %74
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
