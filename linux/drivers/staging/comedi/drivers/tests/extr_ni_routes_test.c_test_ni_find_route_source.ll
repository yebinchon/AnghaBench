; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_find_route_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_find_route_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ni_route_tables }
%struct.ni_route_tables = type { i32 }

@private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"check for bad source 4-->4\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"find first source\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"find middle source\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"find last source\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"find invalid source (without checking device routes)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ni_find_route_source() #0 {
  %1 = alloca %struct.ni_route_tables*, align 8
  store %struct.ni_route_tables* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @private, i32 0, i32 0), %struct.ni_route_tables** %1, align 8
  %2 = call i32 (...) @init_pci_fake()
  %3 = call i32 @O(i32 4)
  %4 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %5 = call i32 @ni_find_route_source(i32 4, i32 %3, %struct.ni_route_tables* %4)
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  %8 = icmp eq i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @unittest(i32 %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @O(i32 1)
  %12 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %13 = call i32 @ni_find_route_source(i32 0, i32 %11, %struct.ni_route_tables* %12)
  %14 = call i32 @O(i32 0)
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @unittest(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @O(i32 6)
  %19 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %20 = call i32 @ni_find_route_source(i32 4, i32 %18, %struct.ni_route_tables* %19)
  %21 = call i32 @O(i32 4)
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @unittest(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @O(i32 8)
  %26 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %27 = call i32 @ni_find_route_source(i32 9, i32 %25, %struct.ni_route_tables* %26)
  %28 = call i32 @O(i32 9)
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @unittest(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @O(i32 9)
  %33 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %34 = call i32 @ni_find_route_source(i32 8, i32 %32, %struct.ni_route_tables* %33)
  %35 = call i32 @O(i32 8)
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @unittest(i32 %37, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_fake(...) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @ni_find_route_source(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @O(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
