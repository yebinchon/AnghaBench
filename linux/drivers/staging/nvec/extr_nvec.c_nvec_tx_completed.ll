; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_tx_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_tx_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvec_chip = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"premature END_TRANS, resending\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvec_chip*)* @nvec_tx_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvec_tx_completed(%struct.nvec_chip* %0) #0 {
  %2 = alloca %struct.nvec_chip*, align 8
  store %struct.nvec_chip* %0, %struct.nvec_chip** %2, align 8
  %3 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %4 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %9 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %7, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %16 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %20 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %24 = call i32 @nvec_gpio_set_value(%struct.nvec_chip* %23, i32 0)
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.nvec_chip*, %struct.nvec_chip** %2, align 8
  %27 = getelementptr inbounds %struct.nvec_chip, %struct.nvec_chip* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %14
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nvec_gpio_set_value(%struct.nvec_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
