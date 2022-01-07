; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_poll_dep_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_poll_dep_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { %struct.TYPE_6__*, i32, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.pn533_cmd_jump_dep_response = type { i32, i32, i32 }
%struct.nfc_target = type { i32, i32, i32 }

@PN533_CMD_RET_MASK = common dso_local global i32 0, align 4
@PN533_CMD_RET_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Creating new target\00", align 1
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*, i8*, %struct.sk_buff*)* @pn533_poll_dep_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_poll_dep_complete(%struct.pn533* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pn533*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.pn533_cmd_jump_dep_response*, align 8
  %9 = alloca %struct.nfc_target, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call i64 @IS_ERR(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.sk_buff* %16)
  store i32 %17, i32* %4, align 4
  br label %108

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.pn533_cmd_jump_dep_response*
  store %struct.pn533_cmd_jump_dep_response* %22, %struct.pn533_cmd_jump_dep_response** %8, align 8
  %23 = load %struct.pn533_cmd_jump_dep_response*, %struct.pn533_cmd_jump_dep_response** %8, align 8
  %24 = getelementptr inbounds %struct.pn533_cmd_jump_dep_response, %struct.pn533_cmd_jump_dep_response* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PN533_CMD_RET_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @PN533_CMD_RET_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load %struct.pn533*, %struct.pn533** %5, align 8
  %33 = getelementptr inbounds %struct.pn533, %struct.pn533* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pn533*, %struct.pn533** %5, align 8
  %36 = getelementptr inbounds %struct.pn533, %struct.pn533* %35, i32 0, i32 4
  %37 = call i32 @queue_work(i32 %34, i32* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @dev_kfree_skb(%struct.sk_buff* %38)
  store i32 0, i32* %4, align 4
  br label %108

40:                                               ; preds = %18
  %41 = load %struct.pn533*, %struct.pn533** %5, align 8
  %42 = getelementptr inbounds %struct.pn533, %struct.pn533* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %46 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 0
  store i32 10, i32* %47, align 4
  %48 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pn533_cmd_jump_dep_response*, %struct.pn533_cmd_jump_dep_response** %8, align 8
  %51 = getelementptr inbounds %struct.pn533_cmd_jump_dep_response, %struct.pn533_cmd_jump_dep_response* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32 %49, i32 %52, i32 %54)
  %56 = load %struct.pn533*, %struct.pn533** %5, align 8
  %57 = getelementptr inbounds %struct.pn533, %struct.pn533* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @nfc_targets_found(%struct.TYPE_6__* %58, %struct.nfc_target* %9, i32 1)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %40
  br label %104

63:                                               ; preds = %40
  %64 = load %struct.pn533*, %struct.pn533** %5, align 8
  %65 = getelementptr inbounds %struct.pn533, %struct.pn533* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @NFC_PROTO_NFC_DEP, align 4
  %67 = load %struct.pn533*, %struct.pn533** %5, align 8
  %68 = getelementptr inbounds %struct.pn533, %struct.pn533* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 17
  store i64 %72, i64* %10, align 8
  %73 = load %struct.pn533*, %struct.pn533** %5, align 8
  %74 = getelementptr inbounds %struct.pn533, %struct.pn533* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load %struct.pn533_cmd_jump_dep_response*, %struct.pn533_cmd_jump_dep_response** %8, align 8
  %77 = getelementptr inbounds %struct.pn533_cmd_jump_dep_response, %struct.pn533_cmd_jump_dep_response* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @nfc_set_remote_general_bytes(%struct.TYPE_6__* %75, i32 %78, i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %63
  %84 = load %struct.pn533*, %struct.pn533** %5, align 8
  %85 = getelementptr inbounds %struct.pn533, %struct.pn533* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load %struct.pn533*, %struct.pn533** %5, align 8
  %88 = getelementptr inbounds %struct.pn533, %struct.pn533* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @NFC_RF_INITIATOR, align 4
  %96 = call i32 @nfc_dep_link_is_up(%struct.TYPE_6__* %86, i32 %94, i32 0, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %83
  %100 = load %struct.pn533*, %struct.pn533** %5, align 8
  %101 = call i32 @pn533_poll_reset_mod_list(%struct.pn533* %100)
  br label %102

102:                                              ; preds = %99, %83
  br label %103

103:                                              ; preds = %102, %63
  br label %104

104:                                              ; preds = %103, %62
  %105 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %106 = call i32 @dev_kfree_skb(%struct.sk_buff* %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %31, %15
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nfc_targets_found(%struct.TYPE_6__*, %struct.nfc_target*, i32) #1

declare dso_local i32 @nfc_set_remote_general_bytes(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @nfc_dep_link_is_up(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @pn533_poll_reset_mod_list(%struct.pn533*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
