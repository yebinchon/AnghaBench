; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_proc_mac_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_proc_mac_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, %struct.qtnf_mac_info }
%struct.qtnf_mac_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlink_resp_get_mac_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qtnf_vif = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"could not get valid base vif\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_wmac*, %struct.qlink_resp_get_mac_info*)* @qtnf_cmd_resp_proc_mac_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_cmd_resp_proc_mac_info(%struct.qtnf_wmac* %0, %struct.qlink_resp_get_mac_info* %1) #0 {
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca %struct.qlink_resp_get_mac_info*, align 8
  %5 = alloca %struct.qtnf_mac_info*, align 8
  %6 = alloca %struct.qtnf_vif*, align 8
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %3, align 8
  store %struct.qlink_resp_get_mac_info* %1, %struct.qlink_resp_get_mac_info** %4, align 8
  %7 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %8 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %7, i32 0, i32 1
  store %struct.qtnf_mac_info* %8, %struct.qtnf_mac_info** %5, align 8
  %9 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %4, align 8
  %10 = getelementptr inbounds %struct.qlink_resp_get_mac_info, %struct.qlink_resp_get_mac_info* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %13 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %15 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %14, i32 0, i32 7
  %16 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %4, align 8
  %17 = getelementptr inbounds %struct.qlink_resp_get_mac_info, %struct.qlink_resp_get_mac_info* %16, i32 0, i32 7
  %18 = call i32 @memcpy(i32* %15, i32* %17, i32 4)
  %19 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %20 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %23 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ether_addr_copy(i32 %21, i32 %24)
  %26 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %27 = call %struct.qtnf_vif* @qtnf_mac_get_base_vif(%struct.qtnf_wmac* %26)
  store %struct.qtnf_vif* %27, %struct.qtnf_vif** %6, align 8
  %28 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %29 = icmp ne %struct.qtnf_vif* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %32 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %35 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ether_addr_copy(i32 %33, i32 %36)
  br label %40

38:                                               ; preds = %2
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %30
  %41 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %4, align 8
  %42 = getelementptr inbounds %struct.qlink_resp_get_mac_info, %struct.qlink_resp_get_mac_info* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %45 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %4, align 8
  %47 = getelementptr inbounds %struct.qlink_resp_get_mac_info, %struct.qlink_resp_get_mac_info* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %50 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %4, align 8
  %52 = getelementptr inbounds %struct.qlink_resp_get_mac_info, %struct.qlink_resp_get_mac_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %56 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %4, align 8
  %58 = getelementptr inbounds %struct.qlink_resp_get_mac_info, %struct.qlink_resp_get_mac_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = call i32 @qlink_chan_width_mask_to_nl(i32 %60)
  %62 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %63 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %4, align 8
  %65 = getelementptr inbounds %struct.qlink_resp_get_mac_info, %struct.qlink_resp_get_mac_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %69 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %71 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %70, i32 0, i32 1
  %72 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %4, align 8
  %73 = getelementptr inbounds %struct.qlink_resp_get_mac_info, %struct.qlink_resp_get_mac_info* %72, i32 0, i32 1
  %74 = call i32 @memcpy(i32* %71, i32* %73, i32 4)
  %75 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %76 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %75, i32 0, i32 0
  %77 = load %struct.qlink_resp_get_mac_info*, %struct.qlink_resp_get_mac_info** %4, align 8
  %78 = getelementptr inbounds %struct.qlink_resp_get_mac_info, %struct.qlink_resp_get_mac_info* %77, i32 0, i32 0
  %79 = call i32 @memcpy(i32* %76, i32* %78, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local %struct.qtnf_vif* @qtnf_mac_get_base_vif(%struct.qtnf_wmac*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @qlink_chan_width_mask_to_nl(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
