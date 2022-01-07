; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_tx.c_ieee80211_put_snap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_tx.c_ieee80211_put_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_snap_hdr = type { i32, i32, i32, i8** }

@P802_1H_OUI = common dso_local global i8** null, align 8
@RFC1042_OUI = common dso_local global i8** null, align 8
@SNAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @ieee80211_put_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_put_snap(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_snap_hdr*, align 8
  %6 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8**, i8*** %3, align 8
  %8 = bitcast i8** %7 to %struct.ieee80211_snap_hdr*
  store %struct.ieee80211_snap_hdr* %8, %struct.ieee80211_snap_hdr** %5, align 8
  %9 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_snap_hdr, %struct.ieee80211_snap_hdr* %9, i32 0, i32 0
  store i32 170, i32* %10, align 8
  %11 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_snap_hdr, %struct.ieee80211_snap_hdr* %11, i32 0, i32 1
  store i32 170, i32* %12, align 4
  %13 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_snap_hdr, %struct.ieee80211_snap_hdr* %13, i32 0, i32 2
  store i32 3, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 33079
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 33011
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = load i8**, i8*** @P802_1H_OUI, align 8
  store i8** %21, i8*** %6, align 8
  br label %24

22:                                               ; preds = %17
  %23 = load i8**, i8*** @RFC1042_OUI, align 8
  store i8** %23, i8*** %6, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_snap_hdr, %struct.ieee80211_snap_hdr* %28, i32 0, i32 3
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %27, i8** %31, align 8
  %32 = load i8**, i8*** %6, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_snap_hdr, %struct.ieee80211_snap_hdr* %35, i32 0, i32 3
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* %34, i8** %38, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_snap_hdr, %struct.ieee80211_snap_hdr* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  store i8* %41, i8** %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @htons(i32 %46)
  %48 = load i8**, i8*** %3, align 8
  %49 = load i32, i32* @SNAP_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = bitcast i8** %51 to i32*
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* @SNAP_SIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 4
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
