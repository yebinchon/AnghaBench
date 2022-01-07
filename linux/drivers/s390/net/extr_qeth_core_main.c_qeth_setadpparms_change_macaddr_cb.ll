; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_change_macaddr_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_change_macaddr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.qeth_ipacmd_setadpparms }
%struct.qeth_ipacmd_setadpparms = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"chgmaccb\00", align 1
@EIO = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@QETH_SETADP_FLAGS_VIRTUAL_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_setadpparms_change_macaddr_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_setadpparms_change_macaddr_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca %struct.qeth_ipacmd_setadpparms*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = inttoptr i64 %10 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %11, %struct.qeth_ipa_cmd** %8, align 8
  %12 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %13 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %12, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %15 = call i64 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %22 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store %struct.qeth_ipacmd_setadpparms* %23, %struct.qeth_ipacmd_setadpparms** %9, align 8
  %24 = load %struct.qeth_ipacmd_setadpparms*, %struct.qeth_ipacmd_setadpparms** %9, align 8
  %25 = getelementptr inbounds %struct.qeth_ipacmd_setadpparms, %struct.qeth_ipacmd_setadpparms* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_valid_ether_addr(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @EADDRNOTAVAIL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %69

34:                                               ; preds = %20
  %35 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %36 = call i64 @IS_LAYER2(%struct.qeth_card* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %40 = call i64 @IS_OSD(%struct.qeth_card* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %44 = call i32 @IS_VM_NIC(%struct.qeth_card* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load %struct.qeth_ipacmd_setadpparms*, %struct.qeth_ipacmd_setadpparms** %9, align 8
  %48 = getelementptr inbounds %struct.qeth_ipacmd_setadpparms, %struct.qeth_ipacmd_setadpparms* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @QETH_SETADP_FLAGS_VIRTUAL_MAC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @EADDRNOTAVAIL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %69

57:                                               ; preds = %46, %42, %38, %34
  %58 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qeth_ipacmd_setadpparms*, %struct.qeth_ipacmd_setadpparms** %9, align 8
  %64 = getelementptr inbounds %struct.qeth_ipacmd_setadpparms, %struct.qeth_ipacmd_setadpparms* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ether_addr_copy(i32 %62, i32 %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %57, %54, %31, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @IS_LAYER2(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSD(%struct.qeth_card*) #1

declare dso_local i32 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
