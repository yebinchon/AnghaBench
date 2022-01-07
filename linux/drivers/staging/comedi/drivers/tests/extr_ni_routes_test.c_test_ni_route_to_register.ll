; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_route_to_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_route_to_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ni_route_tables }
%struct.ni_route_tables = type { i32 }

@private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"check for bad route 0-->0\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"validate first destination\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"validate middle destination\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"validate last destination\0A\00", align 1
@rgout0_src0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"validate indirect route through rgout0 to TRIGGER_LINE(0)\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"validate indirect route through rgout0 to TRIGGER_LINE(1)\0A\00", align 1
@rgout0_src1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"validate indirect route through rgout0 to TRIGGER_LINE(2)\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"validate indirect route through rgout0 to TRIGGER_LINE(3)\0A\00", align 1
@brd0_src0 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"validate indirect route through brd0 to TRIGGER_LINE(4)\0A\00", align 1
@brd0_src1 = common dso_local global i32 0, align 4
@brd1_src0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [57 x i8] c"validate indirect route through brd1 to TRIGGER_LINE(3)\0A\00", align 1
@brd1_src1 = common dso_local global i32 0, align 4
@brd2_src0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"validate indirect route through brd2 to TRIGGER_LINE(2)\0A\00", align 1
@brd2_src1 = common dso_local global i32 0, align 4
@brd3_src0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [57 x i8] c"validate indirect route through brd3 to TRIGGER_LINE(1)\0A\00", align 1
@brd3_src1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ni_route_to_register() #0 {
  %1 = alloca %struct.ni_route_tables*, align 8
  store %struct.ni_route_tables* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @private, i32 0, i32 0), %struct.ni_route_tables** %1, align 8
  %2 = call i32 (...) @init_pci_fake()
  %3 = call i32 @O(i32 0)
  %4 = call i32 @O(i32 0)
  %5 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %6 = call i32 @ni_route_to_register(i32 %3, i32 %4, %struct.ni_route_tables* %5)
  %7 = icmp slt i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @unittest(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @O(i32 1)
  %11 = call i32 @O(i32 0)
  %12 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %13 = call i32 @ni_route_to_register(i32 %10, i32 %11, %struct.ni_route_tables* %12)
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @unittest(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @O(i32 6)
  %18 = call i32 @O(i32 5)
  %19 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %20 = call i32 @ni_route_to_register(i32 %17, i32 %18, %struct.ni_route_tables* %19)
  %21 = icmp eq i32 %20, 6
  %22 = zext i1 %21 to i32
  %23 = call i32 @unittest(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @O(i32 8)
  %25 = call i32 @O(i32 9)
  %26 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %27 = call i32 @ni_route_to_register(i32 %24, i32 %25, %struct.ni_route_tables* %26)
  %28 = icmp eq i32 %27, 8
  %29 = zext i1 %28 to i32
  %30 = call i32 @unittest(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @rgout0_src0, align 4
  %32 = call i32 @TRIGGER_LINE(i32 0)
  %33 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %34 = call i32 @ni_route_to_register(i32 %31, i32 %32, %struct.ni_route_tables* %33)
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @unittest(i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32, i32* @rgout0_src0, align 4
  %39 = call i32 @TRIGGER_LINE(i32 1)
  %40 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %41 = call i32 @ni_route_to_register(i32 %38, i32 %39, %struct.ni_route_tables* %40)
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @unittest(i32 %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32, i32* @rgout0_src1, align 4
  %46 = call i32 @TRIGGER_LINE(i32 2)
  %47 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %48 = call i32 @ni_route_to_register(i32 %45, i32 %46, %struct.ni_route_tables* %47)
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = call i32 @unittest(i32 %50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i32, i32* @rgout0_src1, align 4
  %53 = call i32 @TRIGGER_LINE(i32 3)
  %54 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %55 = call i32 @ni_route_to_register(i32 %52, i32 %53, %struct.ni_route_tables* %54)
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = call i32 @unittest(i32 %57, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %59 = load i32, i32* @brd0_src0, align 4
  %60 = call i32 @TRIGGER_LINE(i32 4)
  %61 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %62 = call i32 @ni_route_to_register(i32 %59, i32 %60, %struct.ni_route_tables* %61)
  %63 = call i32 @BIT(i32 6)
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @unittest(i32 %65, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i32, i32* @brd0_src1, align 4
  %68 = call i32 @TRIGGER_LINE(i32 4)
  %69 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %70 = call i32 @ni_route_to_register(i32 %67, i32 %68, %struct.ni_route_tables* %69)
  %71 = call i32 @BIT(i32 6)
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @unittest(i32 %73, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %75 = load i32, i32* @brd1_src0, align 4
  %76 = call i32 @TRIGGER_LINE(i32 3)
  %77 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %78 = call i32 @ni_route_to_register(i32 %75, i32 %76, %struct.ni_route_tables* %77)
  %79 = call i32 @BIT(i32 6)
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @unittest(i32 %81, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %83 = load i32, i32* @brd1_src1, align 4
  %84 = call i32 @TRIGGER_LINE(i32 3)
  %85 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %86 = call i32 @ni_route_to_register(i32 %83, i32 %84, %struct.ni_route_tables* %85)
  %87 = call i32 @BIT(i32 6)
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @unittest(i32 %89, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %91 = load i32, i32* @brd2_src0, align 4
  %92 = call i32 @TRIGGER_LINE(i32 2)
  %93 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %94 = call i32 @ni_route_to_register(i32 %91, i32 %92, %struct.ni_route_tables* %93)
  %95 = call i32 @BIT(i32 6)
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @unittest(i32 %97, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %99 = load i32, i32* @brd2_src1, align 4
  %100 = call i32 @TRIGGER_LINE(i32 2)
  %101 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %102 = call i32 @ni_route_to_register(i32 %99, i32 %100, %struct.ni_route_tables* %101)
  %103 = call i32 @BIT(i32 6)
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @unittest(i32 %105, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %107 = load i32, i32* @brd3_src0, align 4
  %108 = call i32 @TRIGGER_LINE(i32 1)
  %109 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %110 = call i32 @ni_route_to_register(i32 %107, i32 %108, %struct.ni_route_tables* %109)
  %111 = call i32 @BIT(i32 6)
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @unittest(i32 %113, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  %115 = load i32, i32* @brd3_src1, align 4
  %116 = call i32 @TRIGGER_LINE(i32 1)
  %117 = load %struct.ni_route_tables*, %struct.ni_route_tables** %1, align 8
  %118 = call i32 @ni_route_to_register(i32 %115, i32 %116, %struct.ni_route_tables* %117)
  %119 = call i32 @BIT(i32 6)
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @unittest(i32 %121, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_fake(...) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @ni_route_to_register(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @O(i32) #1

declare dso_local i32 @TRIGGER_LINE(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
