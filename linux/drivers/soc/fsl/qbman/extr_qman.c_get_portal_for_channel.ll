; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_get_portal_for_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_get_portal_for_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@affine_portals = common dso_local global %struct.qman_portal** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qman_portal* (i64)* @get_portal_for_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qman_portal* @get_portal_for_channel(i64 %0) #0 {
  %2 = alloca %struct.qman_portal*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (...) @num_possible_cpus()
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = load %struct.qman_portal**, %struct.qman_portal*** @affine_portals, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.qman_portal*, %struct.qman_portal** %10, i64 %12
  %14 = load %struct.qman_portal*, %struct.qman_portal** %13, align 8
  %15 = icmp ne %struct.qman_portal* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = load %struct.qman_portal**, %struct.qman_portal*** @affine_portals, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.qman_portal*, %struct.qman_portal** %17, i64 %19
  %21 = load %struct.qman_portal*, %struct.qman_portal** %20, align 8
  %22 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.qman_portal**, %struct.qman_portal*** @affine_portals, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.qman_portal*, %struct.qman_portal** %29, i64 %31
  %33 = load %struct.qman_portal*, %struct.qman_portal** %32, align 8
  store %struct.qman_portal* %33, %struct.qman_portal** %2, align 8
  br label %39

34:                                               ; preds = %16, %9
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %5

38:                                               ; preds = %5
  store %struct.qman_portal* null, %struct.qman_portal** %2, align 8
  br label %39

39:                                               ; preds = %38, %28
  %40 = load %struct.qman_portal*, %struct.qman_portal** %2, align 8
  ret %struct.qman_portal* %40
}

declare dso_local i32 @num_possible_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
