; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_lanstat_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_lanstat_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32 }
%struct.lcs_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"statcb\00", align 1
@LCS_MAC_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_card*, %struct.lcs_cmd*)* @__lcs_lanstat_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lcs_lanstat_cb(%struct.lcs_card* %0, %struct.lcs_cmd* %1) #0 {
  %3 = alloca %struct.lcs_card*, align 8
  %4 = alloca %struct.lcs_cmd*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %3, align 8
  store %struct.lcs_cmd* %1, %struct.lcs_cmd** %4, align 8
  %5 = load i32, i32* @trace, align 4
  %6 = call i32 @LCS_DBF_TEXT(i32 2, i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %8 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.lcs_cmd*, %struct.lcs_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LCS_MAC_LENGTH, align 4
  %16 = call i32 @memcpy(i32 %9, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
