; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mesh.c_msgin_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mesh.c_msgin_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mesh_state*)* @msgin_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgin_length(%struct.mesh_state* %0) #0 {
  %2 = alloca %struct.mesh_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mesh_state* %0, %struct.mesh_state** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %6 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %11 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %19 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %30

23:                                               ; preds = %17
  %24 = load %struct.mesh_state*, %struct.mesh_state** %2, align 8
  %25 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2
  br label %30

30:                                               ; preds = %23, %22
  %31 = phi i32 [ 2, %22 ], [ %29, %23 ]
  store i32 %31, i32* %4, align 4
  br label %40

32:                                               ; preds = %9
  %33 = load i32, i32* %3, align 4
  %34 = icmp sle i32 32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = icmp sle i32 %36, 47
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 2, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %35, %32
  br label %40

40:                                               ; preds = %39, %30
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
