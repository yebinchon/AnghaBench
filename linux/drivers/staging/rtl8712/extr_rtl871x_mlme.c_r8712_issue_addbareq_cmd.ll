; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_issue_addbareq_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_issue_addbareq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_issue_addbareq_cmd(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.ht_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 0
  store %struct.mlme_priv* %8, %struct.mlme_priv** %5, align 8
  %9 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %9, i32 0, i32 0
  store %struct.ht_priv* %10, %struct.ht_priv** %6, align 8
  %11 = load %struct.ht_priv*, %struct.ht_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load %struct.ht_priv*, %struct.ht_priv** %6, align 8
  %17 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.ht_priv*, %struct.ht_priv** %6, align 8
  %22 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %20
  %30 = load %struct._adapter*, %struct._adapter** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @r8712_addbareq_cmd(%struct._adapter* %30, i32 %31)
  %33 = load %struct.ht_priv*, %struct.ht_priv** %6, align 8
  %34 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %29, %20
  br label %40

40:                                               ; preds = %39, %15, %2
  ret void
}

declare dso_local i32 @r8712_addbareq_cmd(%struct._adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
