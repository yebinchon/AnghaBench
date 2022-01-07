; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8723bu_handle_c2h.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8723bu_handle_c2h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rtl8723bu_c2h = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"C2H ID %02x seq %02x, len %02x source %02x\0A\00", align 1
@BT_INFO_SRC_8723B_BT_ACTIVE_SEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"C2H_BT_INFO WiFi only firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"C2H_BT_INFO BT/WiFi coexist firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"BT has been reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"BT TRx mask\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"C2H_MP_INFO ext ID %02x, status %02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"C2H RA RPT: rate %02x, unk %i, macid %02x, noise %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Unhandled C2H event %02x seq %02x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"C2H content: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*, %struct.sk_buff*)* @rtl8723bu_handle_c2h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723bu_handle_c2h(%struct.rtl8xxxu_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl8723bu_c2h*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.rtl8723bu_c2h*
  store %struct.rtl8723bu_c2h* %11, %struct.rtl8723bu_c2h** %5, align 8
  %12 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 2
  store i32 %19, i32* %7, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %22 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %25 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %29 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %27, i32 %31)
  %33 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %34 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %98 [
    i32 130, label %36
    i32 129, label %68
    i32 128, label %79
  ]

36:                                               ; preds = %2
  %37 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %38 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BT_INFO_SRC_8723B_BT_ACTIVE_SEND, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %49

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %51 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %60 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %58
  br label %115

68:                                               ; preds = %2
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %71 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %75 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %77)
  br label %115

79:                                               ; preds = %2
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %82 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %86 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %90 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %94 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %84, i32 %88, i32 %92, i32 %96)
  br label %115

98:                                               ; preds = %2
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %101 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %104 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_info(%struct.device* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %102, i32 %105)
  %107 = load i32, i32* @KERN_INFO, align 4
  %108 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %109 = load %struct.rtl8723bu_c2h*, %struct.rtl8723bu_c2h** %5, align 8
  %110 = getelementptr inbounds %struct.rtl8723bu_c2h, %struct.rtl8723bu_c2h* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @print_hex_dump(i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %108, i32 16, i32 1, i32 %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %98, %79, %68, %67
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
