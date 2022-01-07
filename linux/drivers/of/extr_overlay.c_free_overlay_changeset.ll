; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_free_overlay_changeset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_free_overlay_changeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overlay_changeset = type { i32, %struct.overlay_changeset*, %struct.overlay_changeset*, %struct.overlay_changeset*, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ovcs_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.overlay_changeset*)* @free_overlay_changeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_overlay_changeset(%struct.overlay_changeset* %0) #0 {
  %2 = alloca %struct.overlay_changeset*, align 8
  %3 = alloca i32, align 4
  store %struct.overlay_changeset* %0, %struct.overlay_changeset** %2, align 8
  %4 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %5 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %4, i32 0, i32 7
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %12 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %11, i32 0, i32 7
  %13 = call i32 @of_changeset_destroy(%struct.TYPE_4__* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %16 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %21 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @idr_remove(i32* @ovcs_idr, i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %28 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %33 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %32, i32 0, i32 3
  %34 = load %struct.overlay_changeset*, %struct.overlay_changeset** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %34, i64 %36
  %38 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @of_node_put(i32 %39)
  %41 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %42 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %41, i32 0, i32 3
  %43 = load %struct.overlay_changeset*, %struct.overlay_changeset** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %43, i64 %45
  %47 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @of_node_put(i32 %48)
  br label %50

50:                                               ; preds = %31
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %55 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %54, i32 0, i32 3
  %56 = load %struct.overlay_changeset*, %struct.overlay_changeset** %55, align 8
  %57 = call i32 @kfree(%struct.overlay_changeset* %56)
  %58 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %59 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %58, i32 0, i32 2
  %60 = load %struct.overlay_changeset*, %struct.overlay_changeset** %59, align 8
  %61 = call i32 @kfree(%struct.overlay_changeset* %60)
  %62 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %63 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %62, i32 0, i32 1
  %64 = load %struct.overlay_changeset*, %struct.overlay_changeset** %63, align 8
  %65 = call i32 @kfree(%struct.overlay_changeset* %64)
  %66 = load %struct.overlay_changeset*, %struct.overlay_changeset** %2, align 8
  %67 = call i32 @kfree(%struct.overlay_changeset* %66)
  ret void
}

declare dso_local i32 @of_changeset_destroy(%struct.TYPE_4__*) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @kfree(%struct.overlay_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
