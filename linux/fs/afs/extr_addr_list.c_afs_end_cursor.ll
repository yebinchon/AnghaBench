; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_end_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_end_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_cursor = type { i64, i32, %struct.afs_addr_list*, i32, i64 }
%struct.afs_addr_list = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_end_cursor(%struct.afs_addr_cursor* %0) #0 {
  %2 = alloca %struct.afs_addr_cursor*, align 8
  %3 = alloca %struct.afs_addr_list*, align 8
  store %struct.afs_addr_cursor* %0, %struct.afs_addr_cursor** %2, align 8
  %4 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %2, align 8
  %5 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %4, i32 0, i32 2
  %6 = load %struct.afs_addr_list*, %struct.afs_addr_list** %5, align 8
  store %struct.afs_addr_list* %6, %struct.afs_addr_list** %3, align 8
  %7 = load %struct.afs_addr_list*, %struct.afs_addr_list** %3, align 8
  %8 = icmp ne %struct.afs_addr_list* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %2, align 8
  %11 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %2, align 8
  %16 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.afs_addr_list*, %struct.afs_addr_list** %3, align 8
  %19 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %14
  %23 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %2, align 8
  %24 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %23, i32 0, i32 2
  %25 = load %struct.afs_addr_list*, %struct.afs_addr_list** %24, align 8
  %26 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %2, align 8
  %29 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %28, i32 0, i32 3
  %30 = call i64 @test_bit(i64 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.afs_addr_list*, %struct.afs_addr_list** %3, align 8
  %34 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %2, align 8
  %37 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @WRITE_ONCE(i64 %35, i64 %38)
  br label %40

40:                                               ; preds = %32, %22, %14, %9
  %41 = load %struct.afs_addr_list*, %struct.afs_addr_list** %3, align 8
  %42 = call i32 @afs_put_addrlist(%struct.afs_addr_list* %41)
  %43 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %2, align 8
  %44 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %43, i32 0, i32 2
  store %struct.afs_addr_list* null, %struct.afs_addr_list** %44, align 8
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %2, align 8
  %47 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  ret i32 %48
}

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

declare dso_local i32 @afs_put_addrlist(%struct.afs_addr_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
