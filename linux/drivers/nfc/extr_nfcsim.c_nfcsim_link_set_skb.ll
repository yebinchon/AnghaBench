; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_link_set_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_link_set_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcsim_link = type { i32, i8*, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfcsim_link*, %struct.sk_buff*, i8*, i8*)* @nfcsim_link_set_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfcsim_link_set_skb(%struct.nfcsim_link* %0, %struct.sk_buff* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.nfcsim_link*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.nfcsim_link* %0, %struct.nfcsim_link** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %10 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %13 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %12, i32 0, i32 3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %15 = call i32 @dev_kfree_skb(%struct.sk_buff* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %18 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %17, i32 0, i32 3
  store %struct.sk_buff* %16, %struct.sk_buff** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %21 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %24 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.nfcsim_link*, %struct.nfcsim_link** %5, align 8
  %26 = getelementptr inbounds %struct.nfcsim_link, %struct.nfcsim_link* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
