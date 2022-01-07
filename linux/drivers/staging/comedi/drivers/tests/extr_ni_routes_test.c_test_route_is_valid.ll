; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_route_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_route_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ni_route_tables }
%struct.ni_route_tables = type { i32 }

@private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"check for bad route 0-->0\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"validate first destination\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"validate middle destination\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"validate last destination\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_route_is_valid() #0 {
  %1 = alloca %struct.ni_route_tables*, align 8
  store %struct.ni_route_tables* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @private, i32 0, i32 0), %struct.ni_route_tables** %1, align 8
  %2 = call i32 (...) @init_pci_fake()
  %3 = call i32 @O(i32 0)
  %4 = call i32 @O(i32 0)
  %5 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %6 = call i32 @route_is_valid(i32 %3, i32 %4, %struct.ni_route_tables* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @unittest(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @O(i32 0)
  %12 = call i32 @O(i32 1)
  %13 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %14 = call i32 @route_is_valid(i32 %11, i32 %12, %struct.ni_route_tables* %13)
  %15 = call i32 @unittest(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @O(i32 5)
  %17 = call i32 @O(i32 6)
  %18 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %19 = call i32 @route_is_valid(i32 %16, i32 %17, %struct.ni_route_tables* %18)
  %20 = call i32 @unittest(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @O(i32 8)
  %22 = call i32 @O(i32 9)
  %23 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %24 = call i32 @route_is_valid(i32 %21, i32 %22, %struct.ni_route_tables* %23)
  %25 = call i32 @unittest(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_fake(...) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @route_is_valid(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @O(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
