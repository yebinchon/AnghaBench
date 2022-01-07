; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_assign_device_routes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_assign_device_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.ni_device_routes* }
%struct.ni_device_routes = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i64* }

@ni_eseries = common dso_local global i32 0, align 4
@pci_6070e = common dso_local global i32 0, align 4
@private = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"find device pci-6070e\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"number of pci-6070e route_sets == 37\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"first pci-6070e route_set is for NI_PFI(0)\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"first pci-6070e route_set length == 1\0A\00", align 1
@NI_AI_StartTrigger = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"first pci-6070e route_set src. == NI_AI_StartTrigger\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"10th pci-6070e route_set is for TRIGGER_LINE(0)\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"10th pci-6070e route_set length == 10\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"10th pci-6070e route_set src. == NI_CtrSource(0)\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"all pci-6070e route_sets in order of signal destination\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"all pci-6070e route_set->src's in order of signal source\0A\00", align 1
@PXI_Star = common dso_local global i64 0, align 8
@NI_AI_SampleClock = common dso_local global i64 0, align 8
@NI_10MHzRefClock = common dso_local global i64 0, align 8
@NI_AI_ConvertClock = common dso_local global i64 0, align 8
@NI_PFI_OUTPUT_AI_CONVERT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"pci-6070e finds e-series route_values table\0A\00", align 1
@ni_mseries = common dso_local global i32 0, align 4
@pci_6220 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"find device pci-6220\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"pci-6220 find other route_values table\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"pci-6220 finds m-series route_values table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ni_assign_device_routes() #0 {
  %1 = alloca %struct.ni_device_routes*, align 8
  %2 = alloca %struct.ni_device_routes*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 (...) @init_pci_6070e()
  %6 = load i32, i32* @ni_eseries, align 4
  %7 = load i32, i32* @pci_6070e, align 4
  %8 = call i32 @ni_assign_device_routes(i32 %6, i32 %7, %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @private, i32 0, i32 0))
  %9 = load %struct.ni_device_routes*, %struct.ni_device_routes** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @private, i32 0, i32 0, i32 1), align 8
  store %struct.ni_device_routes* %9, %struct.ni_device_routes** %1, align 8
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @private, i32 0, i32 0, i32 0), align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %12 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @pci_6070e, align 4
  %15 = call i64 @strncmp(i32 %13, i32 %14, i32 10)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @unittest(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %20 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 37
  %23 = zext i1 %22 to i32
  %24 = call i32 @unittest(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %26 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @NI_PFI(i32 0)
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @unittest(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %35 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @unittest(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %43 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NI_AI_StartTrigger, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @unittest(i32 %51, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %54 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 10
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @TRIGGER_LINE(i32 0)
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @unittest(i32 %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %64 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 10
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 10
  %70 = zext i1 %69 to i32
  %71 = call i32 @unittest(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %73 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 10
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @NI_CtrSource(i32 0)
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @unittest(i32 %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %84 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %85 = call i32 @route_set_dests_in_order(%struct.ni_device_routes* %84)
  %86 = call i32 @unittest(i32 %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %87 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %88 = call i32 @route_set_sources_in_order(%struct.ni_device_routes* %87)
  %89 = call i32 @unittest(i32 %88, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0))
  %90 = load i32*, i32** %3, align 8
  %91 = load i64, i64* @PXI_Star, align 8
  %92 = call i32 @B(i64 %91)
  %93 = load i64, i64* @NI_AI_SampleClock, align 8
  %94 = call i32 @B(i64 %93)
  %95 = call i64 @RVi(i32* %90, i32 %92, i32 %94)
  %96 = call i64 @V(i32 17)
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %0
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* @NI_10MHzRefClock, align 8
  %101 = call i32 @B(i64 %100)
  %102 = call i64 @TRIGGER_LINE(i32 0)
  %103 = call i32 @B(i64 %102)
  %104 = call i64 @RVi(i32* %99, i32 %101, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %98
  %107 = load i32*, i32** %3, align 8
  %108 = load i64, i64* @NI_AI_ConvertClock, align 8
  %109 = call i32 @B(i64 %108)
  %110 = call i64 @NI_PFI(i32 0)
  %111 = call i32 @B(i64 %110)
  %112 = call i64 @RVi(i32* %107, i32 %109, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %106
  %115 = load i32*, i32** %3, align 8
  %116 = load i64, i64* @NI_AI_ConvertClock, align 8
  %117 = call i32 @B(i64 %116)
  %118 = call i64 @NI_PFI(i32 2)
  %119 = call i32 @B(i64 %118)
  %120 = call i64 @RVi(i32* %115, i32 %117, i32 %119)
  %121 = load i32, i32* @NI_PFI_OUTPUT_AI_CONVERT, align 4
  %122 = call i64 @V(i32 %121)
  %123 = icmp eq i64 %120, %122
  br label %124

124:                                              ; preds = %114, %106, %98, %0
  %125 = phi i1 [ false, %106 ], [ false, %98 ], [ false, %0 ], [ %123, %114 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 @unittest(i32 %126, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %128 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  store %struct.ni_device_routes* %128, %struct.ni_device_routes** %2, align 8
  %129 = load i32*, i32** %3, align 8
  store i32* %129, i32** %4, align 8
  %130 = call i32 (...) @init_pci_6220()
  %131 = load i32, i32* @ni_mseries, align 4
  %132 = load i32, i32* @pci_6220, align 4
  %133 = call i32 @ni_assign_device_routes(i32 %131, i32 %132, %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @private, i32 0, i32 0))
  %134 = load %struct.ni_device_routes*, %struct.ni_device_routes** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @private, i32 0, i32 0, i32 1), align 8
  store %struct.ni_device_routes* %134, %struct.ni_device_routes** %1, align 8
  %135 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @private, i32 0, i32 0, i32 0), align 8
  store i32* %135, i32** %3, align 8
  %136 = load %struct.ni_device_routes*, %struct.ni_device_routes** %1, align 8
  %137 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @pci_6220, align 4
  %140 = call i64 @strncmp(i32 %138, i32 %139, i32 10)
  %141 = icmp eq i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @unittest(i32 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %144 = load i32*, i32** %4, align 8
  %145 = load i32*, i32** %3, align 8
  %146 = icmp ne i32* %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @unittest(i32 %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %149 = load i32*, i32** %3, align 8
  %150 = load i64, i64* @PXI_Star, align 8
  %151 = call i32 @B(i64 %150)
  %152 = load i64, i64* @NI_AI_SampleClock, align 8
  %153 = call i32 @B(i64 %152)
  %154 = call i64 @RVi(i32* %149, i32 %151, i32 %153)
  %155 = call i64 @V(i32 20)
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %124
  %158 = load i32*, i32** %3, align 8
  %159 = load i64, i64* @NI_10MHzRefClock, align 8
  %160 = call i32 @B(i64 %159)
  %161 = call i64 @TRIGGER_LINE(i32 0)
  %162 = call i32 @B(i64 %161)
  %163 = call i64 @RVi(i32* %158, i32 %160, i32 %162)
  %164 = call i64 @V(i32 12)
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %157
  %167 = load i32*, i32** %3, align 8
  %168 = load i64, i64* @NI_AI_ConvertClock, align 8
  %169 = call i32 @B(i64 %168)
  %170 = call i64 @NI_PFI(i32 0)
  %171 = call i32 @B(i64 %170)
  %172 = call i64 @RVi(i32* %167, i32 %169, i32 %171)
  %173 = call i64 @V(i32 3)
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %166
  %176 = load i32*, i32** %3, align 8
  %177 = load i64, i64* @NI_AI_ConvertClock, align 8
  %178 = call i32 @B(i64 %177)
  %179 = call i64 @NI_PFI(i32 2)
  %180 = call i32 @B(i64 %179)
  %181 = call i64 @RVi(i32* %176, i32 %178, i32 %180)
  %182 = call i64 @V(i32 3)
  %183 = icmp eq i64 %181, %182
  br label %184

184:                                              ; preds = %175, %166, %157, %124
  %185 = phi i1 [ false, %166 ], [ false, %157 ], [ false, %124 ], [ %183, %175 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @unittest(i32 %186, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_6070e(...) #1

declare dso_local i32 @ni_assign_device_routes(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i64 @NI_PFI(i32) #1

declare dso_local i64 @TRIGGER_LINE(i32) #1

declare dso_local i64 @NI_CtrSource(i32) #1

declare dso_local i32 @route_set_dests_in_order(%struct.ni_device_routes*) #1

declare dso_local i32 @route_set_sources_in_order(%struct.ni_device_routes*) #1

declare dso_local i64 @RVi(i32*, i32, i32) #1

declare dso_local i32 @B(i64) #1

declare dso_local i64 @V(i32) #1

declare dso_local i32 @init_pci_6220(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
