; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_rxip_del_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_rxip_del_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@QETH_IP_TYPE_RXIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.qeth_card*, i32)* @qeth_l3_dev_rxip_del_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_dev_rxip_del_store(i8* %0, i64 %1, %struct.qeth_card* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.qeth_card* %2, %struct.qeth_card** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %17 = call i32 @qeth_l3_parse_rxipe(i8* %14, i32 %15, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %23 = load i32, i32* @QETH_IP_TYPE_RXIP, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @qeth_l3_modify_rxip_vipa(%struct.qeth_card* %21, i32 0, i32* %22, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %20, %4
  %27 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  br label %37

35:                                               ; preds = %26
  %36 = load i64, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i64 [ %34, %32 ], [ %36, %35 ]
  %39 = trunc i64 %38 to i32
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qeth_l3_parse_rxipe(i8*, i32, i32*) #1

declare dso_local i32 @qeth_l3_modify_rxip_vipa(%struct.qeth_card*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
