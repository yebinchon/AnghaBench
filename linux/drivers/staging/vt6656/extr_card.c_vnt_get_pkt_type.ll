; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_get_pkt_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_get_pkt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64 }

@BB_TYPE_11A = common dso_local global i64 0, align 8
@BB_TYPE_11B = common dso_local global i64 0, align 8
@PK_TYPE_11GA = common dso_local global i32 0, align 4
@PK_TYPE_11GB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_get_pkt_type(%struct.vnt_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnt_private*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  %4 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %5 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BB_TYPE_11A, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %11 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BB_TYPE_11B, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9, %1
  %16 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %9
  %21 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %22 = call i64 @vnt_ofdm_min_rate(%struct.vnt_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @PK_TYPE_11GA, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @PK_TYPE_11GB, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %24, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @vnt_ofdm_min_rate(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
