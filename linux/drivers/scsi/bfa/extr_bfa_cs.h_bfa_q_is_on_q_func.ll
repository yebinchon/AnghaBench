; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_cs.h_bfa_q_is_on_q_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_cs.h_bfa_q_is_on_q_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.list_head*)* @bfa_q_is_on_q_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_q_is_on_q_func(%struct.list_head* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %7 = load %struct.list_head*, %struct.list_head** %4, align 8
  %8 = call %struct.list_head* @bfa_q_next(%struct.list_head* %7)
  store %struct.list_head* %8, %struct.list_head** %6, align 8
  br label %9

9:                                                ; preds = %24, %2
  %10 = load %struct.list_head*, %struct.list_head** %6, align 8
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8
  %12 = icmp ne %struct.list_head* %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.list_head*, %struct.list_head** %6, align 8
  %15 = load %struct.list_head*, %struct.list_head** %5, align 8
  %16 = icmp eq %struct.list_head* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %26

18:                                               ; preds = %13
  %19 = load %struct.list_head*, %struct.list_head** %6, align 8
  %20 = call %struct.list_head* @bfa_q_next(%struct.list_head* %19)
  store %struct.list_head* %20, %struct.list_head** %6, align 8
  %21 = load %struct.list_head*, %struct.list_head** %6, align 8
  %22 = icmp eq %struct.list_head* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  br label %9

25:                                               ; preds = %23, %9
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.list_head* @bfa_q_next(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
