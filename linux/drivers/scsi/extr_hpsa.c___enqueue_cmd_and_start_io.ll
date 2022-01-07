; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c___enqueue_cmd_and_start_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c___enqueue_cmd_and_start_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32*, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ctlr_info.0*, %struct.CommandList*)* }
%struct.ctlr_info.0 = type opaque
%struct.CommandList = type opaque
%struct.CommandList.1 = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SA5_REQUEST_PORT_OFFSET = common dso_local global i64 0, align 8
@IOACCEL2_INBOUND_POSTQ_32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList.1*, i32)* @__enqueue_cmd_and_start_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__enqueue_cmd_and_start_io(%struct.ctlr_info* %0, %struct.CommandList.1* %1, i32 %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.CommandList.1*, align 8
  %6 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.CommandList.1* %1, %struct.CommandList.1** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %8 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %9 = call i32 @dial_down_lockup_detection_during_fw_flash(%struct.ctlr_info* %7, %struct.CommandList.1* %8)
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %11 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %10, i32 0, i32 3
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %14 = getelementptr inbounds %struct.CommandList.1, %struct.CommandList.1* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %19 = getelementptr inbounds %struct.CommandList.1, %struct.CommandList.1* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @atomic_inc(i32* %21)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %25 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 (...) @raw_smp_processor_id()
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %31 = getelementptr inbounds %struct.CommandList.1, %struct.CommandList.1* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %75 [
    i32 130, label %33
    i32 129, label %47
    i32 128, label %61
  ]

33:                                               ; preds = %23
  %34 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %35 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @set_ioaccel1_performant_mode(%struct.ctlr_info* %34, %struct.CommandList.1* %35, i32 %36)
  %38 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %39 = getelementptr inbounds %struct.CommandList.1, %struct.CommandList.1* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %42 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SA5_REQUEST_PORT_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  br label %89

47:                                               ; preds = %23
  %48 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %49 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @set_ioaccel2_performant_mode(%struct.ctlr_info* %48, %struct.CommandList.1* %49, i32 %50)
  %52 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %53 = getelementptr inbounds %struct.CommandList.1, %struct.CommandList.1* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %56 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IOACCEL2_INBOUND_POSTQ_32, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  br label %89

61:                                               ; preds = %23
  %62 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %63 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @set_ioaccel2_tmf_performant_mode(%struct.ctlr_info* %62, %struct.CommandList.1* %63, i32 %64)
  %66 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %67 = getelementptr inbounds %struct.CommandList.1, %struct.CommandList.1* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %70 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IOACCEL2_INBOUND_POSTQ_32, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  br label %89

75:                                               ; preds = %23
  %76 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %77 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @set_performant_mode(%struct.ctlr_info* %76, %struct.CommandList.1* %77, i32 %78)
  %80 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %81 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32 (%struct.ctlr_info.0*, %struct.CommandList*)*, i32 (%struct.ctlr_info.0*, %struct.CommandList*)** %82, align 8
  %84 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %85 = bitcast %struct.ctlr_info* %84 to %struct.ctlr_info.0*
  %86 = load %struct.CommandList.1*, %struct.CommandList.1** %5, align 8
  %87 = bitcast %struct.CommandList.1* %86 to %struct.CommandList*
  %88 = call i32 %83(%struct.ctlr_info.0* %85, %struct.CommandList* %87)
  br label %89

89:                                               ; preds = %75, %61, %47, %33
  ret void
}

declare dso_local i32 @dial_down_lockup_detection_during_fw_flash(%struct.ctlr_info*, %struct.CommandList.1*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

declare dso_local i32 @set_ioaccel1_performant_mode(%struct.ctlr_info*, %struct.CommandList.1*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @set_ioaccel2_performant_mode(%struct.ctlr_info*, %struct.CommandList.1*, i32) #1

declare dso_local i32 @set_ioaccel2_tmf_performant_mode(%struct.ctlr_info*, %struct.CommandList.1*, i32) #1

declare dso_local i32 @set_performant_mode(%struct.ctlr_info*, %struct.CommandList.1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
