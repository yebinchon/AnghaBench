; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_rcr_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bm_rcr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_rcr_entry = type { i32 }
%struct.bm_portal = type { %struct.bm_rcr }
%struct.bm_rcr = type { i32, %struct.bm_rcr_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bm_rcr_entry* (%struct.bm_portal*)* @bm_rcr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bm_rcr_entry* @bm_rcr_start(%struct.bm_portal* %0) #0 {
  %2 = alloca %struct.bm_rcr_entry*, align 8
  %3 = alloca %struct.bm_portal*, align 8
  %4 = alloca %struct.bm_rcr*, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %3, align 8
  %5 = load %struct.bm_portal*, %struct.bm_portal** %3, align 8
  %6 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %5, i32 0, i32 0
  store %struct.bm_rcr* %6, %struct.bm_rcr** %4, align 8
  %7 = load %struct.bm_rcr*, %struct.bm_rcr** %4, align 8
  %8 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @DPAA_ASSERT(i32 %12)
  %14 = load %struct.bm_rcr*, %struct.bm_rcr** %4, align 8
  %15 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.bm_rcr_entry* null, %struct.bm_rcr_entry** %2, align 8
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.bm_rcr*, %struct.bm_rcr** %4, align 8
  %21 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %20, i32 0, i32 1
  %22 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %21, align 8
  %23 = call i32 @dpaa_zero(%struct.bm_rcr_entry* %22)
  %24 = load %struct.bm_rcr*, %struct.bm_rcr** %4, align 8
  %25 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %24, i32 0, i32 1
  %26 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %25, align 8
  store %struct.bm_rcr_entry* %26, %struct.bm_rcr_entry** %2, align 8
  br label %27

27:                                               ; preds = %19, %18
  %28 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %2, align 8
  ret %struct.bm_rcr_entry* %28
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @dpaa_zero(%struct.bm_rcr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
