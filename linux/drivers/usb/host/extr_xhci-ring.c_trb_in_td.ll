; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_trb_in_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_trb_in_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_segment = type { i64, %union.xhci_trb*, %struct.xhci_segment* }
%union.xhci_trb = type { i32 }

@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"Looking for event-dma %016llx trb-start %016llx trb-end %016llx seg-start %016llx seg-end %016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xhci_segment* @trb_in_td(%struct.xhci_hcd* %0, %struct.xhci_segment* %1, %union.xhci_trb* %2, %union.xhci_trb* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.xhci_segment*, align 8
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca %struct.xhci_segment*, align 8
  %10 = alloca %union.xhci_trb*, align 8
  %11 = alloca %union.xhci_trb*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.xhci_segment*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %8, align 8
  store %struct.xhci_segment* %1, %struct.xhci_segment** %9, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %10, align 8
  store %union.xhci_trb* %3, %union.xhci_trb** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %19 = load %union.xhci_trb*, %union.xhci_trb** %10, align 8
  %20 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %18, %union.xhci_trb* %19)
  store i64 %20, i64* %14, align 8
  %21 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  store %struct.xhci_segment* %21, %struct.xhci_segment** %17, align 8
  br label %22

22:                                               ; preds = %112, %6
  %23 = load i64, i64* %14, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store %struct.xhci_segment* null, %struct.xhci_segment** %7, align 8
  br label %117

26:                                               ; preds = %22
  %27 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %28 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %29 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %28, i32 0, i32 1
  %30 = load %union.xhci_trb*, %union.xhci_trb** %29, align 8
  %31 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %30, i64 %33
  %35 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %27, %union.xhci_trb* %34)
  store i64 %35, i64* %15, align 8
  %36 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %37 = load %union.xhci_trb*, %union.xhci_trb** %11, align 8
  %38 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %36, %union.xhci_trb* %37)
  store i64 %38, i64* %16, align 8
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %26
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %47 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @xhci_warn(%struct.xhci_hcd* %42, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44, i64 %45, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %41, %26
  %52 = load i64, i64* %16, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %16, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %16, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  store %struct.xhci_segment* %67, %struct.xhci_segment** %7, align 8
  br label %117

68:                                               ; preds = %62, %58
  br label %90

69:                                               ; preds = %54
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %15, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %73, %69
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %80 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %73
  %88 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  store %struct.xhci_segment* %88, %struct.xhci_segment** %7, align 8
  br label %117

89:                                               ; preds = %83, %77
  br label %90

90:                                               ; preds = %89, %68
  store %struct.xhci_segment* null, %struct.xhci_segment** %7, align 8
  br label %117

91:                                               ; preds = %51
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp sle i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  store %struct.xhci_segment* %100, %struct.xhci_segment** %7, align 8
  br label %117

101:                                              ; preds = %95, %91
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %104 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %103, i32 0, i32 2
  %105 = load %struct.xhci_segment*, %struct.xhci_segment** %104, align 8
  store %struct.xhci_segment* %105, %struct.xhci_segment** %17, align 8
  %106 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %107 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %108 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %107, i32 0, i32 1
  %109 = load %union.xhci_trb*, %union.xhci_trb** %108, align 8
  %110 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %109, i64 0
  %111 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %106, %union.xhci_trb* %110)
  store i64 %111, i64* %14, align 8
  br label %112

112:                                              ; preds = %102
  %113 = load %struct.xhci_segment*, %struct.xhci_segment** %17, align 8
  %114 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %115 = icmp ne %struct.xhci_segment* %113, %114
  br i1 %115, label %22, label %116

116:                                              ; preds = %112
  store %struct.xhci_segment* null, %struct.xhci_segment** %7, align 8
  br label %117

117:                                              ; preds = %116, %99, %90, %87, %66, %25
  %118 = load %struct.xhci_segment*, %struct.xhci_segment** %7, align 8
  ret %struct.xhci_segment* %118
}

declare dso_local i64 @xhci_trb_virt_to_dma(%struct.xhci_segment*, %union.xhci_trb*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
