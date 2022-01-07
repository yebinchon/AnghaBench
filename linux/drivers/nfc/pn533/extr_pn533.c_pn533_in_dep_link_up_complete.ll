; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_in_dep_link_up_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_in_dep_link_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.pn533_cmd_jump_dep_response = type { i32, i32, i32 }
%struct.nfc_target = type { i32, i32, i32 }

@NFC_PROTO_NFC_DEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"The target does not support DEP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PN533_CMD_RET_MASK = common dso_local global i32 0, align 4
@PN533_CMD_RET_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Bringing DEP link up failed (error 0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Creating new target\0A\00", align 1
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*, i8*, %struct.sk_buff*)* @pn533_in_dep_link_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_in_dep_link_up_complete(%struct.pn533* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pn533*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.pn533_cmd_jump_dep_response*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfc_target, align 4
  store %struct.pn533* %0, %struct.pn533** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @kfree(i8* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i64 @IS_ERR(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i32 @PTR_ERR(%struct.sk_buff* %22)
  store i32 %23, i32* %4, align 4
  br label %135

24:                                               ; preds = %3
  %25 = load %struct.pn533*, %struct.pn533** %5, align 8
  %26 = getelementptr inbounds %struct.pn533, %struct.pn533* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.pn533*, %struct.pn533** %5, align 8
  %31 = getelementptr inbounds %struct.pn533, %struct.pn533* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NFC_PROTO_NFC_DEP, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %29
  %38 = load %struct.pn533*, %struct.pn533** %5, align 8
  %39 = getelementptr inbounds %struct.pn533, %struct.pn533* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @nfc_err(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %131

44:                                               ; preds = %29, %24
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.pn533_cmd_jump_dep_response*
  store %struct.pn533_cmd_jump_dep_response* %48, %struct.pn533_cmd_jump_dep_response** %8, align 8
  %49 = load %struct.pn533_cmd_jump_dep_response*, %struct.pn533_cmd_jump_dep_response** %8, align 8
  %50 = getelementptr inbounds %struct.pn533_cmd_jump_dep_response, %struct.pn533_cmd_jump_dep_response* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PN533_CMD_RET_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @PN533_CMD_RET_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load %struct.pn533*, %struct.pn533** %5, align 8
  %59 = getelementptr inbounds %struct.pn533, %struct.pn533* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i32, i8*, ...) @nfc_err(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %131

63:                                               ; preds = %44
  %64 = load %struct.pn533*, %struct.pn533** %5, align 8
  %65 = getelementptr inbounds %struct.pn533, %struct.pn533* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %63
  %69 = load %struct.pn533*, %struct.pn533** %5, align 8
  %70 = getelementptr inbounds %struct.pn533, %struct.pn533* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %74 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %12, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %12, i32 0, i32 0
  store i32 10, i32* %75, align 4
  %76 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %12, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pn533_cmd_jump_dep_response*, %struct.pn533_cmd_jump_dep_response** %8, align 8
  %79 = getelementptr inbounds %struct.pn533_cmd_jump_dep_response, %struct.pn533_cmd_jump_dep_response* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %12, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memcpy(i32 %77, i32 %80, i32 %82)
  %84 = load %struct.pn533*, %struct.pn533** %5, align 8
  %85 = getelementptr inbounds %struct.pn533, %struct.pn533* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @nfc_targets_found(%struct.TYPE_6__* %86, %struct.nfc_target* %12, i32 1)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  br label %131

91:                                               ; preds = %68
  %92 = load %struct.pn533*, %struct.pn533** %5, align 8
  %93 = getelementptr inbounds %struct.pn533, %struct.pn533* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %63
  %95 = load i32, i32* @NFC_PROTO_NFC_DEP, align 4
  %96 = load %struct.pn533*, %struct.pn533** %5, align 8
  %97 = getelementptr inbounds %struct.pn533, %struct.pn533* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 17
  store i64 %101, i64* %9, align 8
  %102 = load %struct.pn533*, %struct.pn533** %5, align 8
  %103 = getelementptr inbounds %struct.pn533, %struct.pn533* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load %struct.pn533_cmd_jump_dep_response*, %struct.pn533_cmd_jump_dep_response** %8, align 8
  %106 = getelementptr inbounds %struct.pn533_cmd_jump_dep_response, %struct.pn533_cmd_jump_dep_response* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @nfc_set_remote_general_bytes(%struct.TYPE_6__* %104, i32 %107, i64 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %94
  %113 = load %struct.pn533*, %struct.pn533** %5, align 8
  %114 = getelementptr inbounds %struct.pn533, %struct.pn533* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load %struct.pn533*, %struct.pn533** %5, align 8
  %117 = getelementptr inbounds %struct.pn533, %struct.pn533* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %11, align 8
  %125 = icmp ne i64 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* @NFC_RF_INITIATOR, align 4
  %129 = call i32 @nfc_dep_link_is_up(%struct.TYPE_6__* %115, i32 %123, i32 %127, i32 %128)
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %112, %94
  br label %131

131:                                              ; preds = %130, %90, %57, %37
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = call i32 @dev_kfree_skb(%struct.sk_buff* %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %21
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @nfc_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nfc_targets_found(%struct.TYPE_6__*, %struct.nfc_target*, i32) #1

declare dso_local i32 @nfc_set_remote_general_bytes(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @nfc_dep_link_is_up(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
