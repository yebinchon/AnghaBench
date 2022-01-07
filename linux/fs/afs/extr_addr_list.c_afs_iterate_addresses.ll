; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_iterate_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_iterate_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_cursor = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%lx-%lx-%lx,%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_iterate_addresses(%struct.afs_addr_cursor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_addr_cursor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.afs_addr_cursor* %0, %struct.afs_addr_cursor** %3, align 8
  %7 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %8 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

12:                                               ; preds = %1
  %13 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %14 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %19 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %26 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %29 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24, i64 %27, i32 %30)
  %32 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %33 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %38 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %36, %39
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %4, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %71

47:                                               ; preds = %12
  %48 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %49 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @READ_ONCE(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @test_bit(i32 %54, i64* %4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %61

58:                                               ; preds = %47
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @__ffs(i64 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %57
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %64 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %67 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %66, i32 0, i32 0
  %68 = call i32 @set_bit(i32 %65, i64* %67)
  %69 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %3, align 8
  %70 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %69, i32 0, i32 2
  store i32 0, i32* %70, align 4
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %61, %46, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @_enter(i8*, i64, i64, i64, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
