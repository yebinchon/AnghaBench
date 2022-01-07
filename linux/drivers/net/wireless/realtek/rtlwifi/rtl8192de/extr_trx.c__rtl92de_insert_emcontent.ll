; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c__rtl92de_insert_emcontent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c__rtl92de_insert_emcontent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_tcb_desc = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_tcb_desc*, i32*)* @_rtl92de_insert_emcontent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92de_insert_emcontent(%struct.rtl_tcb_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.rtl_tcb_desc*, align 8
  %4 = alloca i32*, align 8
  store %struct.rtl_tcb_desc* %0, %struct.rtl_tcb_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @memset(i32* %5, i32 0, i32 8)
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @SET_EARLYMODE_PKTNUM(i32* %7, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SET_EARLYMODE_LEN0(i32* %12, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SET_EARLYMODE_LEN1(i32* %19, i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %28 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  %33 = call i32 @SET_EARLYMODE_LEN2_1(i32* %26, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %36 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 4
  %41 = call i32 @SET_EARLYMODE_LEN2_2(i32* %34, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SET_EARLYMODE_LEN3(i32* %42, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %3, align 8
  %51 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SET_EARLYMODE_LEN4(i32* %49, i32 %54)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @SET_EARLYMODE_PKTNUM(i32*, i32) #1

declare dso_local i32 @SET_EARLYMODE_LEN0(i32*, i32) #1

declare dso_local i32 @SET_EARLYMODE_LEN1(i32*, i32) #1

declare dso_local i32 @SET_EARLYMODE_LEN2_1(i32*, i32) #1

declare dso_local i32 @SET_EARLYMODE_LEN2_2(i32*, i32) #1

declare dso_local i32 @SET_EARLYMODE_LEN3(i32*, i32) #1

declare dso_local i32 @SET_EARLYMODE_LEN4(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
