; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__opp_of_get_opp_desc_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_of.c__opp_of_get_opp_desc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device_node*, i32)* @_opp_of_get_opp_desc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @_opp_of_get_opp_desc_node(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret %struct.device_node* %7
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
