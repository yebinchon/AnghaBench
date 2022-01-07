; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridge_emit_host_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridge_emit_host_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_if_token = type { i32, i32, i32, i32, i32, i32 }
%struct.mac_addr_lnid = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"BRIDGEDHOST=%s\00", align 1
@IPA_ADDR_CHANGE_CODE_REMOVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"deregister\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@IPA_ADDR_CHANGE_CODE_VLANID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"VLAN=%d\00", align 1
@IPA_ADDR_CHANGE_CODE_MACADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"MAC=%pM\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"NTOK_BUSID=%x.%x.%04x\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NTOK_IID=%02x\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"NTOK_CHPID=%02x\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"NTOK_CHID=%04x\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"BRIDGEDHOST=abort\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"BRIDGEDHOST=reset\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, i32, i32, %struct.net_if_token*, %struct.mac_addr_lnid*)* @qeth_bridge_emit_host_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_bridge_emit_host_event(%struct.qeth_card* %0, i32 %1, i32 %2, %struct.net_if_token* %3, %struct.mac_addr_lnid* %4) #0 {
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_if_token*, align 8
  %10 = alloca %struct.mac_addr_lnid*, align 8
  %11 = alloca [7 x [32 x i8]], align 16
  %12 = alloca [8 x i8*], align 16
  %13 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.net_if_token* %3, %struct.net_if_token** %9, align 8
  store %struct.mac_addr_lnid* %4, %struct.mac_addr_lnid** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %186 [
    i32 129, label %15
    i32 130, label %156
    i32 128, label %171
  ]

15:                                               ; preds = %5
  %16 = load i32, i32* %13, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %17
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IPA_ADDR_CHANGE_CODE_REMOVAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %19, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %28
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i64 0, i64 0
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %32
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @IPA_ADDR_CHANGE_CODE_VLANID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %15
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %42
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %43, i64 0, i64 0
  %45 = load %struct.mac_addr_lnid*, %struct.mac_addr_lnid** %10, align 8
  %46 = getelementptr inbounds %struct.mac_addr_lnid, %struct.mac_addr_lnid* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %44, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %50
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %51, i64 0, i64 0
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %54
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %40, %15
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @IPA_ADDR_CHANGE_CODE_MACADDR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %65
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %66, i64 0, i64 0
  %68 = load %struct.mac_addr_lnid*, %struct.mac_addr_lnid** %10, align 8
  %69 = getelementptr inbounds %struct.mac_addr_lnid, %struct.mac_addr_lnid* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %67, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %73
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %74, i64 0, i64 0
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %77
  store i8* %75, i8** %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %63, %58
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %83
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %84, i64 0, i64 0
  %86 = load %struct.net_if_token*, %struct.net_if_token** %9, align 8
  %87 = getelementptr inbounds %struct.net_if_token, %struct.net_if_token* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.net_if_token*, %struct.net_if_token** %9, align 8
  %90 = getelementptr inbounds %struct.net_if_token, %struct.net_if_token* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.net_if_token*, %struct.net_if_token** %9, align 8
  %93 = getelementptr inbounds %struct.net_if_token, %struct.net_if_token* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %85, i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %88, i32 %91, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %97
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %98, i64 0, i64 0
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %101
  store i8* %99, i8** %102, align 8
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %106
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %107, i64 0, i64 0
  %109 = load %struct.net_if_token*, %struct.net_if_token** %9, align 8
  %110 = getelementptr inbounds %struct.net_if_token, %struct.net_if_token* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %114
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %115, i64 0, i64 0
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %118
  store i8* %116, i8** %119, align 8
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %123
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %124, i64 0, i64 0
  %126 = load %struct.net_if_token*, %struct.net_if_token** %9, align 8
  %127 = getelementptr inbounds %struct.net_if_token, %struct.net_if_token* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %125, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %131
  %133 = getelementptr inbounds [32 x i8], [32 x i8]* %132, i64 0, i64 0
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %135
  store i8* %133, i8** %136, align 8
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %140
  %142 = getelementptr inbounds [32 x i8], [32 x i8]* %141, i64 0, i64 0
  %143 = load %struct.net_if_token*, %struct.net_if_token** %9, align 8
  %144 = getelementptr inbounds %struct.net_if_token, %struct.net_if_token* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %142, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %148
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %149, i64 0, i64 0
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %152
  store i8* %150, i8** %153, align 8
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %186

156:                                              ; preds = %5
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %158
  %160 = getelementptr inbounds [32 x i8], [32 x i8]* %159, i64 0, i64 0
  %161 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %160, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %163
  %165 = getelementptr inbounds [32 x i8], [32 x i8]* %164, i64 0, i64 0
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %167
  store i8* %165, i8** %168, align 8
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %186

171:                                              ; preds = %5
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %173
  %175 = getelementptr inbounds [32 x i8], [32 x i8]* %174, i64 0, i64 0
  %176 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %175, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [7 x [32 x i8]], [7 x [32 x i8]]* %11, i64 0, i64 %178
  %180 = getelementptr inbounds [32 x i8], [32 x i8]* %179, i64 0, i64 0
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %182
  store i8* %180, i8** %183, align 8
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %186

186:                                              ; preds = %5, %171, %156, %81
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 %188
  store i8* null, i8** %189, align 8
  %190 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %191 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %190, i32 0, i32 0
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* @KOBJ_CHANGE, align 4
  %196 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 0
  %197 = call i32 @kobject_uevent_env(i32* %194, i32 %195, i8** %196)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
