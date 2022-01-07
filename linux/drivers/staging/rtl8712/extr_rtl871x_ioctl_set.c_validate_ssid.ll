; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_validate_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_validate_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_802_11_ssid = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndis_802_11_ssid*)* @validate_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ssid(%struct.ndis_802_11_ssid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ndis_802_11_ssid*, align 8
  %4 = alloca i32, align 4
  store %struct.ndis_802_11_ssid* %0, %struct.ndis_802_11_ssid** %3, align 8
  %5 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %3, align 8
  %6 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %37, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %3, align 8
  %14 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %3, align 8
  %19 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 32
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %3, align 8
  %28 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %33, 126
  br i1 %34, label %36, label %35

35:                                               ; preds = %26, %17
  store i32 0, i32* %2, align 4
  br label %41

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %11

40:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %35, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
