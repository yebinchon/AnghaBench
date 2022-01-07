; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_find_cm_server_by_uuid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_find_cm_server_by_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { %struct.afs_server*, i32, i32 }
%struct.afs_server = type { i32 }
%struct.afs_uuid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*, %struct.afs_uuid*)* @afs_find_cm_server_by_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_find_cm_server_by_uuid(%struct.afs_call* %0, %struct.afs_uuid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_call*, align 8
  %5 = alloca %struct.afs_uuid*, align 8
  %6 = alloca %struct.afs_server*, align 8
  store %struct.afs_call* %0, %struct.afs_call** %4, align 8
  store %struct.afs_uuid* %1, %struct.afs_uuid** %5, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %9 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %12 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.afs_server* @afs_find_server_by_uuid(i32 %10, i32 %13)
  store %struct.afs_server* %14, %struct.afs_server** %6, align 8
  %15 = call i32 (...) @rcu_read_unlock()
  %16 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %17 = icmp ne %struct.afs_server* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %20 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %21 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @trace_afs_cm_no_server_u(%struct.afs_call* %19, i32 %22)
  store i32 0, i32* %3, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %26 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %27 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %26, i32 0, i32 0
  store %struct.afs_server* %25, %struct.afs_server** %27, align 8
  %28 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %29 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %30 = call i32 @afs_record_cm_probe(%struct.afs_call* %28, %struct.afs_server* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.afs_server* @afs_find_server_by_uuid(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @trace_afs_cm_no_server_u(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_record_cm_probe(%struct.afs_call*, %struct.afs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
