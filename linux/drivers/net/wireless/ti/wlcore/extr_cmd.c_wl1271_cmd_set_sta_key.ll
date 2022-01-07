; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_set_sta_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_set_sta_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wl1271_cmd_set_keys = type { i64, i64, i64, i32*, i8**, i64, i64, i8*, i32 }

@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KEY_WEP = common dso_local global i64 0, align 8
@WEP_DEFAULT_LID_TYPE = common dso_local global i32 0, align 4
@BROADCAST_LID_TYPE = common dso_local global i32 0, align 4
@UNICAST_LID_TYPE = common dso_local global i32 0, align 4
@KEY_TKIP = common dso_local global i64 0, align 8
@DEBUG_CRYPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"TARGET KEY: \00", align 1
@CMD_SET_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"could not set keys\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_cmd_set_sta_key(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2, i64 %3, i64 %4, i64 %5, i64* %6, i64* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.wl1271*, align 8
  %13 = alloca %struct.wl12xx_vif*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.wl1271_cmd_set_keys*, align 8
  %23 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %12, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %13, align 8
  store i32 %2, i32* %14, align 4
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64* %6, i64** %18, align 8
  store i64* %7, i64** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %13, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %139

31:                                               ; preds = %10
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.wl1271_cmd_set_keys* @kzalloc(i32 72, i32 %32)
  store %struct.wl1271_cmd_set_keys* %33, %struct.wl1271_cmd_set_keys** %22, align 8
  %34 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %35 = icmp ne %struct.wl1271_cmd_set_keys* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %23, align 4
  br label %135

39:                                               ; preds = %31
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %13, align 8
  %41 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %45 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @KEY_WEP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @WEP_DEFAULT_LID_TYPE, align 4
  %51 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %52 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  br label %66

53:                                               ; preds = %39
  %54 = load i64*, i64** %19, align 8
  %55 = call i64 @is_broadcast_ether_addr(i64* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @BROADCAST_LID_TYPE, align 4
  %59 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %60 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  br label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @UNICAST_LID_TYPE, align 4
  %63 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %64 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %14, align 4
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %70 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %73 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %72, i32 0, i32 6
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %76 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %75, i32 0, i32 5
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %21, align 4
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %80 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %79, i32 0, i32 4
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  store i8* %78, i8** %82, align 8
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %86 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %84, i32* %88, align 4
  %89 = load i64, i64* %15, align 8
  %90 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %91 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* @KEY_TKIP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %66
  %96 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %97 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %18, align 8
  %100 = call i32 @memcpy(i64 %98, i64* %99, i64 16)
  %101 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %102 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 16
  %105 = load i64*, i64** %18, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 24
  %107 = call i32 @memcpy(i64 %104, i64* %106, i64 8)
  %108 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %109 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 24
  %112 = load i64*, i64** %18, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 16
  %114 = call i32 @memcpy(i64 %111, i64* %113, i64 8)
  br label %122

115:                                              ; preds = %66
  %116 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %117 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %18, align 8
  %120 = load i64, i64* %17, align 8
  %121 = call i32 @memcpy(i64 %118, i64* %119, i64 %120)
  br label %122

122:                                              ; preds = %115, %95
  %123 = load i32, i32* @DEBUG_CRYPT, align 4
  %124 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %125 = call i32 @wl1271_dump(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.wl1271_cmd_set_keys* %124, i32 72)
  %126 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %127 = load i32, i32* @CMD_SET_KEYS, align 4
  %128 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %129 = call i32 @wl1271_cmd_send(%struct.wl1271* %126, i32 %127, %struct.wl1271_cmd_set_keys* %128, i32 72, i32 0)
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = call i32 @wl1271_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %135

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %132, %36
  %136 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %137 = call i32 @kfree(%struct.wl1271_cmd_set_keys* %136)
  %138 = load i32, i32* %23, align 4
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %135, %30
  %140 = load i32, i32* %11, align 4
  ret i32 %140
}

declare dso_local %struct.wl1271_cmd_set_keys* @kzalloc(i32, i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i64*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i64, i64*, i64) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wl1271_cmd_set_keys*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl1271_cmd_set_keys*, i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @kfree(%struct.wl1271_cmd_set_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
