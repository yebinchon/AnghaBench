; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_wakeup_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_wakeup_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_ec_priv = type { i32 }

@ec_priv = common dso_local global %struct.olpc_ec_priv* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @olpc_ec_wakeup_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.olpc_ec_priv*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** @ec_priv, align 8
  store %struct.olpc_ec_priv* %4, %struct.olpc_ec_priv** %3, align 8
  %5 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %3, align 8
  %6 = icmp ne %struct.olpc_ec_priv* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %3, align 8
  %15 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
