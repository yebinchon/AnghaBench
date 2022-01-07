; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_alloc_ucode_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_alloc_ucode_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_sglist = type { i32, i32, i32 }

@IPR_MAX_SGLIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ipr_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipr_sglist* (i32)* @ipr_alloc_ucode_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipr_sglist* @ipr_alloc_ucode_buffer(i32 %0) #0 {
  %2 = alloca %struct.ipr_sglist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipr_sglist*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IPR_MAX_SGLIST, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sdiv i32 %7, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @get_order(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ipr_sglist* @kzalloc(i32 12, i32 %13)
  store %struct.ipr_sglist* %14, %struct.ipr_sglist** %6, align 8
  %15 = load %struct.ipr_sglist*, %struct.ipr_sglist** %6, align 8
  %16 = icmp eq %struct.ipr_sglist* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ipr_trace, align 4
  store %struct.ipr_sglist* null, %struct.ipr_sglist** %2, align 8
  br label %40

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ipr_sglist*, %struct.ipr_sglist** %6, align 8
  %22 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load %struct.ipr_sglist*, %struct.ipr_sglist** %6, align 8
  %27 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %26, i32 0, i32 2
  %28 = call i32 @sgl_alloc_order(i32 %23, i32 %24, i32 0, i32 %25, i32* %27)
  %29 = load %struct.ipr_sglist*, %struct.ipr_sglist** %6, align 8
  %30 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ipr_sglist*, %struct.ipr_sglist** %6, align 8
  %32 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %19
  %36 = load %struct.ipr_sglist*, %struct.ipr_sglist** %6, align 8
  %37 = call i32 @kfree(%struct.ipr_sglist* %36)
  store %struct.ipr_sglist* null, %struct.ipr_sglist** %2, align 8
  br label %40

38:                                               ; preds = %19
  %39 = load %struct.ipr_sglist*, %struct.ipr_sglist** %6, align 8
  store %struct.ipr_sglist* %39, %struct.ipr_sglist** %2, align 8
  br label %40

40:                                               ; preds = %38, %35, %17
  %41 = load %struct.ipr_sglist*, %struct.ipr_sglist** %2, align 8
  ret %struct.ipr_sglist* %41
}

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.ipr_sglist* @kzalloc(i32, i32) #1

declare dso_local i32 @sgl_alloc_order(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.ipr_sglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
