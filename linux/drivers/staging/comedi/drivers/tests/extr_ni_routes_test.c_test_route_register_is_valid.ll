; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_route_register_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_route_register_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ni_route_tables }
%struct.ni_route_tables = type { i32 }

@private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"check for bad source 4-->4\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"find first source\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"find middle source\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"find last source\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_route_register_is_valid() #0 {
  %1 = alloca %struct.ni_route_tables*, align 8
  store %struct.ni_route_tables* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @private, i32 0, i32 0), %struct.ni_route_tables** %1, align 8
  %2 = call i32 (...) @init_pci_fake()
  %3 = call i32 @O(i32 4)
  %4 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %5 = call i32 @route_register_is_valid(i32 4, i32 %3, %struct.ni_route_tables* %4)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @unittest(i32 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @O(i32 1)
  %10 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %11 = call i32 @route_register_is_valid(i32 0, i32 %9, %struct.ni_route_tables* %10)
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @unittest(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @O(i32 6)
  %16 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %17 = call i32 @route_register_is_valid(i32 4, i32 %15, %struct.ni_route_tables* %16)
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @unittest(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @O(i32 8)
  %22 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %23 = call i32 @route_register_is_valid(i32 9, i32 %21, %struct.ni_route_tables* %22)
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @unittest(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_fake(...) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @route_register_is_valid(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @O(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
