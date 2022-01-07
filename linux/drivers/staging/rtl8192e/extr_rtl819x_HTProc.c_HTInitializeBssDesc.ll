; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTInitializeBssDesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_HTProc.c_HTInitializeBssDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bss_ht = type { i32, i32, i32, i32, i32, i64, i32, i64, i32 }

@HT_SPEC_VER_IEEE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTInitializeBssDesc(%struct.bss_ht* %0) #0 {
  %2 = alloca %struct.bss_ht*, align 8
  store %struct.bss_ht* %0, %struct.bss_ht** %2, align 8
  %3 = load %struct.bss_ht*, %struct.bss_ht** %2, align 8
  %4 = getelementptr inbounds %struct.bss_ht, %struct.bss_ht* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.bss_ht*, %struct.bss_ht** %2, align 8
  %6 = getelementptr inbounds %struct.bss_ht, %struct.bss_ht* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @memset(i32 %7, i32 0, i32 4)
  %9 = load %struct.bss_ht*, %struct.bss_ht** %2, align 8
  %10 = getelementptr inbounds %struct.bss_ht, %struct.bss_ht* %9, i32 0, i32 7
  store i64 0, i64* %10, align 8
  %11 = load %struct.bss_ht*, %struct.bss_ht** %2, align 8
  %12 = getelementptr inbounds %struct.bss_ht, %struct.bss_ht* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @memset(i32 %13, i32 0, i32 4)
  %15 = load %struct.bss_ht*, %struct.bss_ht** %2, align 8
  %16 = getelementptr inbounds %struct.bss_ht, %struct.bss_ht* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @HT_SPEC_VER_IEEE, align 4
  %18 = load %struct.bss_ht*, %struct.bss_ht** %2, align 8
  %19 = getelementptr inbounds %struct.bss_ht, %struct.bss_ht* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.bss_ht*, %struct.bss_ht** %2, align 8
  %21 = getelementptr inbounds %struct.bss_ht, %struct.bss_ht* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.bss_ht*, %struct.bss_ht** %2, align 8
  %23 = getelementptr inbounds %struct.bss_ht, %struct.bss_ht* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load %struct.bss_ht*, %struct.bss_ht** %2, align 8
  %25 = getelementptr inbounds %struct.bss_ht, %struct.bss_ht* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
