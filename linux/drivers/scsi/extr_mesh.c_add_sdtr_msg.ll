; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mesh.c_add_sdtr_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mesh.c_add_sdtr_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { i32, i32*, i32 }

@EXTENDED_MESSAGE = common dso_local global i32 0, align 4
@EXTENDED_SDTR = common dso_local global i32 0, align 4
@mesh_sync_period = common dso_local global i32 0, align 4
@mesh_sync_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_state*)* @add_sdtr_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_sdtr_msg(%struct.mesh_state* %0) #0 {
  %2 = alloca %struct.mesh_state*, align 8
  %3 = alloca i32, align 4
  store %struct.mesh_state* %0, %struct.mesh_state** %2, align 8
  %4 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %5 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @EXTENDED_MESSAGE, align 4
  %8 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %9 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32 %7, i32* %13, align 4
  %14 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %15 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 3, i32* %20, align 4
  %21 = load i32, i32* @EXTENDED_SDTR, align 4
  %22 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %23 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %21, i32* %28, align 4
  %29 = load i32, i32* @mesh_sync_period, align 4
  %30 = sdiv i32 %29, 4
  %31 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %32 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %30, i32* %37, align 4
  %38 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %39 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ALLOW_SYNC(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @mesh_sync_offset, align 4
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %49 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 5
  %57 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %58 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local i64 @ALLOW_SYNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
