; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_route_set_has_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_route_set_has_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@DR = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"check for bad source\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"find first source\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"find fifth source\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"find last source\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ni_route_set_has_source() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DR, i32 0, i32 0), align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  %3 = call i32 @O(i32 0)
  %4 = call i32 @ni_route_set_has_source(i32* %2, i32 %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @unittest(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DR, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = call i32 @O(i32 1)
  %12 = call i32 @ni_route_set_has_source(i32* %10, i32 %11)
  %13 = call i32 @unittest(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DR, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @O(i32 5)
  %17 = call i32 @ni_route_set_has_source(i32* %15, i32 %16)
  %18 = call i32 @unittest(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DR, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i32 @O(i32 9)
  %22 = call i32 @ni_route_set_has_source(i32* %20, i32 %21)
  %23 = call i32 @unittest(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @ni_route_set_has_source(i32*, i32) #1

declare dso_local i32 @O(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
