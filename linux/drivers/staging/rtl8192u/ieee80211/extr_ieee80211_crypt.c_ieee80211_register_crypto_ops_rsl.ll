; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt.c_ieee80211_register_crypto_ops_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_crypt.c_ieee80211_register_crypto_ops_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_crypto_ops = type { i32 }
%struct.ieee80211_crypto_alg = type { i32, %struct.ieee80211_crypto_ops* }

@hcrypt = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ieee80211_crypt: registered algorithm '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_register_crypto_ops(%struct.ieee80211_crypto_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_crypto_ops*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211_crypto_alg*, align 8
  store %struct.ieee80211_crypto_ops* %0, %struct.ieee80211_crypto_ops** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hcrypt, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ieee80211_crypto_alg* @kzalloc(i32 16, i32 %10)
  store %struct.ieee80211_crypto_alg* %11, %struct.ieee80211_crypto_alg** %5, align 8
  %12 = load %struct.ieee80211_crypto_alg*, %struct.ieee80211_crypto_alg** %5, align 8
  %13 = icmp ne %struct.ieee80211_crypto_alg* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %38

17:                                               ; preds = %9
  %18 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %3, align 8
  %19 = load %struct.ieee80211_crypto_alg*, %struct.ieee80211_crypto_alg** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_crypto_alg, %struct.ieee80211_crypto_alg* %19, i32 0, i32 1
  store %struct.ieee80211_crypto_ops* %18, %struct.ieee80211_crypto_ops** %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hcrypt, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ieee80211_crypto_alg*, %struct.ieee80211_crypto_alg** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_crypto_alg, %struct.ieee80211_crypto_alg* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hcrypt, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @list_add(i32* %26, i32* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hcrypt, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %17, %14, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ieee80211_crypto_alg* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
