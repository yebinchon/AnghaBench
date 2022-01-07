; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_find_route_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_find_route_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@bad_dest = common dso_local global i32 0, align 4
@DR = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"check for nonexistent route_set\0A\00", align 1
@dest0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"find first route_set\0A\00", align 1
@desti = common dso_local global i32 0, align 4
@ith_dest_index = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"find ith route_set\0A\00", align 1
@no_val_dest = common dso_local global i32 0, align 4
@no_val_index = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"find no_val route_set in spite of missing values\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"find last route_set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ni_find_route_set() #0 {
  %1 = load i32, i32* @bad_dest, align 4
  %2 = call %struct.TYPE_4__* @ni_find_route_set(i32 %1, %struct.TYPE_5__* @DR)
  %3 = icmp ne %struct.TYPE_4__* %2, null
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @unittest(i32 %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @dest0, align 4
  %8 = call %struct.TYPE_4__* @ni_find_route_set(i32 %7, %struct.TYPE_5__* @DR)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DR, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 0
  %11 = icmp eq %struct.TYPE_4__* %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @unittest(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @desti, align 4
  %15 = call %struct.TYPE_4__* @ni_find_route_set(i32 %14, %struct.TYPE_5__* @DR)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DR, i32 0, i32 1), align 8
  %17 = load i64, i64* @ith_dest_index, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = icmp eq %struct.TYPE_4__* %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @unittest(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @no_val_dest, align 4
  %23 = call %struct.TYPE_4__* @ni_find_route_set(i32 %22, %struct.TYPE_5__* @DR)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DR, i32 0, i32 1), align 8
  %25 = load i64, i64* @no_val_index, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = icmp eq %struct.TYPE_4__* %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @unittest(i32 %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DR, i32 0, i32 1), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DR, i32 0, i32 0), align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_4__* @ni_find_route_set(i32 %36, %struct.TYPE_5__* @DR)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DR, i32 0, i32 1), align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @DR, i32 0, i32 0), align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %41
  %43 = icmp eq %struct.TYPE_4__* %37, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @unittest(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @ni_find_route_set(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
