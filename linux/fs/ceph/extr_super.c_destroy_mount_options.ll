; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_destroy_mount_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_destroy_mount_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mount_options = type { %struct.ceph_mount_options*, %struct.ceph_mount_options*, %struct.ceph_mount_options*, %struct.ceph_mount_options* }

@.str = private unnamed_addr constant [26 x i8] c"destroy_mount_options %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mount_options*)* @destroy_mount_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_mount_options(%struct.ceph_mount_options* %0) #0 {
  %2 = alloca %struct.ceph_mount_options*, align 8
  store %struct.ceph_mount_options* %0, %struct.ceph_mount_options** %2, align 8
  %3 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %2, align 8
  %4 = call i32 @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.ceph_mount_options* %3)
  %5 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %5, i32 0, i32 3
  %7 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %6, align 8
  %8 = call i32 @kfree(%struct.ceph_mount_options* %7)
  %9 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %9, i32 0, i32 2
  %11 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %10, align 8
  %12 = call i32 @kfree(%struct.ceph_mount_options* %11)
  %13 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %2, align 8
  %14 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %13, i32 0, i32 1
  %15 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %14, align 8
  %16 = call i32 @kfree(%struct.ceph_mount_options* %15)
  %17 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %17, i32 0, i32 0
  %19 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %18, align 8
  %20 = call i32 @kfree(%struct.ceph_mount_options* %19)
  %21 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %2, align 8
  %22 = call i32 @kfree(%struct.ceph_mount_options* %21)
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_mount_options*) #1

declare dso_local i32 @kfree(%struct.ceph_mount_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
