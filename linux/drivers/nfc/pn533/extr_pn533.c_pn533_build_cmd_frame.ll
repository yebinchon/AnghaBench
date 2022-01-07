; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_build_cmd_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_build_cmd_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { %struct.pn533_frame_ops* }
%struct.pn533_frame_ops = type { i32 (i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pn533*, i32, %struct.sk_buff*)* @pn533_build_cmd_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn533_build_cmd_frame(%struct.pn533* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.pn533*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pn533_frame_ops*, align 8
  store %struct.pn533* %0, %struct.pn533** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.pn533*, %struct.pn533** %4, align 8
  %13 = getelementptr inbounds %struct.pn533, %struct.pn533* %12, i32 0, i32 0
  %14 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %13, align 8
  store %struct.pn533_frame_ops* %14, %struct.pn533_frame_ops** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %8, align 8
  %17 = getelementptr inbounds %struct.pn533_frame_ops, %struct.pn533_frame_ops* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @skb_push(%struct.sk_buff* %15, i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %8, align 8
  %22 = getelementptr inbounds %struct.pn533_frame_ops, %struct.pn533_frame_ops* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @skb_put(%struct.sk_buff* %20, i32 %23)
  %25 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %8, align 8
  %26 = getelementptr inbounds %struct.pn533_frame_ops, %struct.pn533_frame_ops* %25, i32 0, i32 2
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %27(i32 %30, i32 %31)
  %33 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %8, align 8
  %34 = getelementptr inbounds %struct.pn533_frame_ops, %struct.pn533_frame_ops* %33, i32 0, i32 1
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 %35(i32 %38, i32 %39)
  %41 = load %struct.pn533_frame_ops*, %struct.pn533_frame_ops** %8, align 8
  %42 = getelementptr inbounds %struct.pn533_frame_ops, %struct.pn533_frame_ops* %41, i32 0, i32 0
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %43(i32 %46)
  ret void
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
