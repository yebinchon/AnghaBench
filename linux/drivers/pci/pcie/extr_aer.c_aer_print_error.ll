; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_print_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aer_err_info = type { i32, i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [73 x i8] c"PCIe Bus Error: severity=%s, type=Inaccessible, (Unregistered Agent ID)\0A\00", align 1
@aer_error_severity_string = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"PCIe Bus Error: severity=%s, type=%s, (%s)\0A\00", align 1
@aer_error_layer = common dso_local global i32* null, align 8
@aer_agent_string = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"  device [%04x:%04x] error status/mask=%08x/%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"  Error of this Agent is reported first\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aer_print_error(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.aer_err_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %19 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32*, i32** @aer_error_severity_string, align 8
  %25 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %26 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %23, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %91

31:                                               ; preds = %2
  %32 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %33 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %36 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @AER_GET_LAYER_ERROR(i64 %34, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %40 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %43 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @AER_GET_AGENT(i64 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = load i32*, i32** @aer_error_severity_string, align 8
  %48 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %49 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @aer_error_layer, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @aer_agent_string, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %57, i32 %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %72 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %75 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %79 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %80 = call i32 @__aer_print_error(%struct.pci_dev* %78, %struct.aer_err_info* %79)
  %81 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %82 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %31
  %86 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %87 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %88 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %87, i32 0, i32 5
  %89 = call i32 @__print_tlp_header(%struct.pci_dev* %86, i32* %88)
  br label %90

90:                                               ; preds = %85, %31
  br label %91

91:                                               ; preds = %90, %22
  %92 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %93 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %98 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %103 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %109 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %101, %96, %91
  %111 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 1
  %113 = call i32 @dev_name(i32* %112)
  %114 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %115 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %118 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = xor i32 %119, -1
  %121 = and i32 %116, %120
  %122 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %123 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %126 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %129 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %128, i32 0, i32 5
  %130 = call i32 @trace_aer_event(i32 %113, i32 %121, i64 %124, i64 %127, i32* %129)
  ret void
}

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, ...) #1

declare dso_local i32 @AER_GET_LAYER_ERROR(i64, i32) #1

declare dso_local i32 @AER_GET_AGENT(i64, i32) #1

declare dso_local i32 @__aer_print_error(%struct.pci_dev*, %struct.aer_err_info*) #1

declare dso_local i32 @__print_tlp_header(%struct.pci_dev*, i32*) #1

declare dso_local i32 @trace_aer_event(i32, i32, i64, i64, i32*) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
