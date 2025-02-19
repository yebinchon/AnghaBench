; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_put_volume.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_put_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_cell = type { i32 }
%struct.afs_volume = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_put_volume(%struct.afs_cell* %0, %struct.afs_volume* %1) #0 {
  %3 = alloca %struct.afs_cell*, align 8
  %4 = alloca %struct.afs_volume*, align 8
  store %struct.afs_cell* %0, %struct.afs_cell** %3, align 8
  store %struct.afs_volume* %1, %struct.afs_volume** %4, align 8
  %5 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %6 = icmp ne %struct.afs_volume* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %9 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %13 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %12, i32 0, i32 0
  %14 = call i64 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %18 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %21 = call i32 @afs_destroy_volume(i32 %19, %struct.afs_volume* %20)
  br label %22

22:                                               ; preds = %16, %7
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @afs_destroy_volume(i32, %struct.afs_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
