; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_get_reg_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_get_reg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ni_route_tables }
%struct.ni_route_tables = type { i32 }

@private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [50 x i8] c"check bad direct trigger arg for first reg->dest\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"check direct trigger arg for first reg->dest\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"check direct trigger arg for middle reg->dest\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"check direct trigger arg for last reg->dest\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"check bad direct trigger arg for first reg->dest w/offs\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"check direct trigger arg for first reg->dest w/offs\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"check direct trigger arg for middle reg->dest w/offs\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"check direct trigger arg for last reg->dest w/offs\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"check bad trigger arg for first src->dest\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"check trigger arg for first src->dest\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"check trigger arg for middle src->dest\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"check trigger arg for last src->dest\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ni_get_reg_value() #0 {
  %1 = alloca %struct.ni_route_tables*, align 8
  store %struct.ni_route_tables* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @private, i32 0, i32 0), %struct.ni_route_tables** %1, align 8
  %2 = call i32 (...) @init_pci_fake()
  %3 = call i32 @O(i32 0)
  %4 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %5 = call i32 @ni_get_reg_value(i32 0, i32 %3, %struct.ni_route_tables* %4)
  %6 = icmp eq i32 %5, -1
  %7 = zext i1 %6 to i32
  %8 = call i32 @unittest(i32 %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @O(i32 1)
  %10 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %11 = call i32 @ni_get_reg_value(i32 0, i32 %9, %struct.ni_route_tables* %10)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @unittest(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @O(i32 6)
  %16 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %17 = call i32 @ni_get_reg_value(i32 4, i32 %15, %struct.ni_route_tables* %16)
  %18 = icmp eq i32 %17, 4
  %19 = zext i1 %18 to i32
  %20 = call i32 @unittest(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @O(i32 8)
  %22 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %23 = call i32 @ni_get_reg_value(i32 9, i32 %21, %struct.ni_route_tables* %22)
  %24 = icmp eq i32 %23, 9
  %25 = zext i1 %24 to i32
  %26 = call i32 @unittest(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @O(i32 0)
  %28 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %29 = call i32 @ni_get_reg_value_roffs(i32 -1, i32 %27, %struct.ni_route_tables* %28, i32 1)
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @unittest(i32 %31, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i32 @O(i32 1)
  %34 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %35 = call i32 @ni_get_reg_value_roffs(i32 0, i32 %33, %struct.ni_route_tables* %34, i32 0)
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @unittest(i32 %37, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %39 = call i32 @O(i32 6)
  %40 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %41 = call i32 @ni_get_reg_value_roffs(i32 3, i32 %39, %struct.ni_route_tables* %40, i32 1)
  %42 = icmp eq i32 %41, 4
  %43 = zext i1 %42 to i32
  %44 = call i32 @unittest(i32 %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i32 @O(i32 8)
  %46 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %47 = call i32 @ni_get_reg_value_roffs(i32 7, i32 %45, %struct.ni_route_tables* %46, i32 2)
  %48 = icmp eq i32 %47, 9
  %49 = zext i1 %48 to i32
  %50 = call i32 @unittest(i32 %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %51 = call i32 @O(i32 0)
  %52 = call i32 @O(i32 0)
  %53 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %54 = call i32 @ni_get_reg_value(i32 %51, i32 %52, %struct.ni_route_tables* %53)
  %55 = icmp eq i32 %54, -1
  %56 = zext i1 %55 to i32
  %57 = call i32 @unittest(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %58 = call i32 @O(i32 0)
  %59 = call i32 @O(i32 1)
  %60 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %61 = call i32 @ni_get_reg_value(i32 %58, i32 %59, %struct.ni_route_tables* %60)
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @unittest(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %65 = call i32 @O(i32 5)
  %66 = call i32 @O(i32 6)
  %67 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %68 = call i32 @ni_get_reg_value(i32 %65, i32 %66, %struct.ni_route_tables* %67)
  %69 = icmp eq i32 %68, 5
  %70 = zext i1 %69 to i32
  %71 = call i32 @unittest(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %72 = call i32 @O(i32 8)
  %73 = call i32 @O(i32 9)
  %74 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %75 = call i32 @ni_get_reg_value(i32 %72, i32 %73, %struct.ni_route_tables* %74)
  %76 = icmp eq i32 %75, 8
  %77 = zext i1 %76 to i32
  %78 = call i32 @unittest(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_fake(...) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @ni_get_reg_value(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @O(i32) #1

declare dso_local i32 @ni_get_reg_value_roffs(i32, i32, %struct.ni_route_tables*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
