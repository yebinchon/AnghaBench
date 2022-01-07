; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_correct_routing_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_correct_routing_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@IPA_OSA_MC_ROUTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32*, i32)* @qeth_l3_correct_routing_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_correct_routing_type(%struct.qeth_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %9 = call i64 @IS_IQD(%struct.qeth_card* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %15 [
    i32 132, label %14
    i32 131, label %14
    i32 129, label %14
    i32 133, label %14
  ]

14:                                               ; preds = %11, %11, %11, %11
  store i32 0, i32* %4, align 4
  br label %33

15:                                               ; preds = %11
  br label %29

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %28 [
    i32 132, label %19
    i32 130, label %19
    i32 128, label %19
    i32 133, label %20
  ]

19:                                               ; preds = %16, %16, %16
  store i32 0, i32* %4, align 4
  br label %33

20:                                               ; preds = %16
  %21 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IPA_OSA_MC_ROUTER, align 4
  %24 = call i32 @qeth_is_ipafunc_supported(%struct.qeth_card* %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %33

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %16, %27
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32*, i32** %6, align 8
  store i32 132, i32* %30, align 4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %26, %19, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @qeth_is_ipafunc_supported(%struct.qeth_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
