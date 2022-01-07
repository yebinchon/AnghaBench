; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_set_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_set_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IPA_SETADP_SET_PROMISC_MODE = common dso_local global i32 0, align 4
@IPA_SETADP_SET_DIAG_ASSIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"+promisc\00", align 1
@QETH_DIAGS_CMD_TRACE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"-promisc\00", align 1
@QETH_DIAGS_CMD_TRACE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_l3_set_promisc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_set_promisc_mode(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %5 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IFF_PROMISC, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %20 = call i64 @IS_VM_NIC(%struct.qeth_card* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %24 = load i32, i32* @IPA_SETADP_SET_PROMISC_MODE, align 4
  %25 = call i64 @qeth_adp_supported(%struct.qeth_card* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @qeth_setadp_promisc_mode(%struct.qeth_card* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  br label %60

32:                                               ; preds = %18
  %33 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %40 = load i32, i32* @IPA_SETADP_SET_DIAG_ASSIST, align 4
  %41 = call i64 @qeth_adp_supported(%struct.qeth_card* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %48 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %47, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %50 = load i32, i32* @QETH_DIAGS_CMD_TRACE_ENABLE, align 4
  %51 = call i32 @qeth_diags_trace(%struct.qeth_card* %49, i32 %50)
  br label %58

52:                                               ; preds = %43
  %53 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %54 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %53, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %56 = load i32, i32* @QETH_DIAGS_CMD_TRACE_DISABLE, align 4
  %57 = call i32 @qeth_diags_trace(%struct.qeth_card* %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %46
  br label %59

59:                                               ; preds = %58, %38, %32
  br label %60

60:                                               ; preds = %17, %59, %31
  ret void
}

declare dso_local i64 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i64 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_setadp_promisc_mode(%struct.qeth_card*, i32) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_diags_trace(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
