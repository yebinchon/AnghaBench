; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_rsvd_page_list_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_rsvd_page_list_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_rsvd_page = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32, i32*, %struct.rtw_rsvd_page*)* @rtw_rsvd_page_list_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_rsvd_page_list_to_buf(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.rtw_rsvd_page* %5) #0 {
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rtw_rsvd_page*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.rtw_rsvd_page* %5, %struct.rtw_rsvd_page** %12, align 8
  %14 = load %struct.rtw_rsvd_page*, %struct.rtw_rsvd_page** %12, align 8
  %15 = getelementptr inbounds %struct.rtw_rsvd_page, %struct.rtw_rsvd_page* %14, i32 0, i32 1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %13, align 8
  %17 = load %struct.rtw_rsvd_page*, %struct.rtw_rsvd_page** %12, align 8
  %18 = getelementptr inbounds %struct.rtw_rsvd_page, %struct.rtw_rsvd_page* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %24 = call i32 @rtw_fill_rsvd_page_desc(%struct.rtw_dev* %22, %struct.sk_buff* %23)
  br label %25

25:                                               ; preds = %21, %6
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, 1
  %36 = mul nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32* %38, i32 %41, i32 %44)
  br label %55

46:                                               ; preds = %25
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32* %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %46, %28
  ret void
}

declare dso_local i32 @rtw_fill_rsvd_page_desc(%struct.rtw_dev*, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
