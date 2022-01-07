; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_form_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_form_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdm_lte_macaddr = common dso_local global i64* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64*, i64)* @form_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @form_mac_address(i64* %0, i64* %1, i64* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64*, i64** %9, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = load i64*, i64** %6, align 8
  %15 = load i64*, i64** @gdm_lte_macaddr, align 8
  %16 = call i32 @ether_addr_copy(i64* %14, i64* %15)
  br label %21

17:                                               ; preds = %5
  %18 = load i64*, i64** %6, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = call i32 @ether_addr_copy(i64* %18, i64* %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i64, i64* %10, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %22
  store i64 %29, i64* %27, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = call i32 @eth_random_addr(i64* %30)
  %32 = load i64*, i64** %7, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = call i32 @memcpy(i64* %32, i64* %33, i32 3)
  %35 = load i64*, i64** %8, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = call i32 @ether_addr_copy(i64* %35, i64* %36)
  ret void
}

declare dso_local i32 @ether_addr_copy(i64*, i64*) #1

declare dso_local i32 @eth_random_addr(i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
