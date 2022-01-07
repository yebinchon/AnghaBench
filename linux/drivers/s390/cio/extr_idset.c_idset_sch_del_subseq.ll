; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_idset.c_idset_sch_del_subseq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_idset.c_idset_sch_del_subseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idset = type { i32, i32 }
%struct.subchannel_id = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idset_sch_del_subseq(%struct.idset* %0, i64 %1) #0 {
  %3 = alloca %struct.subchannel_id, align 4
  %4 = alloca %struct.idset*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.subchannel_id* %3 to i64*
  store i64 %1, i64* %6, align 4
  store %struct.idset* %0, %struct.idset** %4, align 8
  %7 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.idset*, %struct.idset** %4, align 8
  %10 = getelementptr inbounds %struct.idset, %struct.idset* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %12, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.idset*, %struct.idset** %4, align 8
  %17 = getelementptr inbounds %struct.idset, %struct.idset* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.idset*, %struct.idset** %4, align 8
  %21 = getelementptr inbounds %struct.idset, %struct.idset* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %22, %24
  %26 = call i32 @bitmap_clear(i32 %18, i32 %19, i32 %25)
  ret void
}

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
