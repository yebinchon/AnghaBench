; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_tg_target_activated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_tg_target_activated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PORT100_MDAA_TGT_HAS_BEEN_ACTIVATED_MASK = common dso_local global i32 0, align 4
@PORT100_MDAA_TGT_WAS_ACTIVATED_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown command type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port100*, i32)* @port100_tg_target_activated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_tg_target_activated(%struct.port100* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.port100*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.port100* %0, %struct.port100** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.port100*, %struct.port100** %4, align 8
  %8 = getelementptr inbounds %struct.port100, %struct.port100* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %16 [
    i32 129, label %10
    i32 128, label %12
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @PORT100_MDAA_TGT_HAS_BEEN_ACTIVATED_MASK, align 4
  store i32 %11, i32* %6, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @PORT100_MDAA_TGT_HAS_BEEN_ACTIVATED_MASK, align 4
  %14 = load i32, i32* @PORT100_MDAA_TGT_WAS_ACTIVATED_MASK, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.port100*, %struct.port100** %4, align 8
  %18 = getelementptr inbounds %struct.port100, %struct.port100* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @nfc_err(i32* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %29

22:                                               ; preds = %12, %10
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @nfc_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
