; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_query_oat_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_query_oat_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.qeth_qoat_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"qoatcb\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_setadpparms_query_oat_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_setadpparms_query_oat_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca %struct.qeth_qoat_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %13, %struct.qeth_ipa_cmd** %8, align 8
  %14 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %15 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %14, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %17 = call i64 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %79

22:                                               ; preds = %3
  %23 = load %struct.qeth_reply*, %struct.qeth_reply** %6, align 8
  %24 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.qeth_qoat_priv*
  store %struct.qeth_qoat_priv* %26, %struct.qeth_qoat_priv** %9, align 8
  %27 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load i64, i64* %7, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 28
  store i8* %35, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.qeth_qoat_priv*, %struct.qeth_qoat_priv** %9, align 8
  %38 = getelementptr inbounds %struct.qeth_qoat_priv, %struct.qeth_qoat_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qeth_qoat_priv*, %struct.qeth_qoat_priv** %9, align 8
  %41 = getelementptr inbounds %struct.qeth_qoat_priv, %struct.qeth_qoat_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = icmp sgt i32 %36, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %79

48:                                               ; preds = %22
  %49 = load %struct.qeth_qoat_priv*, %struct.qeth_qoat_priv** %9, align 8
  %50 = getelementptr inbounds %struct.qeth_qoat_priv, %struct.qeth_qoat_priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qeth_qoat_priv*, %struct.qeth_qoat_priv** %9, align 8
  %53 = getelementptr inbounds %struct.qeth_qoat_priv, %struct.qeth_qoat_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @memcpy(i32 %55, i8* %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.qeth_qoat_priv*, %struct.qeth_qoat_priv** %9, align 8
  %61 = getelementptr inbounds %struct.qeth_qoat_priv, %struct.qeth_qoat_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %65 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %71 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %69, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %79

78:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %77, %45, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
