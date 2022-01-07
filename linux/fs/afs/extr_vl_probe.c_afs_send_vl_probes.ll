; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vl_probe.c_afs_send_vl_probes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vl_probe.c_afs_send_vl_probes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32 }
%struct.key = type { i32 }
%struct.afs_vlserver_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.afs_vlserver* }
%struct.afs_vlserver = type { i32 }
%struct.afs_error = type { i32, i32 }

@AFS_VLSERVER_FL_PROBED = common dso_local global i32 0, align 4
@AFS_VLSERVER_FL_PROBING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_send_vl_probes(%struct.afs_net* %0, %struct.key* %1, %struct.afs_vlserver_list* %2) #0 {
  %4 = alloca %struct.afs_net*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.afs_vlserver_list*, align 8
  %7 = alloca %struct.afs_vlserver*, align 8
  %8 = alloca %struct.afs_error, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.afs_net* %0, %struct.afs_net** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  store %struct.afs_vlserver_list* %2, %struct.afs_vlserver_list** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = getelementptr inbounds %struct.afs_error, %struct.afs_error* %8, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.afs_error, %struct.afs_error* %8, i32 0, i32 1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %49, %3
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %6, align 8
  %16 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %13
  %20 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %6, align 8
  %21 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.afs_vlserver*, %struct.afs_vlserver** %26, align 8
  store %struct.afs_vlserver* %27, %struct.afs_vlserver** %7, align 8
  %28 = load i32, i32* @AFS_VLSERVER_FL_PROBED, align 4
  %29 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %30 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %49

34:                                               ; preds = %19
  %35 = load i32, i32* @AFS_VLSERVER_FL_PROBING, align 4
  %36 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %37 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %36, i32 0, i32 0
  %38 = call i32 @test_and_set_bit_lock(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load %struct.afs_net*, %struct.afs_net** %4, align 8
  %42 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %43 = load %struct.key*, %struct.key** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @afs_do_probe_vlserver(%struct.afs_net* %41, %struct.afs_vlserver* %42, %struct.key* %43, i32 %44, %struct.afs_error* %8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %40, %34
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %13

52:                                               ; preds = %13
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %59

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.afs_error, %struct.afs_error* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  ret i32 %60
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i64 @afs_do_probe_vlserver(%struct.afs_net*, %struct.afs_vlserver*, %struct.key*, i32, %struct.afs_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
