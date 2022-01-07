; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt.c_ieee80211_unregister_crypto_ops_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt.c_ieee80211_unregister_crypto_ops_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.ieee80211_crypto_ops = type { i32 }
%struct.ieee80211_crypto_alg = type { i32, %struct.ieee80211_crypto_ops* }

@hcrypt = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"ieee80211_crypt: unregistered algorithm '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_unregister_crypto_ops(%struct.ieee80211_crypto_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_crypto_ops*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.ieee80211_crypto_alg*, align 8
  %7 = alloca %struct.ieee80211_crypto_alg*, align 8
  store %struct.ieee80211_crypto_ops* %0, %struct.ieee80211_crypto_ops** %3, align 8
  store %struct.ieee80211_crypto_alg* null, %struct.ieee80211_crypto_alg** %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hcrypt, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hcrypt, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hcrypt, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8
  store %struct.list_head* %19, %struct.list_head** %5, align 8
  br label %20

20:                                               ; preds = %39, %11
  %21 = load %struct.list_head*, %struct.list_head** %5, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hcrypt, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = icmp ne %struct.list_head* %21, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.list_head*, %struct.list_head** %5, align 8
  %27 = bitcast %struct.list_head* %26 to %struct.ieee80211_crypto_alg*
  store %struct.ieee80211_crypto_alg* %27, %struct.ieee80211_crypto_alg** %7, align 8
  %28 = load %struct.ieee80211_crypto_alg*, %struct.ieee80211_crypto_alg** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_crypto_alg, %struct.ieee80211_crypto_alg* %28, i32 0, i32 1
  %30 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %29, align 8
  %31 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %3, align 8
  %32 = icmp eq %struct.ieee80211_crypto_ops* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.ieee80211_crypto_alg*, %struct.ieee80211_crypto_alg** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_crypto_alg, %struct.ieee80211_crypto_alg* %34, i32 0, i32 0
  %36 = call i32 @list_del(i32* %35)
  %37 = load %struct.ieee80211_crypto_alg*, %struct.ieee80211_crypto_alg** %7, align 8
  store %struct.ieee80211_crypto_alg* %37, %struct.ieee80211_crypto_alg** %6, align 8
  br label %43

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.list_head*, %struct.list_head** %5, align 8
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %40, i32 0, i32 0
  %42 = load %struct.list_head*, %struct.list_head** %41, align 8
  store %struct.list_head* %42, %struct.list_head** %5, align 8
  br label %20

43:                                               ; preds = %33, %20
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hcrypt, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.ieee80211_crypto_alg*, %struct.ieee80211_crypto_alg** %6, align 8
  %49 = icmp ne %struct.ieee80211_crypto_alg* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.ieee80211_crypto_alg*, %struct.ieee80211_crypto_alg** %6, align 8
  %56 = call i32 @kfree(%struct.ieee80211_crypto_alg* %55)
  br label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.ieee80211_crypto_alg*, %struct.ieee80211_crypto_alg** %6, align 8
  %59 = icmp ne %struct.ieee80211_crypto_alg* %58, null
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 0, i32 -1
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
