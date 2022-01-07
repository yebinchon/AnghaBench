; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_utils_regrule_q2nl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qlink_utils_regrule_q2nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_reg_rule = type { i32, i8*, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.qlink_tlv_reg_rule = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlink_utils_regrule_q2nl(%struct.ieee80211_reg_rule* %0, %struct.qlink_tlv_reg_rule* %1) #0 {
  %3 = alloca %struct.ieee80211_reg_rule*, align 8
  %4 = alloca %struct.qlink_tlv_reg_rule*, align 8
  store %struct.ieee80211_reg_rule* %0, %struct.ieee80211_reg_rule** %3, align 8
  store %struct.qlink_tlv_reg_rule* %1, %struct.qlink_tlv_reg_rule** %4, align 8
  %5 = load %struct.qlink_tlv_reg_rule*, %struct.qlink_tlv_reg_rule** %4, align 8
  %6 = getelementptr inbounds %struct.qlink_tlv_reg_rule, %struct.qlink_tlv_reg_rule* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @le32_to_cpu(i32 %7)
  %9 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i8* %8, i8** %11, align 8
  %12 = load %struct.qlink_tlv_reg_rule*, %struct.qlink_tlv_reg_rule** %4, align 8
  %13 = getelementptr inbounds %struct.qlink_tlv_reg_rule, %struct.qlink_tlv_reg_rule* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le32_to_cpu(i32 %14)
  %16 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i8* %15, i8** %18, align 8
  %19 = load %struct.qlink_tlv_reg_rule*, %struct.qlink_tlv_reg_rule** %4, align 8
  %20 = getelementptr inbounds %struct.qlink_tlv_reg_rule, %struct.qlink_tlv_reg_rule* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @le32_to_cpu(i32 %21)
  %23 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.qlink_tlv_reg_rule*, %struct.qlink_tlv_reg_rule** %4, align 8
  %27 = getelementptr inbounds %struct.qlink_tlv_reg_rule, %struct.qlink_tlv_reg_rule* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32_to_cpu(i32 %28)
  %30 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load %struct.qlink_tlv_reg_rule*, %struct.qlink_tlv_reg_rule** %4, align 8
  %34 = getelementptr inbounds %struct.qlink_tlv_reg_rule, %struct.qlink_tlv_reg_rule* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le32_to_cpu(i32 %35)
  %37 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.qlink_tlv_reg_rule*, %struct.qlink_tlv_reg_rule** %4, align 8
  %41 = getelementptr inbounds %struct.qlink_tlv_reg_rule, %struct.qlink_tlv_reg_rule* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le32_to_cpu(i32 %42)
  %44 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.qlink_tlv_reg_rule*, %struct.qlink_tlv_reg_rule** %4, align 8
  %47 = getelementptr inbounds %struct.qlink_tlv_reg_rule, %struct.qlink_tlv_reg_rule* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le32_to_cpu(i32 %48)
  %50 = call i32 @qtnf_reg_rule_flags_parse(i8* %49)
  %51 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @qtnf_reg_rule_flags_parse(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
