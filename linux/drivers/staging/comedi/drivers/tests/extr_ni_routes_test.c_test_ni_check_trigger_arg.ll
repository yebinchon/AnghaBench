; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_check_trigger_arg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_check_trigger_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ni_route_tables }
%struct.ni_route_tables = type { i32 }

@private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
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
define dso_local void @test_ni_check_trigger_arg() #0 {
  %1 = alloca %struct.ni_route_tables*, align 8
  store %struct.ni_route_tables* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @private, i32 0, i32 0), %struct.ni_route_tables** %1, align 8
  %2 = call i32 (...) @init_pci_fake()
  %3 = call i32 @O(i32 0)
  %4 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %5 = call i32 @ni_check_trigger_arg(i32 0, i32 %3, %struct.ni_route_tables* %4)
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  %8 = icmp eq i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @unittest(i32 %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @O(i32 1)
  %12 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %13 = call i32 @ni_check_trigger_arg(i32 0, i32 %11, %struct.ni_route_tables* %12)
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @unittest(i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @O(i32 6)
  %18 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %19 = call i32 @ni_check_trigger_arg(i32 4, i32 %17, %struct.ni_route_tables* %18)
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @unittest(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @O(i32 8)
  %24 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %25 = call i32 @ni_check_trigger_arg(i32 9, i32 %23, %struct.ni_route_tables* %24)
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @unittest(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @O(i32 0)
  %30 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %31 = call i32 @ni_check_trigger_arg_roffs(i32 -1, i32 %29, %struct.ni_route_tables* %30, i32 1)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @unittest(i32 %35, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i32 @O(i32 1)
  %38 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %39 = call i32 @ni_check_trigger_arg_roffs(i32 0, i32 %37, %struct.ni_route_tables* %38, i32 0)
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @unittest(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %43 = call i32 @O(i32 6)
  %44 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %45 = call i32 @ni_check_trigger_arg_roffs(i32 3, i32 %43, %struct.ni_route_tables* %44, i32 1)
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @unittest(i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %49 = call i32 @O(i32 8)
  %50 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %51 = call i32 @ni_check_trigger_arg_roffs(i32 7, i32 %49, %struct.ni_route_tables* %50, i32 2)
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @unittest(i32 %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %55 = call i32 @O(i32 0)
  %56 = call i32 @O(i32 0)
  %57 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %58 = call i32 @ni_check_trigger_arg(i32 %55, i32 %56, %struct.ni_route_tables* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @unittest(i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %64 = call i32 @O(i32 0)
  %65 = call i32 @O(i32 1)
  %66 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %67 = call i32 @ni_check_trigger_arg(i32 %64, i32 %65, %struct.ni_route_tables* %66)
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @unittest(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %71 = call i32 @O(i32 5)
  %72 = call i32 @O(i32 6)
  %73 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %74 = call i32 @ni_check_trigger_arg(i32 %71, i32 %72, %struct.ni_route_tables* %73)
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @unittest(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %78 = call i32 @O(i32 8)
  %79 = call i32 @O(i32 9)
  %80 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %81 = call i32 @ni_check_trigger_arg(i32 %78, i32 %79, %struct.ni_route_tables* %80)
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @unittest(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_fake(...) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @ni_check_trigger_arg(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @O(i32) #1

declare dso_local i32 @ni_check_trigger_arg_roffs(i32, i32, %struct.ni_route_tables*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
