; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_send_simple_setassparms_prot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_send_simple_setassparms_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@flags_32bit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"simassp%i\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qeth_setassparms_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_send_simple_setassparms_prot(%struct.qeth_card* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @flags_32bit, align 4
  %18 = call i32 @SETASS_DATA_SIZEOF(i32 %17)
  br label %20

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %12, align 4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %22, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store %struct.qeth_cmd_buffer* %30, %struct.qeth_cmd_buffer** %13, align 8
  %31 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %13, align 8
  %32 = icmp ne %struct.qeth_cmd_buffer* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %53

36:                                               ; preds = %20
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %13, align 8
  %43 = call %struct.TYPE_8__* @__ipa_cmd(%struct.qeth_cmd_buffer* %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %36
  %49 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %50 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %13, align 8
  %51 = load i32, i32* @qeth_setassparms_cb, align 4
  %52 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %49, %struct.qeth_cmd_buffer* %50, i32 %51, i32* null)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %33
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @SETASS_DATA_SIZEOF(i32) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_setassparms_cmd(%struct.qeth_card*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
