; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.h_chpid_to_chp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.h_chpid_to_chp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_path = type { i32 }
%struct.chp_id = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.channel_path** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.channel_path* (i64, i32)* @chpid_to_chp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.channel_path* @chpid_to_chp(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.chp_id, align 8
  %4 = bitcast %struct.chp_id* %3 to { i64, i32 }*
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.TYPE_2__* @css_by_id(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.channel_path**, %struct.channel_path*** %10, align 8
  %12 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.channel_path*, %struct.channel_path** %11, i64 %13
  %15 = load %struct.channel_path*, %struct.channel_path** %14, align 8
  ret %struct.channel_path* %15
}

declare dso_local %struct.TYPE_2__* @css_by_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
