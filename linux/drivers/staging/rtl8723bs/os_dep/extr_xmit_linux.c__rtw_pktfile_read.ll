; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_xmit_linux.c__rtw_pktfile_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_xmit_linux.c__rtw_pktfile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_file = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_rtw_pktfile_read(%struct.pkt_file* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.pkt_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pkt_file* %0, %struct.pkt_file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.pkt_file*, %struct.pkt_file** %4, align 8
  %9 = call i64 @rtw_remainder_len(%struct.pkt_file* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  br label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  store i64 %18, i64* %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.pkt_file*, %struct.pkt_file** %4, align 8
  %23 = getelementptr inbounds %struct.pkt_file, %struct.pkt_file* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pkt_file*, %struct.pkt_file** %4, align 8
  %26 = getelementptr inbounds %struct.pkt_file, %struct.pkt_file* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pkt_file*, %struct.pkt_file** %4, align 8
  %29 = getelementptr inbounds %struct.pkt_file, %struct.pkt_file* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @skb_copy_bits(i32 %24, i64 %31, i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %21, %17
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.pkt_file*, %struct.pkt_file** %4, align 8
  %38 = getelementptr inbounds %struct.pkt_file, %struct.pkt_file* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.pkt_file*, %struct.pkt_file** %4, align 8
  %45 = getelementptr inbounds %struct.pkt_file, %struct.pkt_file* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

declare dso_local i64 @rtw_remainder_len(%struct.pkt_file*) #1

declare dso_local i32 @skb_copy_bits(i32, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
