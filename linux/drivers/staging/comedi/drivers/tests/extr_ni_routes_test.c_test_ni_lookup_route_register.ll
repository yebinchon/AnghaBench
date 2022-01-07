; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_lookup_route_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_lookup_route_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ni_route_tables }
%struct.ni_route_tables = type { i32 }

@private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"check for bad route 0-->0\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"validate first destination\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"validate middle destination\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"validate last destination\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"lookup invalid destination\0A\00", align 1
@rgout0_src0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"rgout0_src0: no direct lookup of indirect route\0A\00", align 1
@NI_RGOUT0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"rgout0_src0: lookup indirect route register\0A\00", align 1
@rgout0_src1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"rgout0_src1: no direct lookup of indirect route\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"rgout0_src1: lookup indirect route register\0A\00", align 1
@brd0_src0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"brd0_src0: no direct lookup of indirect route\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"brd0_src0: lookup indirect route register\0A\00", align 1
@brd0_src1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"brd0_src1: no direct lookup of indirect route\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"brd0_src1: lookup indirect route register\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ni_lookup_route_register() #0 {
  %1 = alloca %struct.ni_route_tables*, align 8
  store %struct.ni_route_tables* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @private, i32 0, i32 0), %struct.ni_route_tables** %1, align 8
  %2 = call i32 (...) @init_pci_fake()
  %3 = call i32 @O(i32 0)
  %4 = call i32 @O(i32 0)
  %5 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %6 = call i32 @ni_lookup_route_register(i32 %3, i32 %4, %struct.ni_route_tables* %5)
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  %9 = icmp eq i32 %6, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @unittest(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @O(i32 1)
  %13 = call i32 @O(i32 0)
  %14 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %15 = call i32 @ni_lookup_route_register(i32 %12, i32 %13, %struct.ni_route_tables* %14)
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @unittest(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @O(i32 6)
  %20 = call i32 @O(i32 5)
  %21 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %22 = call i32 @ni_lookup_route_register(i32 %19, i32 %20, %struct.ni_route_tables* %21)
  %23 = icmp eq i32 %22, 6
  %24 = zext i1 %23 to i32
  %25 = call i32 @unittest(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @O(i32 8)
  %27 = call i32 @O(i32 9)
  %28 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %29 = call i32 @ni_lookup_route_register(i32 %26, i32 %27, %struct.ni_route_tables* %28)
  %30 = icmp eq i32 %29, 8
  %31 = zext i1 %30 to i32
  %32 = call i32 @unittest(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @O(i32 10)
  %34 = call i32 @O(i32 9)
  %35 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %36 = call i32 @ni_lookup_route_register(i32 %33, i32 %34, %struct.ni_route_tables* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @unittest(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @rgout0_src0, align 4
  %43 = call i32 @TRIGGER_LINE(i32 0)
  %44 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %45 = call i32 @ni_lookup_route_register(i32 %42, i32 %43, %struct.ni_route_tables* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @unittest(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %51 = load i32, i32* @rgout0_src0, align 4
  %52 = load i32, i32* @NI_RGOUT0, align 4
  %53 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %54 = call i32 @ni_lookup_route_register(i32 %51, i32 %52, %struct.ni_route_tables* %53)
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @unittest(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i32, i32* @rgout0_src1, align 4
  %59 = call i32 @TRIGGER_LINE(i32 2)
  %60 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %61 = call i32 @ni_lookup_route_register(i32 %58, i32 %59, %struct.ni_route_tables* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @unittest(i32 %65, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i32, i32* @rgout0_src1, align 4
  %68 = load i32, i32* @NI_RGOUT0, align 4
  %69 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %70 = call i32 @ni_lookup_route_register(i32 %67, i32 %68, %struct.ni_route_tables* %69)
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = call i32 @unittest(i32 %72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %74 = load i32, i32* @brd0_src0, align 4
  %75 = call i32 @TRIGGER_LINE(i32 4)
  %76 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %77 = call i32 @ni_lookup_route_register(i32 %74, i32 %75, %struct.ni_route_tables* %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @unittest(i32 %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %83 = load i32, i32* @brd0_src0, align 4
  %84 = call i32 @NI_RTSI_BRD(i32 0)
  %85 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %86 = call i32 @ni_lookup_route_register(i32 %83, i32 %84, %struct.ni_route_tables* %85)
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @unittest(i32 %88, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %90 = load i32, i32* @brd0_src1, align 4
  %91 = call i32 @TRIGGER_LINE(i32 4)
  %92 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %93 = call i32 @ni_lookup_route_register(i32 %90, i32 %91, %struct.ni_route_tables* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @unittest(i32 %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %99 = load i32, i32* @brd0_src1, align 4
  %100 = call i32 @NI_RTSI_BRD(i32 0)
  %101 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %102 = call i32 @ni_lookup_route_register(i32 %99, i32 %100, %struct.ni_route_tables* %101)
  %103 = icmp eq i32 %102, 1
  %104 = zext i1 %103 to i32
  %105 = call i32 @unittest(i32 %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_fake(...) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @ni_lookup_route_register(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @O(i32) #1

declare dso_local i32 @TRIGGER_LINE(i32) #1

declare dso_local i32 @NI_RTSI_BRD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
