; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_i2c.c_fdp_nci_i2c_remove_len_lrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_i2c.c_fdp_nci_i2c_remove_len_lrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }

@FDP_FRAME_HEADROOM = common dso_local global i32 0, align 4
@FDP_FRAME_TAILROOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @fdp_nci_i2c_remove_len_lrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp_nci_i2c_remove_len_lrc(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = load i32, i32* @FDP_FRAME_HEADROOM, align 4
  %5 = call i32 @skb_pull(%struct.sk_buff* %3, i32 %4)
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FDP_FRAME_TAILROOM, align 8
  %11 = sub nsw i64 %9, %10
  %12 = call i32 @skb_trim(%struct.sk_buff* %6, i64 %11)
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
